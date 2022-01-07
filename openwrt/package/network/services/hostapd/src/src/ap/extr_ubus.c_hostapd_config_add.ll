; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_config_add.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_config_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubus_context = type { i32 }
%struct.ubus_object = type { i32 }
%struct.ubus_request_data = type { i32 }
%struct.blob_attr = type { i32 }
%struct.hapd_interfaces = type { i32 }

@__CONFIG_MAX = common dso_local global i32 0, align 4
@config_add_policy = common dso_local global i32 0, align 4
@CONFIG_FILE = common dso_local global i64 0, align 8
@CONFIG_IFACE = common dso_local global i64 0, align 8
@UBUS_STATUS_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bss_config=%s:%s\00", align 1
@UBUS_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubus_context*, %struct.ubus_object*, %struct.ubus_request_data*, i8*, %struct.blob_attr*)* @hostapd_config_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_config_add(%struct.ubus_context* %0, %struct.ubus_object* %1, %struct.ubus_request_data* %2, i8* %3, %struct.blob_attr* %4) #0 {
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
  %17 = load i32, i32* @__CONFIG_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca %struct.blob_attr*, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.ubus_object*, %struct.ubus_object** %8, align 8
  %22 = call %struct.hapd_interfaces* @get_hapd_interfaces_from_object(%struct.ubus_object* %21)
  store %struct.hapd_interfaces* %22, %struct.hapd_interfaces** %14, align 8
  %23 = load i32, i32* @config_add_policy, align 4
  %24 = load i32, i32* @__CONFIG_MAX, align 4
  %25 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %26 = call i32 @blob_data(%struct.blob_attr* %25)
  %27 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %28 = call i32 @blob_len(%struct.blob_attr* %27)
  %29 = call i32 @blobmsg_parse(i32 %23, i32 %24, %struct.blob_attr** %20, i32 %26, i32 %28)
  %30 = load i64, i64* @CONFIG_FILE, align 8
  %31 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %30
  %32 = load %struct.blob_attr*, %struct.blob_attr** %31, align 8
  %33 = icmp ne %struct.blob_attr* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %5
  %35 = load i64, i64* @CONFIG_IFACE, align 8
  %36 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %35
  %37 = load %struct.blob_attr*, %struct.blob_attr** %36, align 8
  %38 = icmp ne %struct.blob_attr* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34, %5
  %40 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %60

41:                                               ; preds = %34
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %43 = load i64, i64* @CONFIG_IFACE, align 8
  %44 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %43
  %45 = load %struct.blob_attr*, %struct.blob_attr** %44, align 8
  %46 = call i8* @blobmsg_get_string(%struct.blob_attr* %45)
  %47 = load i64, i64* @CONFIG_FILE, align 8
  %48 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %20, i64 %47
  %49 = load %struct.blob_attr*, %struct.blob_attr** %48, align 8
  %50 = call i8* @blobmsg_get_string(%struct.blob_attr* %49)
  %51 = call i32 @snprintf(i8* %42, i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %50)
  %52 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %14, align 8
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %54 = call i64 @hostapd_add_iface(%struct.hapd_interfaces* %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* @UBUS_STATUS_INVALID_ARGUMENT, align 4
  store i32 %57, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %60

58:                                               ; preds = %41
  %59 = load i32, i32* @UBUS_STATUS_OK, align 4
  store i32 %59, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %60

60:                                               ; preds = %58, %56, %39
  %61 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.hapd_interfaces* @get_hapd_interfaces_from_object(%struct.ubus_object*) #2

declare dso_local i32 @blobmsg_parse(i32, i32, %struct.blob_attr**, i32, i32) #2

declare dso_local i32 @blob_data(%struct.blob_attr*) #2

declare dso_local i32 @blob_len(%struct.blob_attr*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @blobmsg_get_string(%struct.blob_attr*) #2

declare dso_local i64 @hostapd_add_iface(%struct.hapd_interfaces*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
