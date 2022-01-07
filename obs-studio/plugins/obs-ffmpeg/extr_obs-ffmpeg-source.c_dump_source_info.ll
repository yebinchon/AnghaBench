; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_dump_source_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_dump_source_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_source = type { i64, i64, i64, i64, i64, i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [242 x i8] c"settings:\0A\09input:                   %s\0A\09input_format:            %s\0A\09speed:                   %d\0A\09is_looping:              %s\0A\09is_hw_decoding:          %s\0A\09is_clear_on_media_end:   %s\0A\09restart_on_activate:     %s\0A\09close_when_inactive:     %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_source*, i8*, i8*)* @dump_source_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_source_info(%struct.ffmpeg_source* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ffmpeg_source*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.ffmpeg_source* %0, %struct.ffmpeg_source** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @LOG_INFO, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  br label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i8* [ %11, %10 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %12 ]
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  br label %20

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i8* [ %18, %17 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %19 ]
  %22 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %4, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %4, align 8
  %26 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %31 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %4, align 8
  %32 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %37 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %4, align 8
  %38 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %43 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %4, align 8
  %44 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %49 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %4, align 8
  %50 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %55 = call i32 @FF_BLOG(i32 %7, i8* getelementptr inbounds ([242 x i8], [242 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %21, i32 %24, i8* %30, i8* %36, i8* %42, i8* %48, i8* %54)
  ret void
}

declare dso_local i32 @FF_BLOG(i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
