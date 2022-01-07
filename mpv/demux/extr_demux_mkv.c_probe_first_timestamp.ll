; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_probe_first_timestamp.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_probe_first_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Start PTS: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demuxer*)* @probe_first_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_first_timestamp(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  %4 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %5 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %16 = call i32 @read_next_block_into_queue(%struct.demuxer* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+09
  %22 = fptosi double %21 to i32
  %23 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %24 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %26 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %14
  %30 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %31 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %32 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @MP_VERBOSE(%struct.demuxer* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %13, %29, %14
  ret void
}

declare dso_local i32 @read_next_block_into_queue(%struct.demuxer*) #1

declare dso_local i32 @MP_VERBOSE(%struct.demuxer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
