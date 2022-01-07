; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_twitch.c_load_twitch_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_twitch.c_load_twitch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingest = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"twitch_ingests.json\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"rtmp://live.twitch.tv/app\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@mutex = common dso_local global i32 0, align 4
@cur_ingests = common dso_local global i32 0, align 4
@ingests_loaded = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_twitch_data() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.ingest, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = call i8* @obs_module_config_path(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %1, align 8
  %6 = getelementptr inbounds %struct.ingest, %struct.ingest* %2, i32 0, i32 0
  %7 = call i32 @bstrdup(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.ingest, %struct.ingest* %2, i32 0, i32 1
  %9 = call i32 @bstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %9, i32* %8, align 4
  %10 = call i32 @pthread_mutex_lock(i32* @mutex)
  %11 = load i32, i32* @cur_ingests, align 4
  %12 = call i32 @da_push_back(i32 %11, %struct.ingest* %2)
  %13 = call i32 @pthread_mutex_unlock(i32* @mutex)
  %14 = load i8*, i8** %1, align 8
  %15 = call i64 @os_file_exists(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %0
  %18 = load i8*, i8** %1, align 8
  %19 = call i8* @os_quick_read_utf8_file(i8* %18)
  store i8* %19, i8** %3, align 8
  %20 = call i32 @pthread_mutex_lock(i32* @mutex)
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @load_ingests(i8* %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = call i32 @pthread_mutex_unlock(i32* @mutex)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 @os_atomic_set_bool(i32* @ingests_loaded, i32 1)
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @bfree(i8* %29)
  br label %31

31:                                               ; preds = %28, %0
  %32 = load i8*, i8** %1, align 8
  %33 = call i32 @bfree(i8* %32)
  ret void
}

declare dso_local i8* @obs_module_config_path(i8*) #1

declare dso_local i32 @bstrdup(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @da_push_back(i32, %struct.ingest*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @os_file_exists(i8*) #1

declare dso_local i8* @os_quick_read_utf8_file(i8*) #1

declare dso_local i32 @load_ingests(i8*, i32) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
