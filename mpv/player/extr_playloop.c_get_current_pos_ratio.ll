; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_get_current_pos_ratio.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_get_current_pos_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { double, %struct.TYPE_2__*, %struct.demuxer* }
%struct.TYPE_2__ = type { i64 }
%struct.demuxer = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_current_pos_ratio(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.demuxer*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 2
  %16 = load %struct.demuxer*, %struct.demuxer** %15, align 8
  store %struct.demuxer* %16, %struct.demuxer** %6, align 8
  %17 = load %struct.demuxer*, %struct.demuxer** %6, align 8
  %18 = icmp ne %struct.demuxer* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store double -1.000000e+00, double* %3, align 8
  br label %111

20:                                               ; preds = %2
  store double -1.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %21 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %22 = call double @get_time_length(%struct.MPContext* %21)
  store double %22, double* %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %27 = call double @get_play_start_pts(%struct.MPContext* %26)
  store double %27, double* %10, align 8
  %28 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %29 = call double @get_play_end_pts(%struct.MPContext* %28)
  store double %29, double* %11, align 8
  %30 = load double, double* %11, align 8
  %31 = load double, double* %9, align 8
  %32 = call double @MPMAX(double 0.000000e+00, double %31)
  %33 = fcmp ogt double %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load double, double* %9, align 8
  %36 = call double @MPMAX(double 0.000000e+00, double %35)
  store double %36, double* %11, align 8
  br label %37

37:                                               ; preds = %34, %25
  %38 = load double, double* %11, align 8
  %39 = load double, double* %10, align 8
  %40 = fcmp olt double %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load double, double* %10, align 8
  store double %42, double* %11, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load double, double* %10, align 8
  store double %44, double* %8, align 8
  %45 = load double, double* %11, align 8
  %46 = load double, double* %10, align 8
  %47 = fsub double %45, %46
  store double %47, double* %9, align 8
  br label %48

48:                                               ; preds = %43, %20
  %49 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %50 = call double @get_current_time(%struct.MPContext* %49)
  store double %50, double* %12, align 8
  %51 = load double, double* %9, align 8
  %52 = fcmp ogt double %51, 0.000000e+00
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load double, double* %12, align 8
  %55 = load double, double* %8, align 8
  %56 = fsub double %54, %55
  %57 = load double, double* %9, align 8
  %58 = fdiv double %56, %57
  %59 = call double @MPCLAMP(double %58, i32 0, i32 1)
  store double %59, double* %7, align 8
  br label %60

60:                                               ; preds = %53, %48
  %61 = load double, double* %7, align 8
  %62 = fcmp olt double %61, 0.000000e+00
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = load %struct.demuxer*, %struct.demuxer** %6, align 8
  %65 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load %struct.demuxer*, %struct.demuxer** %6, align 8
  %71 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.demuxer*, %struct.demuxer** %6, align 8
  %76 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sitofp i64 %77 to double
  %79 = load i64, i64* %13, align 8
  %80 = sitofp i64 %79 to double
  %81 = fdiv double %78, %80
  %82 = call double @MPCLAMP(double %81, i32 0, i32 1)
  store double %82, double* %7, align 8
  br label %83

83:                                               ; preds = %74, %69, %63
  br label %84

84:                                               ; preds = %83, %60
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %89 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %87
  %95 = load double, double* %7, align 8
  %96 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %97 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %96, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %100 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sitofp i64 %103 to double
  %105 = fdiv double %98, %104
  %106 = fsub double 1.000000e+00, %105
  %107 = call double @MPMAX(double %95, double %106)
  store double %107, double* %7, align 8
  br label %108

108:                                              ; preds = %94, %87
  br label %109

109:                                              ; preds = %108, %84
  %110 = load double, double* %7, align 8
  store double %110, double* %3, align 8
  br label %111

111:                                              ; preds = %109, %19
  %112 = load double, double* %3, align 8
  ret double %112
}

declare dso_local double @get_time_length(%struct.MPContext*) #1

declare dso_local double @get_play_start_pts(%struct.MPContext*) #1

declare dso_local double @get_play_end_pts(%struct.MPContext*) #1

declare dso_local double @MPMAX(double, double) #1

declare dso_local double @get_current_time(%struct.MPContext*) #1

declare dso_local double @MPCLAMP(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
