; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_abort_recheck_locked.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_abort_recheck_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i32 }
%struct.mp_abort_entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_abort_recheck_locked(%struct.MPContext* %0, %struct.mp_abort_entry* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.mp_abort_entry*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.mp_abort_entry* %1, %struct.mp_abort_entry** %4, align 8
  %5 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %4, align 8
  %6 = getelementptr inbounds %struct.mp_abort_entry, %struct.mp_abort_entry* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @mp_cancel_test(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %9
  %21 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %22 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %4, align 8
  %23 = call i32 @mp_abort_trigger_locked(%struct.MPContext* %21, %struct.mp_abort_entry* %22)
  br label %24

24:                                               ; preds = %20, %15
  ret void
}

declare dso_local i64 @mp_cancel_test(i32) #1

declare dso_local i32 @mp_abort_trigger_locked(%struct.MPContext*, %struct.mp_abort_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
