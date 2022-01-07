; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_bss_ban_client.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_bss_ban_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ubus_banned_client = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@avl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i32*, i32)* @hostapd_bss_ban_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_bss_ban_client(%struct.hostapd_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubus_banned_client*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %10, %3
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.ubus_banned_client*, %struct.ubus_banned_client** %7, align 8
  %17 = load i32, i32* @avl, align 4
  %18 = call %struct.ubus_banned_client* @avl_find_element(i32* %14, i32* %15, %struct.ubus_banned_client* %16, i32 %17)
  store %struct.ubus_banned_client* %18, %struct.ubus_banned_client** %7, align 8
  %19 = load %struct.ubus_banned_client*, %struct.ubus_banned_client** %7, align 8
  %20 = icmp ne %struct.ubus_banned_client* %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %61

25:                                               ; preds = %21
  %26 = call %struct.ubus_banned_client* @os_zalloc(i32 8)
  store %struct.ubus_banned_client* %26, %struct.ubus_banned_client** %7, align 8
  %27 = load %struct.ubus_banned_client*, %struct.ubus_banned_client** %7, align 8
  %28 = getelementptr inbounds %struct.ubus_banned_client, %struct.ubus_banned_client* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @memcpy(i32 %29, i32* %30, i32 4)
  %32 = load %struct.ubus_banned_client*, %struct.ubus_banned_client** %7, align 8
  %33 = getelementptr inbounds %struct.ubus_banned_client, %struct.ubus_banned_client* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ubus_banned_client*, %struct.ubus_banned_client** %7, align 8
  %36 = getelementptr inbounds %struct.ubus_banned_client, %struct.ubus_banned_client* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %39 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.ubus_banned_client*, %struct.ubus_banned_client** %7, align 8
  %42 = getelementptr inbounds %struct.ubus_banned_client, %struct.ubus_banned_client* %41, i32 0, i32 0
  %43 = call i32 @avl_insert(i32* %40, %struct.TYPE_4__* %42)
  br label %55

44:                                               ; preds = %11
  %45 = load %struct.ubus_banned_client*, %struct.ubus_banned_client** %7, align 8
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %47 = call i32 @eloop_cancel_timeout(i32 (%struct.ubus_banned_client*, %struct.hostapd_data*)* @hostapd_bss_del_ban, %struct.ubus_banned_client* %45, %struct.hostapd_data* %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load %struct.ubus_banned_client*, %struct.ubus_banned_client** %7, align 8
  %52 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %53 = call i32 @hostapd_bss_del_ban(%struct.ubus_banned_client* %51, %struct.hostapd_data* %52)
  br label %61

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %25
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %56, 1000
  %58 = load %struct.ubus_banned_client*, %struct.ubus_banned_client** %7, align 8
  %59 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %60 = call i32 @eloop_register_timeout(i32 0, i32 %57, i32 (%struct.ubus_banned_client*, %struct.hostapd_data*)* @hostapd_bss_del_ban, %struct.ubus_banned_client* %58, %struct.hostapd_data* %59)
  br label %61

61:                                               ; preds = %55, %50, %24
  ret void
}

declare dso_local %struct.ubus_banned_client* @avl_find_element(i32*, i32*, %struct.ubus_banned_client*, i32) #1

declare dso_local %struct.ubus_banned_client* @os_zalloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @eloop_cancel_timeout(i32 (%struct.ubus_banned_client*, %struct.hostapd_data*)*, %struct.ubus_banned_client*, %struct.hostapd_data*) #1

declare dso_local i32 @hostapd_bss_del_ban(%struct.ubus_banned_client*, %struct.hostapd_data*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32 (%struct.ubus_banned_client*, %struct.hostapd_data*)*, %struct.ubus_banned_client*, %struct.hostapd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
