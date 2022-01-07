; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix-dbus.c_dbus_sleep_info_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix-dbus.c_dbus_sleep_info_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbus_sleep_info = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbus_sleep_info_destroy(%struct.dbus_sleep_info* %0) #0 {
  %2 = alloca %struct.dbus_sleep_info*, align 8
  store %struct.dbus_sleep_info* %0, %struct.dbus_sleep_info** %2, align 8
  %3 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %4 = icmp ne %struct.dbus_sleep_info* %3, null
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %7 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %12 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dbus_pending_call_cancel(i64 %13)
  %15 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %16 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @dbus_pending_call_unref(i64 %17)
  br label %19

19:                                               ; preds = %10, %5
  %20 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %21 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dbus_connection_close(i32 %22)
  %24 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %25 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dbus_connection_unref(i32 %26)
  %28 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %29 = call i32 @bfree(%struct.dbus_sleep_info* %28)
  br label %30

30:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @dbus_pending_call_cancel(i64) #1

declare dso_local i32 @dbus_pending_call_unref(i64) #1

declare dso_local i32 @dbus_connection_close(i32) #1

declare dso_local i32 @dbus_connection_unref(i32) #1

declare dso_local i32 @bfree(%struct.dbus_sleep_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
