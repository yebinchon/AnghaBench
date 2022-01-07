; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encode_lavc_getstatus.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encode_lavc_getstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encode_lavc_context = type { i32, %struct.encode_priv* }
%struct.encode_priv = type { double, double, double, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"(failed)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"{%.1fmin %.1ffps %.1fMB}\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"{%.1fmin %.2fx %.1fMB}\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"{%.1fmin %.1fMB}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encode_lavc_getstatus(%struct.encode_lavc_context* %0, i8* %1, i32 %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.encode_lavc_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.encode_priv*, align 8
  %11 = alloca double, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store %struct.encode_lavc_context* %0, %struct.encode_lavc_context** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  %17 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %6, align 8
  %18 = icmp ne %struct.encode_lavc_context* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %142

20:                                               ; preds = %4
  %21 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %6, align 8
  %22 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %21, i32 0, i32 1
  %23 = load %struct.encode_priv*, %struct.encode_priv** %22, align 8
  store %struct.encode_priv* %23, %struct.encode_priv** %10, align 8
  %24 = call double (...) @mp_time_sec()
  store double %24, double* %11, align 8
  %25 = load float, float* %9, align 4
  %26 = call float @MPMAX(double 1.000000e-04, float %25)
  store float %26, float* %16, align 4
  %27 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %6, align 8
  %28 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %27, i32 0, i32 0
  %29 = call i32 @pthread_mutex_lock(i32* %28)
  %30 = load %struct.encode_priv*, %struct.encode_priv** %10, align 8
  %31 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %138

38:                                               ; preds = %20
  %39 = load double, double* %11, align 8
  %40 = load %struct.encode_priv*, %struct.encode_priv** %10, align 8
  %41 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = fsub double %39, %42
  %44 = fdiv double %43, 6.000000e+01
  %45 = load float, float* %16, align 4
  %46 = fsub float 1.000000e+00, %45
  %47 = fpext float %46 to double
  %48 = fmul double %44, %47
  %49 = load float, float* %16, align 4
  %50 = fpext float %49 to double
  %51 = fdiv double %48, %50
  %52 = fptrunc double %51 to float
  store float %52, float* %12, align 4
  %53 = load %struct.encode_priv*, %struct.encode_priv** %10, align 8
  %54 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %38
  %60 = load %struct.encode_priv*, %struct.encode_priv** %10, align 8
  %61 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call double @avio_size(i64 %64)
  %66 = fdiv double %65, 0x4130000000000000
  %67 = load float, float* %16, align 4
  %68 = fpext float %67 to double
  %69 = fdiv double %66, %68
  br label %71

70:                                               ; preds = %38
  br label %71

71:                                               ; preds = %70, %59
  %72 = phi double [ %69, %59 ], [ 0.000000e+00, %70 ]
  %73 = fptrunc double %72 to float
  store float %73, float* %13, align 4
  %74 = load %struct.encode_priv*, %struct.encode_priv** %10, align 8
  %75 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %74, i32 0, i32 1
  %76 = load double, double* %75, align 8
  %77 = load double, double* %11, align 8
  %78 = load %struct.encode_priv*, %struct.encode_priv** %10, align 8
  %79 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %78, i32 0, i32 0
  %80 = load double, double* %79, align 8
  %81 = fsub double %77, %80
  %82 = fdiv double %76, %81
  %83 = fptrunc double %82 to float
  store float %83, float* %14, align 4
  %84 = load %struct.encode_priv*, %struct.encode_priv** %10, align 8
  %85 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %84, i32 0, i32 2
  %86 = load double, double* %85, align 8
  %87 = load double, double* %11, align 8
  %88 = load %struct.encode_priv*, %struct.encode_priv** %10, align 8
  %89 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %88, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = fsub double %87, %90
  %92 = fdiv double %86, %91
  %93 = fptrunc double %92 to float
  store float %93, float* %15, align 4
  %94 = load %struct.encode_priv*, %struct.encode_priv** %10, align 8
  %95 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %94, i32 0, i32 1
  %96 = load double, double* %95, align 8
  %97 = fcmp une double %96, 0.000000e+00
  br i1 %97, label %98, label %108

98:                                               ; preds = %71
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load float, float* %12, align 4
  %102 = fpext float %101 to double
  %103 = load float, float* %14, align 4
  %104 = fpext float %103 to double
  %105 = load float, float* %13, align 4
  %106 = fpext float %105 to double
  %107 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %99, i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), double %102, double %104, double %106)
  br label %132

108:                                              ; preds = %71
  %109 = load %struct.encode_priv*, %struct.encode_priv** %10, align 8
  %110 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %109, i32 0, i32 2
  %111 = load double, double* %110, align 8
  %112 = fcmp une double %111, 0.000000e+00
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load float, float* %12, align 4
  %117 = fpext float %116 to double
  %118 = load float, float* %15, align 4
  %119 = fpext float %118 to double
  %120 = load float, float* %13, align 4
  %121 = fpext float %120 to double
  %122 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %114, i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), double %117, double %119, double %121)
  br label %131

123:                                              ; preds = %108
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load float, float* %12, align 4
  %127 = fpext float %126 to double
  %128 = load float, float* %13, align 4
  %129 = fpext float %128 to double
  %130 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %124, i32 %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), double %127, double %129)
  br label %131

131:                                              ; preds = %123, %113
  br label %132

132:                                              ; preds = %131, %98
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  store i8 0, i8* %137, align 1
  br label %138

138:                                              ; preds = %132, %34
  %139 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %6, align 8
  %140 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %139, i32 0, i32 0
  %141 = call i32 @pthread_mutex_unlock(i32* %140)
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %138, %19
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local double @mp_time_sec(...) #1

declare dso_local float @MPMAX(double, float) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local double @avio_size(i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
