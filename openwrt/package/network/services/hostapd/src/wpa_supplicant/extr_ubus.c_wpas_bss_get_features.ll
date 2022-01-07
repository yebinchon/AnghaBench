; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_bss_get_features.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_bss_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ubus_context = type { i32 }
%struct.ubus_object = type { i32 }
%struct.ubus_request_data = type { i32 }
%struct.blob_attr = type { i32 }
%struct.wpa_supplicant = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@b = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"ht_supported\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"vht_supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubus_context*, %struct.ubus_object*, %struct.ubus_request_data*, i8*, %struct.blob_attr*)* @wpas_bss_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_bss_get_features(%struct.ubus_context* %0, %struct.ubus_object* %1, %struct.ubus_request_data* %2, i8* %3, %struct.blob_attr* %4) #0 {
  %6 = alloca %struct.ubus_context*, align 8
  %7 = alloca %struct.ubus_object*, align 8
  %8 = alloca %struct.ubus_request_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.blob_attr*, align 8
  %11 = alloca %struct.wpa_supplicant*, align 8
  store %struct.ubus_context* %0, %struct.ubus_context** %6, align 8
  store %struct.ubus_object* %1, %struct.ubus_object** %7, align 8
  store %struct.ubus_request_data* %2, %struct.ubus_request_data** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.blob_attr* %4, %struct.blob_attr** %10, align 8
  %12 = load %struct.ubus_object*, %struct.ubus_object** %7, align 8
  %13 = call %struct.wpa_supplicant* @get_wpas_from_object(%struct.ubus_object* %12)
  store %struct.wpa_supplicant* %13, %struct.wpa_supplicant** %11, align 8
  %14 = call i32 @blob_buf_init(%struct.TYPE_6__* @b, i32 0)
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ht_supported(i32 %18)
  %20 = call i32 @blobmsg_add_u8(%struct.TYPE_6__* @b, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vht_supported(i32 %24)
  %26 = call i32 @blobmsg_add_u8(%struct.TYPE_6__* @b, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.ubus_context*, %struct.ubus_context** %6, align 8
  %28 = load %struct.ubus_request_data*, %struct.ubus_request_data** %8, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @b, i32 0, i32 0), align 4
  %30 = call i32 @ubus_send_reply(%struct.ubus_context* %27, %struct.ubus_request_data* %28, i32 %29)
  ret i32 0
}

declare dso_local %struct.wpa_supplicant* @get_wpas_from_object(%struct.ubus_object*) #1

declare dso_local i32 @blob_buf_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @blobmsg_add_u8(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @ht_supported(i32) #1

declare dso_local i32 @vht_supported(i32) #1

declare dso_local i32 @ubus_send_reply(%struct.ubus_context*, %struct.ubus_request_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
