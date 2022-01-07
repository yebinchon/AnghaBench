; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_ubus_free.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_ubus_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.ubus_object }
%struct.ubus_object = type { i64, i64 }

@ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_ubus_free(%struct.wpa_global* %0) #0 {
  %2 = alloca %struct.wpa_global*, align 8
  %3 = alloca %struct.ubus_object*, align 8
  %4 = alloca i8*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %2, align 8
  %5 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %6 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %5, i32 0, i32 0
  store %struct.ubus_object* %6, %struct.ubus_object** %3, align 8
  %7 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %8 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %4, align 8
  %11 = load i32, i32* @ctx, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %16 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @ctx, align 4
  %21 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %22 = call i32 @ubus_remove_object(i32 %20, %struct.ubus_object* %21)
  %23 = call i32 (...) @wpas_ubus_ref_dec()
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @free(i8* %25)
  br label %27

27:                                               ; preds = %24, %13
  ret void
}

declare dso_local i32 @ubus_remove_object(i32, %struct.ubus_object*) #1

declare dso_local i32 @wpas_ubus_ref_dec(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
