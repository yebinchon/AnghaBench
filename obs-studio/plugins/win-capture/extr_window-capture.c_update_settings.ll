; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-capture.c_update_settings.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-capture.c_update_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_capture = type { i32, i8*, i8*, i8*, i32*, i32*, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"[window-capture: '%s'] update settings:\0A\09executable: %s\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"\09class:      %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"use_wildcards\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"compatibility\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_capture*, i32*)* @update_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_settings(%struct.window_capture* %0, i32* %1) #0 {
  %3 = alloca %struct.window_capture*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.window_capture* %0, %struct.window_capture** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i8* @obs_data_get_string(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @obs_data_get_int(i32* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %13 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %12, i32 0, i32 7
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @bfree(i32* %14)
  %16 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %17 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @bfree(i32* %18)
  %20 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %21 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @bfree(i32* %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %26 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %25, i32 0, i32 4
  %27 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %28 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %27, i32 0, i32 7
  %29 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %30 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %29, i32 0, i32 5
  %31 = call i32 @build_window_strings(i8* %24, i32** %26, i32** %28, i32** %30)
  %32 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %33 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %2
  %37 = load i32, i32* @LOG_INFO, align 4
  %38 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %39 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @obs_source_get_name(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %45 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 (i32, i8*, i32*, ...) @blog(i32 %37, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32* %43, i32* %46)
  %48 = load i32, i32* @LOG_DEBUG, align 4
  %49 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %50 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 (i32, i8*, i32*, ...) @blog(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %51)
  br label %53

53:                                               ; preds = %36, %2
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %56 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i8* @obs_data_get_bool(i32* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %60 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i8* @obs_data_get_bool(i32* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %64 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i8* @obs_data_get_bool(i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %67 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %68 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  ret void
}

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32 @bfree(i32*) #1

declare dso_local i32 @build_window_strings(i8*, i32**, i32**, i32**) #1

declare dso_local i32 @blog(i32, i8*, i32*, ...) #1

declare dso_local i32 @obs_source_get_name(i32) #1

declare dso_local i8* @obs_data_get_bool(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
