; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_config_remove.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_config_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubus_context = type { i32 }
%struct.ubus_object = type { i32 }
%struct.ubus_request_data = type { i32 }
%struct.blob_attr = type { i32 }
%struct.hapd_interfaces = type { i32 }

@__CONFIG_REM_MAX = common dso_local global i32 0, align 4
@config_remove_policy = common dso_local global i32 0, align 4
@CONFIG_REM_IFACE = common dso_local global i64 0, align 8
@UBUS_STATUS_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@UBUS_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubus_context*, %struct.ubus_object*, %struct.ubus_request_data*, i8*, %struct.blob_attr*)* @hostapd_config_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_config_remove(%struct.ubus_context* %0, %struct.ubus_object* %1, %struct.ubus_request_data* %2, i8* %3, %struct.blob_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubus_context*, align 8
  %8 = alloca %struct.ubus_object*, align 8
  %9 = alloca %struct.ubus_request_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.blob_attr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.hapd_interfaces*, align 8
  %15 = alloca [128 x i8], align 16
  %16 = alloca i32, align 4
  store %struct.ubus_context* %0, %struct.ubus_context** %7, align 8
  store %struct.ubus_object* %1, %struct.ubus_object** %8, align 8
  store %struct.ubus_request_data* %2, %struct.ubus_request_data** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.blob_attr* %4, %struct.blob_attr** %11, align 8
  %17 = load i32, i32* @__CONFIG_REM_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca %struct.blob_attr*, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.ubus_object*, %struct.ubus_object** %8, align 8
  %22 = call %struct.hapd_interfaces* @get_hapd_interfaces_from_object(%struct.ubus_object* %21)
  store %struct.hapd_interfaces* %22, %struct.hapd_interfaces** %14, align 8
  %23 = load i32, i32* @config_remove_policy, align 4
  %24 = load i32, i32* @__CONFIG_REM_MAX, align 4
  %25 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %26 = call i32 @blob_data(%struct.blob_attr* %25)
  %27 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %28 = call i32 @blob_len(%struct.blob_attr* %27)
  %29 = call i32 @blobmsg_parse(i32 %23, i32 %24, %struct.blob_attr** %20, i32 %26, i32 %28)
  %30 = load i64, i64* @CONFIG_REM_IFACE, align 8
  %31 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %30
  %32 = load %struct.blob_attr*, %struct.blob_attr** %31, align 8
  %33 = icmp ne %struct.blob_attr* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %35, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %48

36:                                               ; preds = %5
  %37 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %14, align 8
  %38 = load i64, i64* @CONFIG_REM_IFACE, align 8
  %39 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %38
  %40 = load %struct.blob_attr*, %struct.blob_attr** %39, align 8
  %41 = call i32 @blobmsg_get_string(%struct.blob_attr* %40)
  %42 = call i64 @hostapd_remove_iface(%struct.hapd_interfaces* %37, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %45, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @UBUS_STATUS_OK, align 4
  store i32 %47, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %48

48:                                               ; preds = %46, %44, %34
  %49 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.hapd_interfaces* @get_hapd_interfaces_from_object(%struct.ubus_object*) #2

declare dso_local i32 @blobmsg_parse(i32, i32, %struct.blob_attr**, i32, i32) #2

declare dso_local i32 @blob_data(%struct.blob_attr*) #2

declare dso_local i32 @blob_len(%struct.blob_attr*) #2

declare dso_local i64 @hostapd_remove_iface(%struct.hapd_interfaces*, i32) #2

declare dso_local i32 @blobmsg_get_string(%struct.blob_attr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
