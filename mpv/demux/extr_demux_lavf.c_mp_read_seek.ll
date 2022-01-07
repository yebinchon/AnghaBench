; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_mp_read_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_mp_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stream* }
%struct.stream = type { i32 }
%struct.stream_avseek = type { i32, i32, i32 }

@STREAM_CTRL_AVSEEK = common dso_local global i32 0, align 4
@STREAM_OK = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @mp_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_read_seek(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.demuxer*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca %struct.stream*, align 8
  %13 = alloca %struct.stream_avseek, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.demuxer*
  store %struct.demuxer* %15, %struct.demuxer** %10, align 8
  %16 = load %struct.demuxer*, %struct.demuxer** %10, align 8
  %17 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %11, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.stream*, %struct.stream** %20, align 8
  store %struct.stream* %21, %struct.stream** %12, align 8
  %22 = getelementptr inbounds %struct.stream_avseek, %struct.stream_avseek* %13, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.stream_avseek, %struct.stream_avseek* %13, i32 0, i32 1
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.stream_avseek, %struct.stream_avseek* %13, i32 0, i32 2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %26, align 4
  %28 = load %struct.stream*, %struct.stream** %12, align 8
  %29 = load i32, i32* @STREAM_CTRL_AVSEEK, align 4
  %30 = call i64 @stream_control(%struct.stream* %28, i32 %29, %struct.stream_avseek* %13)
  %31 = load i64, i64* @STREAM_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load %struct.stream*, %struct.stream** %12, align 8
  %35 = call i32 @stream_drop_buffers(%struct.stream* %34)
  store i32 0, i32* %5, align 4
  br label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOSYS, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @stream_control(%struct.stream*, i32, %struct.stream_avseek*) #1

declare dso_local i32 @stream_drop_buffers(%struct.stream*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
