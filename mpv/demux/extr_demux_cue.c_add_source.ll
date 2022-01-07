; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_cue.c_add_source.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_cue.c_add_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeline = type { i32, i32 }
%struct.demuxer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeline*, %struct.demuxer*)* @add_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_source(%struct.timeline* %0, %struct.demuxer* %1) #0 {
  %3 = alloca %struct.timeline*, align 8
  %4 = alloca %struct.demuxer*, align 8
  store %struct.timeline* %0, %struct.timeline** %3, align 8
  store %struct.demuxer* %1, %struct.demuxer** %4, align 8
  %5 = load %struct.timeline*, %struct.timeline** %3, align 8
  %6 = load %struct.timeline*, %struct.timeline** %3, align 8
  %7 = getelementptr inbounds %struct.timeline, %struct.timeline* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.timeline*, %struct.timeline** %3, align 8
  %10 = getelementptr inbounds %struct.timeline, %struct.timeline* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %13 = call i32 @MP_TARRAY_APPEND(%struct.timeline* %5, i32 %8, i32 %11, %struct.demuxer* %12)
  ret void
}

declare dso_local i32 @MP_TARRAY_APPEND(%struct.timeline*, i32, i32, %struct.demuxer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
