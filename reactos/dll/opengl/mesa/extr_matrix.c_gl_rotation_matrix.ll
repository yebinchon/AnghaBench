; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_rotation_matrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_rotation_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEG2RAD = common dso_local global double 0.000000e+00, align 8
@Identity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_rotation_matrix(double %0, double %1, double %2, double %3, double* %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double* %4, double** %10, align 8
  %24 = load double, double* %6, align 8
  %25 = load double, double* @DEG2RAD, align 8
  %26 = fmul double %24, %25
  %27 = call double @sin(double %26) #3
  store double %27, double* %12, align 8
  %28 = load double, double* %6, align 8
  %29 = load double, double* @DEG2RAD, align 8
  %30 = fmul double %28, %29
  %31 = call double @cos(double %30) #3
  store double %31, double* %13, align 8
  %32 = load double, double* %7, align 8
  %33 = load double, double* %7, align 8
  %34 = fmul double %32, %33
  %35 = load double, double* %8, align 8
  %36 = load double, double* %8, align 8
  %37 = fmul double %35, %36
  %38 = fadd double %34, %37
  %39 = load double, double* %9, align 8
  %40 = load double, double* %9, align 8
  %41 = fmul double %39, %40
  %42 = fadd double %38, %41
  %43 = call double @GL_SQRT(double %42)
  store double %43, double* %11, align 8
  %44 = load double, double* %11, align 8
  %45 = fcmp oeq double %44, 0.000000e+00
  br i1 %45, label %46, label %50

46:                                               ; preds = %5
  %47 = load double*, double** %10, align 8
  %48 = load i32, i32* @Identity, align 4
  %49 = call i32 @MEMCPY(double* %47, i32 %48, i32 128)
  br label %166

50:                                               ; preds = %5
  %51 = load double, double* %11, align 8
  %52 = load double, double* %7, align 8
  %53 = fdiv double %52, %51
  store double %53, double* %7, align 8
  %54 = load double, double* %11, align 8
  %55 = load double, double* %8, align 8
  %56 = fdiv double %55, %54
  store double %56, double* %8, align 8
  %57 = load double, double* %11, align 8
  %58 = load double, double* %9, align 8
  %59 = fdiv double %58, %57
  store double %59, double* %9, align 8
  %60 = load double, double* %7, align 8
  %61 = load double, double* %7, align 8
  %62 = fmul double %60, %61
  store double %62, double* %14, align 8
  %63 = load double, double* %8, align 8
  %64 = load double, double* %8, align 8
  %65 = fmul double %63, %64
  store double %65, double* %15, align 8
  %66 = load double, double* %9, align 8
  %67 = load double, double* %9, align 8
  %68 = fmul double %66, %67
  store double %68, double* %16, align 8
  %69 = load double, double* %7, align 8
  %70 = load double, double* %8, align 8
  %71 = fmul double %69, %70
  store double %71, double* %17, align 8
  %72 = load double, double* %8, align 8
  %73 = load double, double* %9, align 8
  %74 = fmul double %72, %73
  store double %74, double* %18, align 8
  %75 = load double, double* %9, align 8
  %76 = load double, double* %7, align 8
  %77 = fmul double %75, %76
  store double %77, double* %19, align 8
  %78 = load double, double* %7, align 8
  %79 = load double, double* %12, align 8
  %80 = fmul double %78, %79
  store double %80, double* %20, align 8
  %81 = load double, double* %8, align 8
  %82 = load double, double* %12, align 8
  %83 = fmul double %81, %82
  store double %83, double* %21, align 8
  %84 = load double, double* %9, align 8
  %85 = load double, double* %12, align 8
  %86 = fmul double %84, %85
  store double %86, double* %22, align 8
  %87 = load double, double* %13, align 8
  %88 = fsub double 1.000000e+00, %87
  store double %88, double* %23, align 8
  %89 = load double, double* %23, align 8
  %90 = load double, double* %14, align 8
  %91 = fmul double %89, %90
  %92 = load double, double* %13, align 8
  %93 = fadd double %91, %92
  %94 = load double*, double** %10, align 8
  %95 = getelementptr inbounds double, double* %94, i64 0
  store double %93, double* %95, align 8
  %96 = load double, double* %23, align 8
  %97 = load double, double* %17, align 8
  %98 = fmul double %96, %97
  %99 = load double, double* %22, align 8
  %100 = fsub double %98, %99
  %101 = load double*, double** %10, align 8
  %102 = getelementptr inbounds double, double* %101, i64 4
  store double %100, double* %102, align 8
  %103 = load double, double* %23, align 8
  %104 = load double, double* %19, align 8
  %105 = fmul double %103, %104
  %106 = load double, double* %21, align 8
  %107 = fadd double %105, %106
  %108 = load double*, double** %10, align 8
  %109 = getelementptr inbounds double, double* %108, i64 8
  store double %107, double* %109, align 8
  %110 = load double*, double** %10, align 8
  %111 = getelementptr inbounds double, double* %110, i64 12
  store double 0.000000e+00, double* %111, align 8
  %112 = load double, double* %23, align 8
  %113 = load double, double* %17, align 8
  %114 = fmul double %112, %113
  %115 = load double, double* %22, align 8
  %116 = fadd double %114, %115
  %117 = load double*, double** %10, align 8
  %118 = getelementptr inbounds double, double* %117, i64 1
  store double %116, double* %118, align 8
  %119 = load double, double* %23, align 8
  %120 = load double, double* %15, align 8
  %121 = fmul double %119, %120
  %122 = load double, double* %13, align 8
  %123 = fadd double %121, %122
  %124 = load double*, double** %10, align 8
  %125 = getelementptr inbounds double, double* %124, i64 5
  store double %123, double* %125, align 8
  %126 = load double, double* %23, align 8
  %127 = load double, double* %18, align 8
  %128 = fmul double %126, %127
  %129 = load double, double* %20, align 8
  %130 = fsub double %128, %129
  %131 = load double*, double** %10, align 8
  %132 = getelementptr inbounds double, double* %131, i64 9
  store double %130, double* %132, align 8
  %133 = load double*, double** %10, align 8
  %134 = getelementptr inbounds double, double* %133, i64 13
  store double 0.000000e+00, double* %134, align 8
  %135 = load double, double* %23, align 8
  %136 = load double, double* %19, align 8
  %137 = fmul double %135, %136
  %138 = load double, double* %21, align 8
  %139 = fsub double %137, %138
  %140 = load double*, double** %10, align 8
  %141 = getelementptr inbounds double, double* %140, i64 2
  store double %139, double* %141, align 8
  %142 = load double, double* %23, align 8
  %143 = load double, double* %18, align 8
  %144 = fmul double %142, %143
  %145 = load double, double* %20, align 8
  %146 = fadd double %144, %145
  %147 = load double*, double** %10, align 8
  %148 = getelementptr inbounds double, double* %147, i64 6
  store double %146, double* %148, align 8
  %149 = load double, double* %23, align 8
  %150 = load double, double* %16, align 8
  %151 = fmul double %149, %150
  %152 = load double, double* %13, align 8
  %153 = fadd double %151, %152
  %154 = load double*, double** %10, align 8
  %155 = getelementptr inbounds double, double* %154, i64 10
  store double %153, double* %155, align 8
  %156 = load double*, double** %10, align 8
  %157 = getelementptr inbounds double, double* %156, i64 14
  store double 0.000000e+00, double* %157, align 8
  %158 = load double*, double** %10, align 8
  %159 = getelementptr inbounds double, double* %158, i64 3
  store double 0.000000e+00, double* %159, align 8
  %160 = load double*, double** %10, align 8
  %161 = getelementptr inbounds double, double* %160, i64 7
  store double 0.000000e+00, double* %161, align 8
  %162 = load double*, double** %10, align 8
  %163 = getelementptr inbounds double, double* %162, i64 11
  store double 0.000000e+00, double* %163, align 8
  %164 = load double*, double** %10, align 8
  %165 = getelementptr inbounds double, double* %164, i64 15
  store double 1.000000e+00, double* %165, align 8
  br label %166

166:                                              ; preds = %50, %46
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

declare dso_local double @GL_SQRT(double) #2

declare dso_local i32 @MEMCPY(double*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
