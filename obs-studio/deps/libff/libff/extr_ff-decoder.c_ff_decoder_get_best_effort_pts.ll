; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-decoder.c_ff_decoder_get_best_effort_pts.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-decoder.c_ff_decoder_get_best_effort_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_decoder = type { double, double, %struct.TYPE_8__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { x86_fp80 }

@AV_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"multiple pts < start_pts; setting start pts to 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ff_decoder_get_best_effort_pts(%struct.ff_decoder* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.ff_decoder*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.ff_decoder* %0, %struct.ff_decoder** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = call double @av_frame_get_best_effort_timestamp(%struct.TYPE_9__* %8)
  store double %9, double* %6, align 8
  %10 = load double, double* %6, align 8
  %11 = load double, double* @AV_NOPTS_VALUE, align 8
  %12 = fcmp une double %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %2
  %14 = load double, double* %6, align 8
  %15 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %16 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = fcmp olt double %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %21 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  store double %27, double* %6, align 8
  br label %33

28:                                               ; preds = %19
  %29 = load i32, i32* @AV_LOG_WARNING, align 4
  %30 = call i32 @av_log(i32* null, i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %32 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %31, i32 0, i32 0
  store double 0.000000e+00, double* %32, align 8
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33, %13
  %35 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %36 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = load double, double* %6, align 8
  %39 = fsub double %38, %37
  store double %39, double* %6, align 8
  %40 = load double, double* %6, align 8
  %41 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %42 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %41, i32 0, i32 3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call double @av_q2d(i32 %45)
  %47 = fmul double %40, %46
  store double %47, double* %7, align 8
  %48 = load double, double* %7, align 8
  %49 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %50 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %49, i32 0, i32 1
  store double %48, double* %50, align 8
  br label %55

51:                                               ; preds = %2
  %52 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %53 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  store double %54, double* %7, align 8
  br label %55

55:                                               ; preds = %51, %34
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = call double @av_frame_get_pkt_duration(%struct.TYPE_9__* %56)
  %58 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %59 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call double @av_q2d(i32 %62)
  %64 = fmul double %57, %63
  store double %64, double* %5, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load x86_fp80, x86_fp80* %66, align 16
  %68 = load double, double* %5, align 8
  %69 = fpext double %68 to x86_fp80
  %70 = fdiv x86_fp80 0xK3FFF8000000000000000, %69
  %71 = fdiv x86_fp80 %67, %70
  %72 = load double, double* %5, align 8
  %73 = fpext double %72 to x86_fp80
  %74 = fadd x86_fp80 %73, %71
  %75 = fptrunc x86_fp80 %74 to double
  store double %75, double* %5, align 8
  %76 = load double, double* %5, align 8
  %77 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %78 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %77, i32 0, i32 1
  %79 = load double, double* %78, align 8
  %80 = fadd double %79, %76
  store double %80, double* %78, align 8
  %81 = load double, double* %7, align 8
  ret double %81
}

declare dso_local double @av_frame_get_best_effort_timestamp(%struct.TYPE_9__*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local double @av_q2d(i32) #1

declare dso_local double @av_frame_get_pkt_duration(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
