; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demuxer_feed_caption.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demuxer_feed_caption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_stream = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demuxer_feed_caption(%struct.sh_stream* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.sh_stream*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.demux_internal*, align 8
  %6 = alloca %struct.sh_stream*, align 8
  store %struct.sh_stream* %0, %struct.sh_stream** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.sh_stream*, %struct.sh_stream** %3, align 8
  %8 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.demux_internal*, %struct.demux_internal** %10, align 8
  store %struct.demux_internal* %11, %struct.demux_internal** %5, align 8
  %12 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %13 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %12, i32 0, i32 0
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  %15 = load %struct.sh_stream*, %struct.sh_stream** %3, align 8
  %16 = call %struct.sh_stream* @demuxer_get_cc_track_locked(%struct.sh_stream* %15)
  store %struct.sh_stream* %16, %struct.sh_stream** %6, align 8
  %17 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %18 = icmp ne %struct.sh_stream* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %21 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %20, i32 0, i32 0
  %22 = call i32 @pthread_mutex_unlock(i32* %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = call i32 @talloc_free(%struct.TYPE_7__* %23)
  br label %59

25:                                               ; preds = %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %32 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i8* @MP_ADD_PTS(i8* %30, i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %42 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i8* @MP_ADD_PTS(i8* %40, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %49 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = call i32 @add_packet_locked(%struct.sh_stream* %53, %struct.TYPE_7__* %54)
  %56 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %57 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %56, i32 0, i32 0
  %58 = call i32 @pthread_mutex_unlock(i32* %57)
  br label %59

59:                                               ; preds = %25, %19
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.sh_stream* @demuxer_get_cc_track_locked(%struct.sh_stream*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @talloc_free(%struct.TYPE_7__*) #1

declare dso_local i8* @MP_ADD_PTS(i8*, i32) #1

declare dso_local i32 @add_packet_locked(%struct.sh_stream*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
