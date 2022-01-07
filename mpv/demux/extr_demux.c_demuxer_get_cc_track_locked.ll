; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demuxer_get_cc_track_locked.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demuxer_get_cc_track_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_stream = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, %struct.sh_stream* }
%struct.TYPE_4__ = type { i8* }

@STREAM_SUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"eia_608\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sh_stream* (%struct.sh_stream*)* @demuxer_get_cc_track_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sh_stream* @demuxer_get_cc_track_locked(%struct.sh_stream* %0) #0 {
  %2 = alloca %struct.sh_stream*, align 8
  %3 = alloca %struct.sh_stream*, align 8
  %4 = alloca %struct.sh_stream*, align 8
  store %struct.sh_stream* %0, %struct.sh_stream** %3, align 8
  %5 = load %struct.sh_stream*, %struct.sh_stream** %3, align 8
  %6 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load %struct.sh_stream*, %struct.sh_stream** %8, align 8
  store %struct.sh_stream* %9, %struct.sh_stream** %4, align 8
  %10 = load %struct.sh_stream*, %struct.sh_stream** %4, align 8
  %11 = icmp ne %struct.sh_stream* %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @STREAM_SUB, align 4
  %14 = call %struct.sh_stream* @demux_alloc_sh_stream(i32 %13)
  store %struct.sh_stream* %14, %struct.sh_stream** %4, align 8
  %15 = load %struct.sh_stream*, %struct.sh_stream** %4, align 8
  %16 = icmp ne %struct.sh_stream* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.sh_stream* null, %struct.sh_stream** %2, align 8
  br label %43

18:                                               ; preds = %12
  %19 = load %struct.sh_stream*, %struct.sh_stream** %4, align 8
  %20 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.sh_stream*, %struct.sh_stream** %4, align 8
  %24 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.sh_stream*, %struct.sh_stream** %4, align 8
  %26 = load %struct.sh_stream*, %struct.sh_stream** %3, align 8
  %27 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store %struct.sh_stream* %25, %struct.sh_stream** %29, align 8
  %30 = load %struct.sh_stream*, %struct.sh_stream** %3, align 8
  %31 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sh_stream*, %struct.sh_stream** %4, align 8
  %36 = call i32 @demux_add_sh_stream_locked(i32 %34, %struct.sh_stream* %35)
  %37 = load %struct.sh_stream*, %struct.sh_stream** %4, align 8
  %38 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %18, %1
  %42 = load %struct.sh_stream*, %struct.sh_stream** %4, align 8
  store %struct.sh_stream* %42, %struct.sh_stream** %2, align 8
  br label %43

43:                                               ; preds = %41, %17
  %44 = load %struct.sh_stream*, %struct.sh_stream** %2, align 8
  ret %struct.sh_stream* %44
}

declare dso_local %struct.sh_stream* @demux_alloc_sh_stream(i32) #1

declare dso_local i32 @demux_add_sh_stream_locked(i32, %struct.sh_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
