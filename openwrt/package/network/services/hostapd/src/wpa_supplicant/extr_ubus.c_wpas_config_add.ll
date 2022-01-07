; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_config_add.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_config_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubus_context = type { i32 }
%struct.ubus_object = type { i32 }
%struct.ubus_request_data = type { i32 }
%struct.blob_attr = type { i32 }
%struct.wpa_global = type { i32 }
%struct.wpa_interface = type { i8*, i8*, i8*, i8*, i8*, i8* }

@__WPAS_CONFIG_MAX = common dso_local global i32 0, align 4
@wpas_config_add_policy = common dso_local global i32 0, align 4
@WPAS_CONFIG_FILE = common dso_local global i64 0, align 8
@WPAS_CONFIG_IFACE = common dso_local global i64 0, align 8
@WPAS_CONFIG_DRIVER = common dso_local global i64 0, align 8
@UBUS_STATUS_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@UBUS_STATUS_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@WPAS_CONFIG_BRIDGE = common dso_local global i64 0, align 8
@WPAS_CONFIG_CTRL = common dso_local global i64 0, align 8
@WPAS_CONFIG_HOSTAPD_CTRL = common dso_local global i64 0, align 8
@UBUS_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubus_context*, %struct.ubus_object*, %struct.ubus_request_data*, i8*, %struct.blob_attr*)* @wpas_config_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_config_add(%struct.ubus_context* %0, %struct.ubus_object* %1, %struct.ubus_request_data* %2, i8* %3, %struct.blob_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubus_context*, align 8
  %8 = alloca %struct.ubus_object*, align 8
  %9 = alloca %struct.ubus_request_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.blob_attr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.wpa_global*, align 8
  %15 = alloca %struct.wpa_interface*, align 8
  %16 = alloca i32, align 4
  store %struct.ubus_context* %0, %struct.ubus_context** %7, align 8
  store %struct.ubus_object* %1, %struct.ubus_object** %8, align 8
  store %struct.ubus_request_data* %2, %struct.ubus_request_data** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.blob_attr* %4, %struct.blob_attr** %11, align 8
  %17 = load i32, i32* @__WPAS_CONFIG_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca %struct.blob_attr*, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.ubus_object*, %struct.ubus_object** %8, align 8
  %22 = call %struct.wpa_global* @get_wpa_global_from_object(%struct.ubus_object* %21)
  store %struct.wpa_global* %22, %struct.wpa_global** %14, align 8
  %23 = load i32, i32* @wpas_config_add_policy, align 4
  %24 = load i32, i32* @__WPAS_CONFIG_MAX, align 4
  %25 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %26 = call i32 @blob_data(%struct.blob_attr* %25)
  %27 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %28 = call i32 @blob_len(%struct.blob_attr* %27)
  %29 = call i32 @blobmsg_parse(i32 %23, i32 %24, %struct.blob_attr** %20, i32 %26, i32 %28)
  %30 = load i64, i64* @WPAS_CONFIG_FILE, align 8
  %31 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %30
  %32 = load %struct.blob_attr*, %struct.blob_attr** %31, align 8
  %33 = icmp ne %struct.blob_attr* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %5
  %35 = load i64, i64* @WPAS_CONFIG_IFACE, align 8
  %36 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %35
  %37 = load %struct.blob_attr*, %struct.blob_attr** %36, align 8
  %38 = icmp ne %struct.blob_attr* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i64, i64* @WPAS_CONFIG_DRIVER, align 8
  %41 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %40
  %42 = load %struct.blob_attr*, %struct.blob_attr** %41, align 8
  %43 = icmp ne %struct.blob_attr* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39, %34, %5
  %45 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %45, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %115

46:                                               ; preds = %39
  %47 = call %struct.wpa_interface* @os_zalloc(i32 48)
  store %struct.wpa_interface* %47, %struct.wpa_interface** %15, align 8
  %48 = load %struct.wpa_interface*, %struct.wpa_interface** %15, align 8
  %49 = icmp eq %struct.wpa_interface* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @UBUS_STATUS_UNKNOWN_ERROR, align 4
  store i32 %51, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %115

52:                                               ; preds = %46
  %53 = load i64, i64* @WPAS_CONFIG_DRIVER, align 8
  %54 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %53
  %55 = load %struct.blob_attr*, %struct.blob_attr** %54, align 8
  %56 = call i8* @blobmsg_get_string(%struct.blob_attr* %55)
  %57 = load %struct.wpa_interface*, %struct.wpa_interface** %15, align 8
  %58 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i64, i64* @WPAS_CONFIG_IFACE, align 8
  %60 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %59
  %61 = load %struct.blob_attr*, %struct.blob_attr** %60, align 8
  %62 = call i8* @blobmsg_get_string(%struct.blob_attr* %61)
  %63 = load %struct.wpa_interface*, %struct.wpa_interface** %15, align 8
  %64 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* @WPAS_CONFIG_FILE, align 8
  %66 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %65
  %67 = load %struct.blob_attr*, %struct.blob_attr** %66, align 8
  %68 = call i8* @blobmsg_get_string(%struct.blob_attr* %67)
  %69 = load %struct.wpa_interface*, %struct.wpa_interface** %15, align 8
  %70 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* @WPAS_CONFIG_BRIDGE, align 8
  %72 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %71
  %73 = load %struct.blob_attr*, %struct.blob_attr** %72, align 8
  %74 = icmp ne %struct.blob_attr* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %52
  %76 = load i64, i64* @WPAS_CONFIG_BRIDGE, align 8
  %77 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %76
  %78 = load %struct.blob_attr*, %struct.blob_attr** %77, align 8
  %79 = call i8* @blobmsg_get_string(%struct.blob_attr* %78)
  %80 = load %struct.wpa_interface*, %struct.wpa_interface** %15, align 8
  %81 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %75, %52
  %83 = load i64, i64* @WPAS_CONFIG_CTRL, align 8
  %84 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %83
  %85 = load %struct.blob_attr*, %struct.blob_attr** %84, align 8
  %86 = icmp ne %struct.blob_attr* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i64, i64* @WPAS_CONFIG_CTRL, align 8
  %89 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %88
  %90 = load %struct.blob_attr*, %struct.blob_attr** %89, align 8
  %91 = call i8* @blobmsg_get_string(%struct.blob_attr* %90)
  %92 = load %struct.wpa_interface*, %struct.wpa_interface** %15, align 8
  %93 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %87, %82
  %95 = load i64, i64* @WPAS_CONFIG_HOSTAPD_CTRL, align 8
  %96 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %95
  %97 = load %struct.blob_attr*, %struct.blob_attr** %96, align 8
  %98 = icmp ne %struct.blob_attr* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i64, i64* @WPAS_CONFIG_HOSTAPD_CTRL, align 8
  %101 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %100
  %102 = load %struct.blob_attr*, %struct.blob_attr** %101, align 8
  %103 = call i8* @blobmsg_get_string(%struct.blob_attr* %102)
  %104 = load %struct.wpa_interface*, %struct.wpa_interface** %15, align 8
  %105 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %99, %94
  %107 = load %struct.wpa_global*, %struct.wpa_global** %14, align 8
  %108 = load %struct.wpa_interface*, %struct.wpa_interface** %15, align 8
  %109 = call i32 @wpa_supplicant_add_iface(%struct.wpa_global* %107, %struct.wpa_interface* %108, i32* null)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %112, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @UBUS_STATUS_OK, align 4
  store i32 %114, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %115

115:                                              ; preds = %113, %111, %50, %44
  %116 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wpa_global* @get_wpa_global_from_object(%struct.ubus_object*) #2

declare dso_local i32 @blobmsg_parse(i32, i32, %struct.blob_attr**, i32, i32) #2

declare dso_local i32 @blob_data(%struct.blob_attr*) #2

declare dso_local i32 @blob_len(%struct.blob_attr*) #2

declare dso_local %struct.wpa_interface* @os_zalloc(i32) #2

declare dso_local i8* @blobmsg_get_string(%struct.blob_attr*) #2

declare dso_local i32 @wpa_supplicant_add_iface(%struct.wpa_global*, %struct.wpa_interface*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
