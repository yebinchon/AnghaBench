; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_compute_keyframe_times.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_compute_keyframe_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_packet = type { double, double, %struct.demux_packet*, i64, i32, i32, i64 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demux_packet* (%struct.demux_packet*, double*, double*)* @compute_keyframe_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demux_packet* @compute_keyframe_times(%struct.demux_packet* %0, double* %1, double* %2) #0 {
  %4 = alloca %struct.demux_packet*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %struct.demux_packet*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.demux_packet* %0, %struct.demux_packet** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %11 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  store %struct.demux_packet* %11, %struct.demux_packet** %7, align 8
  %12 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %12, double* %8, align 8
  %13 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %13, double* %9, align 8
  br label %14

14:                                               ; preds = %53, %3
  %15 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %16 = icmp ne %struct.demux_packet* %15, null
  br i1 %16, label %17, label %63

17:                                               ; preds = %14
  %18 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %19 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %24 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %25 = icmp ne %struct.demux_packet* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %63

27:                                               ; preds = %22, %17
  %28 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %29 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %32 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call double @MP_PTS_OR_DEF(i32 %30, i32 %33)
  store double %34, double* %10, align 8
  %35 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %36 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %27
  %40 = load double, double* %10, align 8
  %41 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %42 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = fcmp olt double %40, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load double, double* %10, align 8
  %47 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %48 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fcmp ogt double %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %39
  %52 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %52, double* %10, align 8
  br label %53

53:                                               ; preds = %51, %45, %27
  %54 = load double, double* %8, align 8
  %55 = load double, double* %10, align 8
  %56 = call double @MP_PTS_MIN(double %54, double %55)
  store double %56, double* %8, align 8
  %57 = load double, double* %9, align 8
  %58 = load double, double* %10, align 8
  %59 = call double @MP_PTS_MAX(double %57, double %58)
  store double %59, double* %9, align 8
  %60 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %61 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %60, i32 0, i32 2
  %62 = load %struct.demux_packet*, %struct.demux_packet** %61, align 8
  store %struct.demux_packet* %62, %struct.demux_packet** %4, align 8
  br label %14

63:                                               ; preds = %26, %14
  %64 = load double*, double** %5, align 8
  %65 = icmp ne double* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load double, double* %8, align 8
  %68 = load double*, double** %5, align 8
  store double %67, double* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load double*, double** %6, align 8
  %71 = icmp ne double* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load double, double* %9, align 8
  %74 = load double*, double** %6, align 8
  store double %73, double* %74, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  ret %struct.demux_packet* %76
}

declare dso_local double @MP_PTS_OR_DEF(i32, i32) #1

declare dso_local double @MP_PTS_MIN(double, double) #1

declare dso_local double @MP_PTS_MAX(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
