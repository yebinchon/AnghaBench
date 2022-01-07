; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_init.c_registry_init.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_init.c_registry_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i64, i8*, i32, i8*, i8*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@FILENAME_MAX = common dso_local global i32 0, align 4
@web_server_mode = common dso_local global i64 0, align 8
@WEB_SERVER_MODE_NONE = common dso_local global i64 0, align 8
@CONFIG_SECTION_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@registry = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Registry is disabled - use the central netdata\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s/registry\00", align 1
@netdata_configured_varlib_dir = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"registry db directory\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Cannot create directory '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s/netdata.public.unique.id\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"netdata unique id file\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%s/registry.db\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"registry db file\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"%s/registry-log.db\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"registry log file\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"registry save db every new entries\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"registry expire idle persons days\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"registry domain\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"registry to announce\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"https://registry.my-netdata.io\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"registry hostname\00", align 1
@netdata_configured_hostname = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [31 x i8] c"verify browser cookies support\00", align 1
@CONFIG_SECTION_CLOUD = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"cloud base url\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"https://netdata.cloud\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"NETDATA_REGISTRY_CLOUD_BASE_URL\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"NETDATA_REGISTRY_HOSTNAME\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"NETDATA_REGISTRY_URL\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"max URL length\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"max URL name length\00", align 1
@DICTIONARY_FLAGS = common dso_local global i32 0, align 4
@registry_url_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @registry_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @FILENAME_MAX, align 4
  %4 = add nsw i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i64, i64* @web_server_mode, align 8
  %9 = load i64, i64* @WEB_SERVER_MODE_NONE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %13 = call i8* @config_get_boolean(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 4), align 8
  br label %18

14:                                               ; preds = %0
  %15 = call i32 @info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %17 = call i32 @config_set_boolean(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 4), align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* @FILENAME_MAX, align 4
  %20 = load i8*, i8** @netdata_configured_varlib_dir, align 8
  %21 = call i32 @snprintfz(i8* %7, i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %23 = call i8* @config_get(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %7)
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 26), align 8
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 26), align 8
  %25 = call i32 @mkdir(i8* %24, i32 504)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EEXIST, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 26), align 8
  %33 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %27, %18
  %35 = load i32, i32* @FILENAME_MAX, align 4
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 26), align 8
  %37 = call i32 @snprintfz(i8* %7, i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %39 = call i8* @config_get(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %7)
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 28), align 8
  %40 = load i32, i32* @FILENAME_MAX, align 4
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 26), align 8
  %42 = call i32 @snprintfz(i8* %7, i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %44 = call i8* @config_get(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %7)
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 27), align 8
  %45 = load i32, i32* @FILENAME_MAX, align 4
  %46 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 26), align 8
  %47 = call i32 @snprintfz(i8* %7, i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %49 = call i8* @config_get(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %7)
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 25), align 8
  %50 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %51 = call i32 @config_get_number(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 1000000)
  %52 = sext i32 %51 to i64
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %53 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %54 = call i32 @config_get_number(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 365)
  %55 = mul nsw i32 %54, 86400
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 1), align 8
  %56 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %57 = call i8* @config_get(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 24), align 8
  %58 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %59 = call i8* @config_get(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 20), align 8
  %60 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %61 = load i8*, i8** @netdata_configured_hostname, align 8
  %62 = call i8* @config_get(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %61)
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 21), align 8
  %63 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %64 = call i8* @config_get_boolean(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 1)
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 23), align 8
  %65 = load i32, i32* @CONFIG_SECTION_CLOUD, align 4
  %66 = call i8* @config_get(i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 22), align 8
  %67 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 22), align 8
  %68 = call i32 @setenv(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* %67, i32 1)
  %69 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 21), align 8
  %70 = call i32 @setenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i8* %69, i32 1)
  %71 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 20), align 8
  %72 = call i32 @setenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %71, i32 1)
  %73 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %74 = call i32 @config_get_number(i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 1024)
  %75 = sext i32 %74 to i64
  store i64 %75, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 2), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 2), align 8
  %77 = icmp ult i64 %76, 10
  br i1 %77, label %78, label %82

78:                                               ; preds = %34
  store i64 10, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 2), align 8
  %79 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 2), align 8
  %81 = call i32 @config_set_number(i32 %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i64 %80)
  br label %82

82:                                               ; preds = %78, %34
  %83 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %84 = call i32 @config_get_number(i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32 50)
  %85 = sext i32 %84 to i64
  store i64 %85, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 3), align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 3), align 8
  %87 = icmp ult i64 %86, 10
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  store i64 10, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 3), align 8
  %89 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 3), align 8
  %91 = call i32 @config_set_number(i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i64 %90)
  br label %92

92:                                               ; preds = %88, %82
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 19), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 18), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 17), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 16), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 15), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 14), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 13), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 12), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 11), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 10), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 9), align 8
  %93 = call i32 @netdata_mutex_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 8))
  %94 = load i32, i32* @DICTIONARY_FLAGS, align 4
  %95 = call i8* @dictionary_create(i32 %94)
  store i8* %95, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 7), align 8
  %96 = load i32, i32* @DICTIONARY_FLAGS, align 4
  %97 = call i8* @dictionary_create(i32 %96)
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 6), align 8
  %98 = load i32, i32* @registry_url_compare, align 4
  %99 = call i32 @avl_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 5), i32 %98)
  %100 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 4), align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %92
  %103 = call i32 (...) @registry_log_open()
  %104 = call i32 (...) @registry_db_load()
  %105 = call i32 (...) @registry_log_load()
  %106 = call i32 (...) @registry_db_should_be_saved()
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = call i32 (...) @registry_db_save()
  br label %111

111:                                              ; preds = %109, %102
  br label %112

112:                                              ; preds = %111, %92
  %113 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %113)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @config_get_boolean(i32, i8*, i32) #2

declare dso_local i32 @info(i8*) #2

declare dso_local i32 @config_set_boolean(i32, i8*, i32) #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*) #2

declare dso_local i8* @config_get(i32, i8*, i8*) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i32 @fatal(i8*, i8*) #2

declare dso_local i32 @config_get_number(i32, i8*, i32) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i32 @config_set_number(i32, i8*, i64) #2

declare dso_local i32 @netdata_mutex_init(i32*) #2

declare dso_local i8* @dictionary_create(i32) #2

declare dso_local i32 @avl_init(i32*, i32) #2

declare dso_local i32 @registry_log_open(...) #2

declare dso_local i32 @registry_db_load(...) #2

declare dso_local i32 @registry_log_load(...) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @registry_db_should_be_saved(...) #2

declare dso_local i32 @registry_db_save(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
