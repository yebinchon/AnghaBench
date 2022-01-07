; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_modwlan.c_wlan_sl_init.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_modwlan.c_wlan_sl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i8*, i8* }

@SL_IPV4_STA_P2P_CL_DHCP_ENABLE = common dso_local global i32 0, align 4
@SL_POLICY_PM = common dso_local global i32 0, align 4
@SL_NORMAL_POLICY = common dso_local global i32 0, align 4
@SL_NET_APP_HTTP_SERVER_ID = common dso_local global i32 0, align 4
@SL_REMOVE_RX_FILTER = common dso_local global i32 0, align 4
@ROLE_AP = common dso_local global i64 0, align 8
@SL_WLAN_CFG_GENERAL_PARAM_ID = common dso_local global i32 0, align 4
@WLAN_GENERAL_PARAM_OPT_AP_TX_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"EU\00", align 1
@WLAN_GENERAL_PARAM_OPT_COUNTRY_CODE = common dso_local global i32 0, align 4
@SL_IPV4_AP_P2P_GO_STATIC_ENABLE = common dso_local global i32 0, align 4
@IPCONFIG_MODE_ENABLE_IPV4 = common dso_local global i32 0, align 4
@SL_NET_APP_DHCP_SERVER_ID = common dso_local global i32 0, align 4
@NETAPP_SET_DHCP_SRV_BASIC_OPT = common dso_local global i32 0, align 4
@WLAN_GENERAL_PARAM_OPT_STA_TX_POWER = common dso_local global i32 0, align 4
@SL_POLICY_CONNECTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlan_sl_init(i64 %0, i8* %1, i8 zeroext %2, i8 zeroext %3, i8* %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca %struct.TYPE_4__, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_5__, align 8
  %24 = alloca %struct.TYPE_6__, align 8
  store i64 %0, i64* %10, align 8
  store i8* %1, i8** %11, align 8
  store i8 %2, i8* %12, align 1
  store i8 %3, i8* %13, align 1
  store i8* %4, i8** %14, align 8
  store i8 %5, i8* %15, align 1
  store i8 %6, i8* %16, align 1
  store i8 %7, i8* %17, align 1
  store i32 %8, i32* %18, align 4
  %25 = call i32 (...) @wlan_servers_stop()
  %26 = call i32 (...) @wlan_first_start()
  %27 = call i32 (...) @wlan_sl_disconnect()
  %28 = call i32 @sl_WlanProfileDel(i32 255)
  %29 = call i32 @ASSERT_ON_ERROR(i32 %28)
  store i8 1, i8* %19, align 1
  %30 = load i32, i32* @SL_IPV4_STA_P2P_CL_DHCP_ENABLE, align 4
  %31 = call i32 @sl_NetCfgSet(i32 %30, i32 1, i32 1, i8* %19)
  %32 = call i32 @ASSERT_ON_ERROR(i32 %31)
  %33 = load i32, i32* @SL_POLICY_PM, align 4
  %34 = load i32, i32* @SL_NORMAL_POLICY, align 4
  %35 = call i32 @sl_WlanPolicySet(i32 %33, i32 %34, i32* null, i32 0)
  %36 = call i32 @ASSERT_ON_ERROR(i32 %35)
  %37 = call i32 @sl_NetAppMDNSUnRegisterService(i32 0, i32 0)
  %38 = call i32 @ASSERT_ON_ERROR(i32 %37)
  %39 = load i32, i32* @SL_NET_APP_HTTP_SERVER_ID, align 4
  %40 = call i32 @sl_NetAppStop(i32 %39)
  %41 = bitcast %struct.TYPE_4__* %20 to i8*
  %42 = call i32 @memset(i8* %41, i32 0, i32 8)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @memset(i8* %44, i32 255, i32 8)
  %46 = load i32, i32* @SL_REMOVE_RX_FILTER, align 4
  %47 = bitcast %struct.TYPE_4__* %20 to i8*
  %48 = call i32 @sl_WlanRxFilterSet(i32 %46, i8* %47, i32 8)
  %49 = call i32 @ASSERT_ON_ERROR(i32 %48)
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @wlan_set_mode(i64 %50)
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @wlan_reenable(i64 %52)
  store i8 0, i8* %21, align 1
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @ROLE_AP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %108

57:                                               ; preds = %9
  %58 = load i32, i32* @SL_WLAN_CFG_GENERAL_PARAM_ID, align 4
  %59 = load i32, i32* @WLAN_GENERAL_PARAM_OPT_AP_TX_POWER, align 4
  %60 = call i32 @sl_WlanSet(i32 %58, i32 %59, i32 1, i8* %21)
  %61 = call i32 @ASSERT_ON_ERROR(i32 %60)
  %62 = load i8*, i8** %11, align 8
  %63 = load i8, i8* %12, align 1
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @wlan_set_ssid(i8* %62, i8 zeroext %63, i32 %64)
  %66 = load i8, i8* %13, align 1
  %67 = load i8*, i8** %14, align 8
  %68 = load i8, i8* %15, align 1
  %69 = call i32 @wlan_set_security(i8 zeroext %66, i8* %67, i8 zeroext %68)
  %70 = load i8, i8* %16, align 1
  %71 = call i32 @wlan_set_channel(i8 zeroext %70)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %72 = load i32, i32* @SL_WLAN_CFG_GENERAL_PARAM_ID, align 4
  %73 = load i32, i32* @WLAN_GENERAL_PARAM_OPT_COUNTRY_CODE, align 4
  %74 = load i8*, i8** %22, align 8
  %75 = call i32 @sl_WlanSet(i32 %72, i32 %73, i32 2, i8* %74)
  %76 = call i32 @ASSERT_ON_ERROR(i32 %75)
  %77 = call i8* @SL_IPV4_VAL(i32 192, i32 168, i32 1, i32 1)
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i8* %77, i8** %78, align 8
  %79 = call i8* @SL_IPV4_VAL(i32 255, i32 255, i32 255, i32 0)
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  store i8* %79, i8** %80, align 8
  %81 = call i8* @SL_IPV4_VAL(i32 192, i32 168, i32 1, i32 1)
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i8* %81, i8** %82, align 8
  %83 = call i8* @SL_IPV4_VAL(i32 192, i32 168, i32 1, i32 1)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* @SL_IPV4_AP_P2P_GO_STATIC_ENABLE, align 4
  %86 = load i32, i32* @IPCONFIG_MODE_ENABLE_IPV4, align 4
  %87 = bitcast %struct.TYPE_5__* %23 to i8*
  %88 = call i32 @sl_NetCfgSet(i32 %85, i32 %86, i32 32, i8* %87)
  %89 = call i32 @ASSERT_ON_ERROR(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 4096, i32* %90, align 8
  %91 = call i8* @SL_IPV4_VAL(i32 192, i32 168, i32 1, i32 2)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store i8* %91, i8** %92, align 8
  %93 = call i8* @SL_IPV4_VAL(i32 192, i32 168, i32 1, i32 254)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i8* %93, i8** %94, align 8
  %95 = load i32, i32* @SL_NET_APP_DHCP_SERVER_ID, align 4
  %96 = call i32 @sl_NetAppStop(i32 %95)
  %97 = call i32 @ASSERT_ON_ERROR(i32 %96)
  %98 = load i32, i32* @SL_NET_APP_DHCP_SERVER_ID, align 4
  %99 = load i32, i32* @NETAPP_SET_DHCP_SRV_BASIC_OPT, align 4
  %100 = bitcast %struct.TYPE_6__* %24 to i8*
  %101 = call i32 @sl_NetAppSet(i32 %98, i32 %99, i32 24, i8* %100)
  %102 = call i32 @ASSERT_ON_ERROR(i32 %101)
  %103 = load i32, i32* @SL_NET_APP_DHCP_SERVER_ID, align 4
  %104 = call i32 @sl_NetAppStart(i32 %103)
  %105 = call i32 @ASSERT_ON_ERROR(i32 %104)
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @wlan_reenable(i64 %106)
  br label %117

108:                                              ; preds = %9
  %109 = load i32, i32* @SL_WLAN_CFG_GENERAL_PARAM_ID, align 4
  %110 = load i32, i32* @WLAN_GENERAL_PARAM_OPT_STA_TX_POWER, align 4
  %111 = call i32 @sl_WlanSet(i32 %109, i32 %110, i32 1, i8* %21)
  %112 = call i32 @ASSERT_ON_ERROR(i32 %111)
  %113 = load i32, i32* @SL_POLICY_CONNECTION, align 4
  %114 = call i32 @SL_CONNECTION_POLICY(i32 1, i32 1, i32 0, i32 0, i32 0)
  %115 = call i32 @sl_WlanPolicySet(i32 %113, i32 %114, i32* null, i32 0)
  %116 = call i32 @ASSERT_ON_ERROR(i32 %115)
  br label %117

117:                                              ; preds = %108, %57
  %118 = call i32 (...) @pyb_rtc_get_seconds()
  %119 = call i32 @wlan_set_current_time(i32 %118)
  %120 = call i32 (...) @wlan_servers_start()
  ret void
}

declare dso_local i32 @wlan_servers_stop(...) #1

declare dso_local i32 @wlan_first_start(...) #1

declare dso_local i32 @wlan_sl_disconnect(...) #1

declare dso_local i32 @ASSERT_ON_ERROR(i32) #1

declare dso_local i32 @sl_WlanProfileDel(i32) #1

declare dso_local i32 @sl_NetCfgSet(i32, i32, i32, i8*) #1

declare dso_local i32 @sl_WlanPolicySet(i32, i32, i32*, i32) #1

declare dso_local i32 @sl_NetAppMDNSUnRegisterService(i32, i32) #1

declare dso_local i32 @sl_NetAppStop(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sl_WlanRxFilterSet(i32, i8*, i32) #1

declare dso_local i32 @wlan_set_mode(i64) #1

declare dso_local i32 @wlan_reenable(i64) #1

declare dso_local i32 @sl_WlanSet(i32, i32, i32, i8*) #1

declare dso_local i32 @wlan_set_ssid(i8*, i8 zeroext, i32) #1

declare dso_local i32 @wlan_set_security(i8 zeroext, i8*, i8 zeroext) #1

declare dso_local i32 @wlan_set_channel(i8 zeroext) #1

declare dso_local i8* @SL_IPV4_VAL(i32, i32, i32, i32) #1

declare dso_local i32 @sl_NetAppSet(i32, i32, i32, i8*) #1

declare dso_local i32 @sl_NetAppStart(i32) #1

declare dso_local i32 @SL_CONNECTION_POLICY(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wlan_set_current_time(i32) #1

declare dso_local i32 @pyb_rtc_get_seconds(...) #1

declare dso_local i32 @wlan_servers_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
