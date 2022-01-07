; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_disc.c_add_stream_chapters.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_disc.c_add_stream_chapters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { i32 }

@STREAM_CTRL_GET_NUM_CHAPTERS = common dso_local global i32 0, align 4
@STREAM_CTRL_GET_CHAPTER_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demuxer*)* @add_stream_chapters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_stream_chapters(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %7 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @STREAM_CTRL_GET_NUM_CHAPTERS, align 4
  %10 = call i32 (i32, i32, ...) @stream_control(i32 %8, i32 %9, i32* %3)
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %35

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = sitofp i32 %19 to double
  store double %20, double* %5, align 8
  %21 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %22 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @STREAM_CTRL_GET_CHAPTER_TIME, align 4
  %25 = call i32 (i32, i32, ...) @stream_control(i32 %23, i32 %24, double* %5)
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %30 = load double, double* %5, align 8
  %31 = call i32 @demuxer_add_chapter(%struct.demuxer* %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), double %30, i32 0)
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %14

35:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @stream_control(i32, i32, ...) #1

declare dso_local i32 @demuxer_add_chapter(%struct.demuxer*, i8*, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
