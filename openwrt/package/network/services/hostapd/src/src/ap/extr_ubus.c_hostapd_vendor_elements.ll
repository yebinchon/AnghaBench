; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_vendor_elements.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_vendor_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubus_context = type { i32 }
%struct.ubus_object = type { i32 }
%struct.ubus_request_data = type { i32 }
%struct.blob_attr = type { i32 }
%struct.hostapd_data = type { i32, %struct.hostapd_bss_config* }
%struct.hostapd_bss_config = type { %struct.wpabuf* }
%struct.wpabuf = type { i32 }

@__VENDOR_ELEMENTS_MAX = common dso_local global i32 0, align 4
@ve_policy = common dso_local global i32 0, align 4
@VENDOR_ELEMENTS = common dso_local global i64 0, align 8
@UBUS_STATUS_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@UBUS_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@UBUS_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubus_context*, %struct.ubus_object*, %struct.ubus_request_data*, i8*, %struct.blob_attr*)* @hostapd_vendor_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_vendor_elements(%struct.ubus_context* %0, %struct.ubus_object* %1, %struct.ubus_request_data* %2, i8* %3, %struct.blob_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubus_context*, align 8
  %8 = alloca %struct.ubus_object*, align 8
  %9 = alloca %struct.ubus_request_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.blob_attr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.hostapd_data*, align 8
  %15 = alloca %struct.hostapd_bss_config*, align 8
  %16 = alloca %struct.wpabuf*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.ubus_context* %0, %struct.ubus_context** %7, align 8
  store %struct.ubus_object* %1, %struct.ubus_object** %8, align 8
  store %struct.ubus_request_data* %2, %struct.ubus_request_data** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.blob_attr* %4, %struct.blob_attr** %11, align 8
  %20 = load i32, i32* @__VENDOR_ELEMENTS_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.blob_attr*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load %struct.ubus_object*, %struct.ubus_object** %8, align 8
  %25 = call %struct.hostapd_data* @get_hapd_from_object(%struct.ubus_object* %24)
  store %struct.hostapd_data* %25, %struct.hostapd_data** %14, align 8
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %14, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 1
  %28 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %27, align 8
  store %struct.hostapd_bss_config* %28, %struct.hostapd_bss_config** %15, align 8
  %29 = load i32, i32* @ve_policy, align 4
  %30 = load i32, i32* @__VENDOR_ELEMENTS_MAX, align 4
  %31 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %32 = call i32 @blob_data(%struct.blob_attr* %31)
  %33 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %34 = call i32 @blob_len(%struct.blob_attr* %33)
  %35 = call i32 @blobmsg_parse(i32 %29, i32 %30, %struct.blob_attr** %23, i32 %32, i32 %34)
  %36 = load i64, i64* @VENDOR_ELEMENTS, align 8
  %37 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %23, i64 %36
  %38 = load %struct.blob_attr*, %struct.blob_attr** %37, align 8
  %39 = icmp ne %struct.blob_attr* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %5
  %41 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %101

42:                                               ; preds = %5
  %43 = load i64, i64* @VENDOR_ELEMENTS, align 8
  %44 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %23, i64 %43
  %45 = load %struct.blob_attr*, %struct.blob_attr** %44, align 8
  %46 = call i8* @blobmsg_data(%struct.blob_attr* %45)
  store i8* %46, i8** %17, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = call i64 @os_strlen(i8* %47)
  store i64 %48, i64* %18, align 8
  %49 = load i64, i64* %18, align 8
  %50 = and i64 %49, 1
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %53, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %101

54:                                               ; preds = %42
  %55 = load i64, i64* %18, align 8
  %56 = udiv i64 %55, 2
  store i64 %56, i64* %18, align 8
  %57 = load i64, i64* %18, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %15, align 8
  %61 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %60, i32 0, i32 0
  %62 = load %struct.wpabuf*, %struct.wpabuf** %61, align 8
  %63 = call i32 @wpabuf_free(%struct.wpabuf* %62)
  %64 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %15, align 8
  %65 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %64, i32 0, i32 0
  store %struct.wpabuf* null, %struct.wpabuf** %65, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %101

66:                                               ; preds = %54
  %67 = load i64, i64* %18, align 8
  %68 = call %struct.wpabuf* @wpabuf_alloc(i64 %67)
  store %struct.wpabuf* %68, %struct.wpabuf** %16, align 8
  %69 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %70 = icmp eq %struct.wpabuf* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %101

72:                                               ; preds = %66
  %73 = load i8*, i8** %17, align 8
  %74 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %75 = load i64, i64* %18, align 8
  %76 = call i32 @wpabuf_put(%struct.wpabuf* %74, i64 %75)
  %77 = load i64, i64* %18, align 8
  %78 = call i64 @hexstr2bin(i8* %73, i32 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %82 = call i32 @wpabuf_free(%struct.wpabuf* %81)
  %83 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %83, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %101

84:                                               ; preds = %72
  %85 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %15, align 8
  %86 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %85, i32 0, i32 0
  %87 = load %struct.wpabuf*, %struct.wpabuf** %86, align 8
  %88 = call i32 @wpabuf_free(%struct.wpabuf* %87)
  %89 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %90 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %15, align 8
  %91 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %90, i32 0, i32 0
  store %struct.wpabuf* %89, %struct.wpabuf** %91, align 8
  %92 = load %struct.hostapd_data*, %struct.hostapd_data** %14, align 8
  %93 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @ieee802_11_update_beacons(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load i32, i32* @UBUS_STATUS_NOT_SUPPORTED, align 4
  store i32 %98, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %101

99:                                               ; preds = %84
  %100 = load i32, i32* @UBUS_STATUS_OK, align 4
  store i32 %100, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %101

101:                                              ; preds = %99, %97, %80, %71, %59, %52, %40
  %102 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.hostapd_data* @get_hapd_from_object(%struct.ubus_object*) #2

declare dso_local i32 @blobmsg_parse(i32, i32, %struct.blob_attr**, i32, i32) #2

declare dso_local i32 @blob_data(%struct.blob_attr*) #2

declare dso_local i32 @blob_len(%struct.blob_attr*) #2

declare dso_local i8* @blobmsg_data(%struct.blob_attr*) #2

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #2

declare dso_local i64 @hexstr2bin(i8*, i32, i64) #2

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i64) #2

declare dso_local i64 @ieee802_11_update_beacons(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
