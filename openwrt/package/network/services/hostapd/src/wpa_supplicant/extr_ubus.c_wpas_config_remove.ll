; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_config_remove.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_config_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubus_context = type { i32 }
%struct.ubus_object = type { i32 }
%struct.ubus_request_data = type { i32 }
%struct.blob_attr = type { i32 }
%struct.wpa_global = type { %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { i32, %struct.wpa_supplicant* }

@__WPAS_CONFIG_REM_MAX = common dso_local global i32 0, align 4
@wpas_config_remove_policy = common dso_local global i32 0, align 4
@WPAS_CONFIG_REM_IFACE = common dso_local global i64 0, align 8
@UBUS_STATUS_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@UBUS_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubus_context*, %struct.ubus_object*, %struct.ubus_request_data*, i8*, %struct.blob_attr*)* @wpas_config_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_config_remove(%struct.ubus_context* %0, %struct.ubus_object* %1, %struct.ubus_request_data* %2, i8* %3, %struct.blob_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubus_context*, align 8
  %8 = alloca %struct.ubus_object*, align 8
  %9 = alloca %struct.ubus_request_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.blob_attr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.wpa_global*, align 8
  %15 = alloca %struct.wpa_supplicant*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ubus_context* %0, %struct.ubus_context** %7, align 8
  store %struct.ubus_object* %1, %struct.ubus_object** %8, align 8
  store %struct.ubus_request_data* %2, %struct.ubus_request_data** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.blob_attr* %4, %struct.blob_attr** %11, align 8
  %18 = load i32, i32* @__WPAS_CONFIG_REM_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca %struct.blob_attr*, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load %struct.ubus_object*, %struct.ubus_object** %8, align 8
  %23 = call %struct.wpa_global* @get_wpa_global_from_object(%struct.ubus_object* %22)
  store %struct.wpa_global* %23, %struct.wpa_global** %14, align 8
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %15, align 8
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* @wpas_config_remove_policy, align 4
  %25 = load i32, i32* @__WPAS_CONFIG_REM_MAX, align 4
  %26 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %27 = call i32 @blob_data(%struct.blob_attr* %26)
  %28 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %29 = call i32 @blob_len(%struct.blob_attr* %28)
  %30 = call i32 @blobmsg_parse(i32 %24, i32 %25, %struct.blob_attr** %21, i32 %27, i32 %29)
  %31 = load i64, i64* @WPAS_CONFIG_REM_IFACE, align 8
  %32 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %21, i64 %31
  %33 = load %struct.blob_attr*, %struct.blob_attr** %32, align 8
  %34 = icmp ne %struct.blob_attr* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %36, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %74

37:                                               ; preds = %5
  %38 = load %struct.wpa_global*, %struct.wpa_global** %14, align 8
  %39 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %38, i32 0, i32 0
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %39, align 8
  store %struct.wpa_supplicant* %40, %struct.wpa_supplicant** %15, align 8
  br label %41

41:                                               ; preds = %56, %37
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %43 = icmp ne %struct.wpa_supplicant* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* @WPAS_CONFIG_REM_IFACE, align 8
  %49 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %21, i64 %48
  %50 = load %struct.blob_attr*, %struct.blob_attr** %49, align 8
  %51 = call i32 @blobmsg_get_string(%struct.blob_attr* %50)
  %52 = call i32 @strncmp(i32 %47, i32 %51, i32 4)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  store i32 1, i32* %16, align 4
  br label %60

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 1
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %58, align 8
  store %struct.wpa_supplicant* %59, %struct.wpa_supplicant** %15, align 8
  br label %41

60:                                               ; preds = %54, %41
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %64, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %74

65:                                               ; preds = %60
  %66 = load %struct.wpa_global*, %struct.wpa_global** %14, align 8
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %68 = call i64 @wpa_supplicant_remove_iface(%struct.wpa_global* %66, %struct.wpa_supplicant* %67, i32 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %71, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @UBUS_STATUS_OK, align 4
  store i32 %73, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %74

74:                                               ; preds = %72, %70, %63, %35
  %75 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wpa_global* @get_wpa_global_from_object(%struct.ubus_object*) #2

declare dso_local i32 @blobmsg_parse(i32, i32, %struct.blob_attr**, i32, i32) #2

declare dso_local i32 @blob_data(%struct.blob_attr*) #2

declare dso_local i32 @blob_len(%struct.blob_attr*) #2

declare dso_local i32 @strncmp(i32, i32, i32) #2

declare dso_local i32 @blobmsg_get_string(%struct.blob_attr*) #2

declare dso_local i64 @wpa_supplicant_remove_iface(%struct.wpa_global*, %struct.wpa_supplicant*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
