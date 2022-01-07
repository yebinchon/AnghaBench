; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_get_current_time.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_get_current_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, double, i64, %struct.demuxer* }
%struct.demuxer = type { i32 }

@MP_NOPTS_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_current_time(%struct.MPContext* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.demuxer*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 3
  %7 = load %struct.demuxer*, %struct.demuxer** %6, align 8
  store %struct.demuxer* %7, %struct.demuxer** %4, align 8
  %8 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %9 = icmp ne %struct.demuxer* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %1
  %11 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sitofp i64 %19 to double
  %21 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 1
  %23 = load double, double* %22, align 8
  %24 = fmul double %20, %23
  store double %24, double* %2, align 8
  br label %40

25:                                               ; preds = %10
  %26 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %27 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %33 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sitofp i64 %34 to double
  store double %35, double* %2, align 8
  br label %40

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %39 = sitofp i64 %38 to double
  store double %39, double* %2, align 8
  br label %40

40:                                               ; preds = %37, %31, %16
  %41 = load double, double* %2, align 8
  ret double %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
