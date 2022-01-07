; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_notify_response.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_notify_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubus_context = type { i32 }
%struct.ubus_object = type { i32 }
%struct.ubus_request_data = type { i32 }
%struct.blob_attr = type { i32 }
%struct.hostapd_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@__NOTIFY_MAX = common dso_local global i32 0, align 4
@notify_policy = common dso_local global i32 0, align 4
@NOTIFY_RESPONSE = common dso_local global i64 0, align 8
@UBUS_STATUS_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@UBUS_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubus_context*, %struct.ubus_object*, %struct.ubus_request_data*, i8*, %struct.blob_attr*)* @hostapd_notify_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_notify_response(%struct.ubus_context* %0, %struct.ubus_object* %1, %struct.ubus_request_data* %2, i8* %3, %struct.blob_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubus_context*, align 8
  %8 = alloca %struct.ubus_object*, align 8
  %9 = alloca %struct.ubus_request_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.blob_attr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.hostapd_data*, align 8
  %15 = alloca %struct.wpabuf*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ubus_context* %0, %struct.ubus_context** %7, align 8
  store %struct.ubus_object* %1, %struct.ubus_object** %8, align 8
  store %struct.ubus_request_data* %2, %struct.ubus_request_data** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.blob_attr* %4, %struct.blob_attr** %11, align 8
  %19 = load i32, i32* @__NOTIFY_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca %struct.blob_attr*, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load %struct.ubus_object*, %struct.ubus_object** %8, align 8
  %24 = call %struct.hostapd_data* @get_hapd_from_object(%struct.ubus_object* %23)
  store %struct.hostapd_data* %24, %struct.hostapd_data** %14, align 8
  %25 = load i32, i32* @notify_policy, align 4
  %26 = load i32, i32* @__NOTIFY_MAX, align 4
  %27 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %28 = call i32 @blob_data(%struct.blob_attr* %27)
  %29 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %30 = call i32 @blob_len(%struct.blob_attr* %29)
  %31 = call i32 @blobmsg_parse(i32 %25, i32 %26, %struct.blob_attr** %22, i32 %28, i32 %30)
  %32 = load i64, i64* @NOTIFY_RESPONSE, align 8
  %33 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %22, i64 %32
  %34 = load %struct.blob_attr*, %struct.blob_attr** %33, align 8
  %35 = icmp ne %struct.blob_attr* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %37, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %47

38:                                               ; preds = %5
  %39 = load i64, i64* @NOTIFY_RESPONSE, align 8
  %40 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %22, i64 %39
  %41 = load %struct.blob_attr*, %struct.blob_attr** %40, align 8
  %42 = call i32 @blobmsg_get_u32(%struct.blob_attr* %41)
  %43 = load %struct.hostapd_data*, %struct.hostapd_data** %14, align 8
  %44 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @UBUS_STATUS_OK, align 4
  store i32 %46, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %47

47:                                               ; preds = %38, %36
  %48 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.hostapd_data* @get_hapd_from_object(%struct.ubus_object*) #2

declare dso_local i32 @blobmsg_parse(i32, i32, %struct.blob_attr**, i32, i32) #2

declare dso_local i32 @blob_data(%struct.blob_attr*) #2

declare dso_local i32 @blob_len(%struct.blob_attr*) #2

declare dso_local i32 @blobmsg_get_u32(%struct.blob_attr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
