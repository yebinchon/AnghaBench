; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_handle_new_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_handle_new_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, double, double, i64, double, double, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { double }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [35 x i8] c"Invalid video timestamp: %f -> %f\0A\00", align 1
@STATUS_PLAYING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"frametime=%5.3f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @handle_new_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_new_frame(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  store double 0.000000e+00, double* %3, align 8
  %13 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 8
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  store double %19, double* %4, align 8
  %20 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 7
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 7
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %24, %1
  %32 = phi i1 [ false, %1 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %35 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %34, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = load double, double* @MP_NOPTS_VALUE, align 8
  %38 = fcmp une double %36, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %31
  %40 = load double, double* %4, align 8
  %41 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %42 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %41, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = fsub double %40, %43
  store double %44, double* %3, align 8
  %45 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %46 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %45, i32 0, i32 6
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %51, %39
  %56 = phi i1 [ false, %39 ], [ %54, %51 ]
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, double 5.000000e+00, double 1.000000e+04
  store double %58, double* %6, align 8
  %59 = load double, double* %3, align 8
  %60 = fcmp ole double %59, 0.000000e+00
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = load double, double* %3, align 8
  %63 = load double, double* %6, align 8
  %64 = fcmp oge double %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61, %55
  %66 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %67 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %68 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %67, i32 0, i32 1
  %69 = load double, double* %68, align 8
  %70 = load double, double* %4, align 8
  %71 = call i32 @MP_WARN(%struct.MPContext* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), double %69, double %70)
  store double 0.000000e+00, double* %3, align 8
  br label %72

72:                                               ; preds = %65, %61
  br label %73

73:                                               ; preds = %72, %31
  %74 = load double, double* %3, align 8
  %75 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %76 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %75, i32 0, i32 2
  %77 = load double, double* %76, align 8
  %78 = fsub double %77, %74
  store double %78, double* %76, align 8
  %79 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %80 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @STATUS_PLAYING, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %73
  %85 = load double, double* %3, align 8
  %86 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %87 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %86, i32 0, i32 5
  %88 = load double, double* %87, align 8
  %89 = fdiv double %85, %88
  %90 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %91 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %90, i32 0, i32 4
  %92 = load double, double* %91, align 8
  %93 = fadd double %92, %89
  store double %93, double* %91, align 8
  %94 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %95 = load double, double* %4, align 8
  %96 = load double, double* %3, align 8
  %97 = call i32 @adjust_sync(%struct.MPContext* %94, double %95, double %96)
  br label %98

98:                                               ; preds = %84, %73
  %99 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %100 = load double, double* %3, align 8
  %101 = call i32 @MP_TRACE(%struct.MPContext* %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), double %100)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_WARN(%struct.MPContext*, i8*, double, double) #1

declare dso_local i32 @adjust_sync(%struct.MPContext*, double, double) #1

declare dso_local i32 @MP_TRACE(%struct.MPContext*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
