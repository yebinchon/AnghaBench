; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_get_time_length.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_get_time_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.demuxer* }
%struct.demuxer = type { i64 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_time_length(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.demuxer*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %4 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %5 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %4, i32 0, i32 0
  %6 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  store %struct.demuxer* %6, %struct.demuxer** %3, align 8
  %7 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %8 = icmp ne %struct.demuxer* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %11 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %16 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sitofp i64 %17 to double
  br label %21

19:                                               ; preds = %9, %1
  %20 = load double, double* @MP_NOPTS_VALUE, align 8
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi double [ %18, %14 ], [ %20, %19 ]
  ret double %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
