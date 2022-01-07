; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_mkv_free.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_mkv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.mkv_demuxer* }
%struct.mkv_demuxer = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demuxer*)* @mkv_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkv_free(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca %struct.mkv_demuxer*, align 8
  %4 = alloca i32, align 4
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  %5 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %6 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %5, i32 0, i32 0
  %7 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %6, align 8
  store %struct.mkv_demuxer* %7, %struct.mkv_demuxer** %3, align 8
  %8 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %3, align 8
  %9 = icmp ne %struct.mkv_demuxer* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %13 = call i32 @mkv_seek_reset(%struct.demuxer* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %29, %11
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %3, align 8
  %17 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %3, align 8
  %22 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @demux_mkv_free_trackentry(i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %14

32:                                               ; preds = %10, %14
  ret void
}

declare dso_local i32 @mkv_seek_reset(%struct.demuxer*) #1

declare dso_local i32 @demux_mkv_free_trackentry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
