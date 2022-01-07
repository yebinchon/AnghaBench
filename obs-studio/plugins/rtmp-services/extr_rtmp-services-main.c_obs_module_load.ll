; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-services-main.c_obs_module_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-services-main.c_obs_module_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@module_name = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"rtmp-services plugin (libobs \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"void twitch_ingests_refresh(int seconds)\00", align 1
@refresh_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RTMP_SERVICES_LOG_STR = common dso_local global i32 0, align 4
@RTMP_SERVICES_URL = common dso_local global i32 0, align 4
@confirm_service_file = common dso_local global i32 0, align 4
@update_info = common dso_local global i32 0, align 4
@rtmp_common_service = common dso_local global i32 0, align 4
@rtmp_custom_service = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_module_load() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i32 (...) @init_twitch_data()
  %5 = call i32 @dstr_copy(%struct.TYPE_4__* @module_name, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %6 = call i8* (...) @obs_get_version_string()
  %7 = call i32 @dstr_cat(%struct.TYPE_4__* @module_name, i8* %6)
  %8 = call i32 @dstr_cat(%struct.TYPE_4__* @module_name, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32* (...) @obs_get_proc_handler()
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @refresh_callback, align 4
  %12 = call i32 @proc_handler_add(i32* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32* null)
  %13 = call i8* @obs_module_file(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i8* %13, i8** %2, align 8
  %14 = call i8* @obs_module_config_path(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %0
  %18 = load i32, i32* @RTMP_SERVICES_LOG_STR, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @module_name, i32 0, i32 0), align 4
  %20 = load i32, i32* @RTMP_SERVICES_URL, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @confirm_service_file, align 4
  %24 = call i32 @update_info_create(i32 %18, i32 %19, i32 %20, i8* %21, i8* %22, i32 %23, i32* null)
  store i32 %24, i32* @update_info, align 4
  br label %25

25:                                               ; preds = %17, %0
  %26 = call i32 (...) @load_twitch_data()
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @bfree(i8* %27)
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @bfree(i8* %29)
  %31 = call i32 @obs_register_service(i32* @rtmp_common_service)
  %32 = call i32 @obs_register_service(i32* @rtmp_custom_service)
  ret i32 1
}

declare dso_local i32 @init_twitch_data(...) #1

declare dso_local i32 @dstr_copy(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @dstr_cat(%struct.TYPE_4__*, i8*) #1

declare dso_local i8* @obs_get_version_string(...) #1

declare dso_local i32* @obs_get_proc_handler(...) #1

declare dso_local i32 @proc_handler_add(i32*, i8*, i32, i32*) #1

declare dso_local i8* @obs_module_file(i8*) #1

declare dso_local i8* @obs_module_config_path(i8*) #1

declare dso_local i32 @update_info_create(i32, i32, i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @load_twitch_data(...) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @obs_register_service(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
