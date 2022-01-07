; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_update_avsync_before_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_update_avsync_before_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, double, i64, double, double, i32, i64, %struct.TYPE_3__*, %struct.vo*, %struct.MPOpts* }
%struct.TYPE_3__ = type { i64 }
%struct.vo = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.MPOpts = type { i64, i32, i64 }

@STATUS_READY = common dso_local global i64 0, align 8
@VS_NONE = common dso_local global i64 0, align 8
@STATUS_PLAYING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"value %f audio-diff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @update_avsync_before_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_avsync_before_frame(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca %struct.vo*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %8 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 9
  %10 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  store %struct.MPOpts* %10, %struct.MPOpts** %3, align 8
  %11 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 8
  %13 = load %struct.vo*, %struct.vo** %12, align 8
  store %struct.vo* %13, %struct.vo** %4, align 8
  %14 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 7
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STATUS_READY, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %1
  %27 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 1
  store double 0.000000e+00, double* %28, align 8
  br label %129

29:                                               ; preds = %20
  %30 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %31 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %36 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VS_NONE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %29
  br label %128

41:                                               ; preds = %34
  %42 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %43 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @STATUS_PLAYING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %106

47:                                               ; preds = %41
  %48 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %49 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @STATUS_PLAYING, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %106

53:                                               ; preds = %47
  %54 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %55 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ao_untimed(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %106, label %59

59:                                               ; preds = %53
  %60 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %61 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call double @ao_get_delay(i32 %62)
  store double %63, double* %5, align 8
  %64 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %65 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %64, i32 0, i32 3
  %66 = load double, double* %65, align 8
  %67 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %68 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %67, i32 0, i32 4
  %69 = load double, double* %68, align 8
  %70 = fdiv double %66, %69
  %71 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %72 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %71, i32 0, i32 1
  %73 = load double, double* %72, align 8
  %74 = fadd double %70, %73
  store double %74, double* %6, align 8
  %75 = load double, double* %5, align 8
  %76 = load double, double* %6, align 8
  %77 = fsub double %75, %76
  store double %77, double* %7, align 8
  %78 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %79 = load double, double* %7, align 8
  %80 = call i32 @MP_STATS(%struct.MPContext* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), double %79)
  %81 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %82 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %59
  %86 = load double, double* %6, align 8
  %87 = load double, double* %7, align 8
  %88 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %89 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sitofp i32 %90 to double
  %92 = fdiv double %87, %91
  %93 = fadd double %86, %92
  store double %93, double* %5, align 8
  br label %94

94:                                               ; preds = %85, %59
  %95 = load double, double* %5, align 8
  %96 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %97 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %96, i32 0, i32 3
  %98 = load double, double* %97, align 8
  %99 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %100 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %99, i32 0, i32 4
  %101 = load double, double* %100, align 8
  %102 = fdiv double %98, %101
  %103 = fsub double %95, %102
  %104 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %105 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %104, i32 0, i32 1
  store double %103, double* %105, align 8
  br label %127

106:                                              ; preds = %53, %47, %41
  %107 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %108 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %107, i32 0, i32 1
  %109 = load double, double* %108, align 8
  %110 = fcmp olt double %109, -2.000000e-01
  br i1 %110, label %123, label %111

111:                                              ; preds = %106
  %112 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %113 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %111
  %117 = load %struct.vo*, %struct.vo** %4, align 8
  %118 = getelementptr inbounds %struct.vo, %struct.vo* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116, %111, %106
  %124 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %125 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %124, i32 0, i32 1
  store double 0.000000e+00, double* %125, align 8
  br label %126

126:                                              ; preds = %123, %116
  br label %127

127:                                              ; preds = %126, %94
  br label %128

128:                                              ; preds = %127, %40
  br label %129

129:                                              ; preds = %128, %26
  ret void
}

declare dso_local i32 @ao_untimed(i32) #1

declare dso_local double @ao_get_delay(i32) #1

declare dso_local i32 @MP_STATS(%struct.MPContext*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
