; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_rtmp_stream_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_rtmp_stream_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif_saddr_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, %struct.netif_saddr_item* }
%struct.netif_saddr_item = type { i8*, i32 }

@OPT_DROP_THRESHOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"RTMPStream.DropThreshold\00", align 1
@OPT_BIND_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"RTMPStream.BindIP\00", align 1
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@OPT_NEWSOCKETLOOP_ENABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"RTMPStream.NewSocketLoop\00", align 1
@OPT_LOWLATENCY_ENABLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"RTMPStream.LowLatencyMode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @rtmp_stream_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rtmp_stream_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.netif_saddr_data, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netif_saddr_item, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @UNUSED_PARAMETER(i8* %8)
  %10 = call i32* (...) @obs_properties_create()
  store i32* %10, i32** %3, align 8
  %11 = bitcast %struct.netif_saddr_data* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @OPT_DROP_THRESHOLD, align 4
  %14 = call i32 @obs_module_text(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @obs_properties_add_int(i32* %12, i32 %13, i32 %14, i32 200, i32 10000, i32 100)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @OPT_BIND_IP, align 4
  %18 = call i32 @obs_module_text(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %20 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %21 = call i32* @obs_properties_add_list(i32* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @obs_module_text(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @obs_property_list_add_string(i32* %22, i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 @netif_get_addrs(%struct.netif_saddr_data* %4)
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %46, %1
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.netif_saddr_data, %struct.netif_saddr_data* %4, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.netif_saddr_data, %struct.netif_saddr_data* %4, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.netif_saddr_item*, %struct.netif_saddr_item** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.netif_saddr_item, %struct.netif_saddr_item* %35, i64 %36
  %38 = bitcast %struct.netif_saddr_item* %7 to i8*
  %39 = bitcast %struct.netif_saddr_item* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds %struct.netif_saddr_item, %struct.netif_saddr_item* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.netif_saddr_item, %struct.netif_saddr_item* %7, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @obs_property_list_add_string(i32* %40, i32 %42, i8* %44)
  br label %46

46:                                               ; preds = %32
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %26

49:                                               ; preds = %26
  %50 = call i32 @netif_saddr_data_free(%struct.netif_saddr_data* %4)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @OPT_NEWSOCKETLOOP_ENABLED, align 4
  %53 = call i32 @obs_module_text(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %54 = call i32 @obs_properties_add_bool(i32* %51, i32 %52, i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @OPT_LOWLATENCY_ENABLED, align 4
  %57 = call i32 @obs_module_text(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %58 = call i32 @obs_properties_add_bool(i32* %55, i32 %56, i32 %57)
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i32* @obs_properties_create(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @obs_properties_add_int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32* @obs_properties_add_list(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i32, i8*) #1

declare dso_local i32 @netif_get_addrs(%struct.netif_saddr_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @netif_saddr_data_free(%struct.netif_saddr_data*) #1

declare dso_local i32 @obs_properties_add_bool(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
