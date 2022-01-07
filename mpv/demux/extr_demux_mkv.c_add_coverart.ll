; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_add_coverart.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_add_coverart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { i32, %struct.demux_attachment* }
%struct.demux_attachment = type { i32, i32, i32, i32 }
%struct.sh_stream = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i8* }

@STREAM_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demuxer*)* @add_coverart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_coverart(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.demux_attachment*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sh_stream*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %77, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %10 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %80

13:                                               ; preds = %7
  %14 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %15 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %14, i32 0, i32 1
  %16 = load %struct.demux_attachment*, %struct.demux_attachment** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %16, i64 %18
  store %struct.demux_attachment* %19, %struct.demux_attachment** %4, align 8
  %20 = load %struct.demux_attachment*, %struct.demux_attachment** %4, align 8
  %21 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @mp_map_mimetype_to_video_codec(i32 %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  br label %77

27:                                               ; preds = %13
  %28 = load i32, i32* @STREAM_VIDEO, align 4
  %29 = call %struct.sh_stream* @demux_alloc_sh_stream(i32 %28)
  store %struct.sh_stream* %29, %struct.sh_stream** %6, align 8
  %30 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %31 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 -1, %32
  %34 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %35 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %38 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i8* %36, i8** %40, align 8
  %41 = load %struct.demux_attachment*, %struct.demux_attachment** %4, align 8
  %42 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.demux_attachment*, %struct.demux_attachment** %4, align 8
  %45 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_5__* @new_demux_packet_from(i32 %43, i32 %46)
  %48 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %49 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %48, i32 0, i32 1
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %49, align 8
  %50 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %51 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %27
  %55 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %56 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %60 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %61 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = call i32 @talloc_steal(%struct.sh_stream* %59, %struct.TYPE_5__* %62)
  %64 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %65 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %54, %27
  %69 = load %struct.demux_attachment*, %struct.demux_attachment** %4, align 8
  %70 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %73 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %75 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %76 = call i32 @demux_add_sh_stream(%struct.demuxer* %74, %struct.sh_stream* %75)
  br label %77

77:                                               ; preds = %68, %26
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %7

80:                                               ; preds = %7
  ret void
}

declare dso_local i8* @mp_map_mimetype_to_video_codec(i32) #1

declare dso_local %struct.sh_stream* @demux_alloc_sh_stream(i32) #1

declare dso_local %struct.TYPE_5__* @new_demux_packet_from(i32, i32) #1

declare dso_local i32 @talloc_steal(%struct.sh_stream*, %struct.TYPE_5__*) #1

declare dso_local i32 @demux_add_sh_stream(%struct.demuxer*, %struct.sh_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
