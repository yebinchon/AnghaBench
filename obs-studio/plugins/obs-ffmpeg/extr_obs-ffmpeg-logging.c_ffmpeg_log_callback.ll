; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-logging.c_ffmpeg_log_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-logging.c_ffmpeg_log_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_context = type { i8*, i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"[ffmpeg] %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @ffmpeg_log_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_log_callback(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.log_context*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %87

16:                                               ; preds = %4
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.log_context* @create_or_fetch_log_context(i8* %17)
  store %struct.log_context* %18, %struct.log_context** %9, align 8
  %19 = load %struct.log_context*, %struct.log_context** %9, align 8
  %20 = getelementptr inbounds %struct.log_context, %struct.log_context* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = sub i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = load %struct.log_context*, %struct.log_context** %9, align 8
  %37 = getelementptr inbounds %struct.log_context, %struct.log_context* %36, i32 0, i32 1
  %38 = call i32 @av_log_format_line(i8* %22, i32 %23, i8* %24, i32 %25, i8* %30, i32 %35, i32* %37)
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %47 [
    i32 130, label %40
    i32 132, label %40
    i32 133, label %42
    i32 128, label %42
    i32 131, label %44
    i32 129, label %44
    i32 134, label %46
  ]

40:                                               ; preds = %16, %16
  %41 = load i32, i32* @LOG_ERROR, align 4
  store i32 %41, i32* %11, align 4
  br label %49

42:                                               ; preds = %16, %16
  %43 = load i32, i32* @LOG_WARNING, align 4
  store i32 %43, i32* %11, align 4
  br label %49

44:                                               ; preds = %16, %16
  %45 = load i32, i32* @LOG_INFO, align 4
  store i32 %45, i32* %11, align 4
  br label %49

46:                                               ; preds = %16
  br label %47

47:                                               ; preds = %16, %46
  %48 = load i32, i32* @LOG_DEBUG, align 4
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %47, %44, %42, %40
  %50 = load %struct.log_context*, %struct.log_context** %9, align 8
  %51 = getelementptr inbounds %struct.log_context, %struct.log_context* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %87

55:                                               ; preds = %49
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = getelementptr inbounds i8, i8* %60, i64 -1
  store i8* %61, i8** %12, align 8
  br label %62

62:                                               ; preds = %72, %55
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ult i8* %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i8*, i8** %12, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 10
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %75

72:                                               ; preds = %66
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %74, i8** %12, align 8
  store i8 0, i8* %73, align 1
  br label %62

75:                                               ; preds = %71, %62
  %76 = load i8*, i8** %12, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ule i8* %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %84

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @blog(i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %80, %79
  %85 = load %struct.log_context*, %struct.log_context** %9, align 8
  %86 = call i32 @destroy_log_context(%struct.log_context* %85)
  br label %87

87:                                               ; preds = %84, %54, %15
  ret void
}

declare dso_local %struct.log_context* @create_or_fetch_log_context(i8*) #1

declare dso_local i32 @av_log_format_line(i8*, i32, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @blog(i32, i8*, i8*) #1

declare dso_local i32 @destroy_log_context(%struct.log_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
