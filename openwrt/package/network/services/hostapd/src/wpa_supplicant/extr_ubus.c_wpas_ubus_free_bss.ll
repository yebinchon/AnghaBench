; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_ubus_free_bss.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_ubus_free_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ubus_object }
%struct.ubus_object = type { i64, i64 }

@ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_ubus_free_bss(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.ubus_object*, align 8
  %4 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.ubus_object* %7, %struct.ubus_object** %3, align 8
  %8 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %9 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %4, align 8
  %12 = load i32, i32* @ctx, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %17 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @ctx, align 4
  %22 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %23 = call i32 @ubus_remove_object(i32 %21, %struct.ubus_object* %22)
  %24 = call i32 (...) @wpas_ubus_ref_dec()
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @free(i8* %26)
  br label %28

28:                                               ; preds = %25, %14
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
