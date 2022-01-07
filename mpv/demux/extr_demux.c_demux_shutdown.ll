; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_shutdown.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i64, i64, i32*, i32*, %struct.TYPE_4__*, i32*, %struct.demuxer* }
%struct.TYPE_4__ = type { i32* }
%struct.demuxer = type { i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*)* @demux_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demux_shutdown(%struct.demux_internal* %0) #0 {
  %2 = alloca %struct.demux_internal*, align 8
  %3 = alloca %struct.demuxer*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %2, align 8
  %4 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %5 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %4, i32 0, i32 6
  %6 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  store %struct.demuxer* %6, %struct.demuxer** %3, align 8
  %7 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %8 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %13 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @mp_recorder_destroy(i32* %14)
  %16 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %17 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %20 = call i32 @dumper_close(%struct.demux_internal* %19)
  %21 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %22 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %24, align 8
  %26 = icmp ne i32 (%struct.TYPE_4__*)* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %29 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %31, align 8
  %33 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %34 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 %32(%struct.TYPE_4__* %35)
  br label %37

37:                                               ; preds = %27, %18
  %38 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %39 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %41 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %45 = call i32 @demux_flush(%struct.demuxer* %44)
  %46 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %47 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %53 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %55 = call i32 @free_empty_cached_ranges(%struct.demux_internal* %54)
  %56 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %57 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @talloc_free(i32* %58)
  %60 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %61 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %63 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %37
  %67 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %68 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @free_stream(i32* %69)
  br label %71

71:                                               ; preds = %66, %37
  %72 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %73 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  ret void
}

declare dso_local i32 @mp_recorder_destroy(i32*) #1

declare dso_local i32 @dumper_close(%struct.demux_internal*) #1

declare dso_local i32 @demux_flush(%struct.demuxer*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_empty_cached_ranges(%struct.demux_internal*) #1

declare dso_local i32 @talloc_free(i32*) #1

declare dso_local i32 @free_stream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
