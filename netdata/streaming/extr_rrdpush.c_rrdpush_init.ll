; ModuleID = '/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_rrdpush_init.c'
source_filename = "/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_rrdpush_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stream_config = common dso_local global i32 0, align 4
@CONFIG_SECTION_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@default_rrdpush_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@default_rrdpush_destination = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"api key\00", align 1
@default_rrdpush_api_key = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"send charts matching\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@default_rrdpush_send_charts_matching = common dso_local global i8* null, align 8
@CONFIG_SECTION_GLOBAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"cleanup orphan hosts after seconds\00", align 1
@rrdhost_free_orphan_time = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [70 x i8] c"STREAM [send]: cannot enable sending thread - information is missing.\00", align 1
@NETDATA_SSL_FORCE = common dso_local global i64 0, align 8
@NETDATA_SSL_INVALID_CERTIFICATE = common dso_local global i64 0, align 8
@NETDATA_SSL_OPTIONAL = common dso_local global i64 0, align 8
@NETDATA_SSL_VALID_CERTIFICATE = common dso_local global i64 0, align 8
@netdata_ssl_ca_file = common dso_local global i8* null, align 8
@netdata_ssl_ca_path = common dso_local global i8* null, align 8
@netdata_use_ssl_on_stream = common dso_local global i64 0, align 8
@netdata_validate_server = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrdpush_init() #0 {
  %1 = call i32 (...) @load_stream_conf()
  %2 = load i32, i32* @CONFIG_SECTION_STREAM, align 4
  %3 = load i32, i32* @default_rrdpush_enabled, align 4
  %4 = call i64 @appconfig_get_boolean(i32* @stream_config, i32 %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* @default_rrdpush_enabled, align 4
  %6 = load i32, i32* @CONFIG_SECTION_STREAM, align 4
  %7 = call i8* @appconfig_get(i32* @stream_config, i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** @default_rrdpush_destination, align 8
  %9 = load i32, i32* @CONFIG_SECTION_STREAM, align 4
  %10 = call i8* @appconfig_get(i32* @stream_config, i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** @default_rrdpush_api_key, align 8
  %12 = load i32, i32* @CONFIG_SECTION_STREAM, align 4
  %13 = call i8* @appconfig_get(i32* @stream_config, i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %13, i8** @default_rrdpush_send_charts_matching, align 8
  %14 = load i32, i32* @CONFIG_SECTION_GLOBAL, align 4
  %15 = load i32, i32* @rrdhost_free_orphan_time, align 4
  %16 = call i32 @config_get_number(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %15)
  store i32 %16, i32* @rrdhost_free_orphan_time, align 4
  %17 = load i32, i32* @default_rrdpush_enabled, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %0
  %20 = load i32*, i32** @default_rrdpush_destination, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32*, i32** @default_rrdpush_destination, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32*, i32** @default_rrdpush_api_key, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32*, i32** @default_rrdpush_api_key, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %26, %22, %19
  %34 = call i32 @error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* @default_rrdpush_enabled, align 4
  br label %35

35:                                               ; preds = %33, %29, %0
  %36 = load i32, i32* @default_rrdpush_enabled, align 4
  ret i32 %36
}

declare dso_local i32 @load_stream_conf(...) #1

declare dso_local i64 @appconfig_get_boolean(i32*, i32, i8*, i32) #1

declare dso_local i8* @appconfig_get(i32*, i32, i8*, i8*) #1

declare dso_local i32 @config_get_number(i32, i8*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
