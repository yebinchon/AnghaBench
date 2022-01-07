; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_light.c_gl_compute_spot_exp_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_light.c_gl_compute_spot_exp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_light = type { double, double** }

@EXP_TABLE_SIZE = common dso_local global i32 0, align 4
@FLT_MIN = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_compute_spot_exp_table(%struct.gl_light* %0) #0 {
  %2 = alloca %struct.gl_light*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store %struct.gl_light* %0, %struct.gl_light** %2, align 8
  %7 = load %struct.gl_light*, %struct.gl_light** %2, align 8
  %8 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  store double %9, double* %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.gl_light*, %struct.gl_light** %2, align 8
  %11 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %10, i32 0, i32 1
  %12 = load double**, double*** %11, align 8
  %13 = getelementptr inbounds double*, double** %12, i64 0
  %14 = load double*, double** %13, align 8
  %15 = getelementptr inbounds double, double* %14, i64 0
  store double 0.000000e+00, double* %15, align 8
  %16 = load i32, i32* @EXP_TABLE_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %50, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = sitofp i32 %25 to double
  %27 = load i32, i32* @EXP_TABLE_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %26, %29
  %31 = fptosi double %30 to i32
  %32 = load double, double* %4, align 8
  %33 = call double @pow(i32 %31, double %32)
  store double %33, double* %5, align 8
  %34 = load double, double* %5, align 8
  %35 = load double, double* @FLT_MIN, align 8
  %36 = fmul double %35, 1.000000e+02
  %37 = fcmp olt double %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  store double 0.000000e+00, double* %5, align 8
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %24
  br label %40

40:                                               ; preds = %39, %21
  %41 = load double, double* %5, align 8
  %42 = load %struct.gl_light*, %struct.gl_light** %2, align 8
  %43 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %42, i32 0, i32 1
  %44 = load double**, double*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double*, double** %44, i64 %46
  %48 = load double*, double** %47, align 8
  %49 = getelementptr inbounds double, double* %48, i64 0
  store double %41, double* %49, align 8
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %3, align 4
  br label %18

53:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %88, %53
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @EXP_TABLE_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %54
  %60 = load %struct.gl_light*, %struct.gl_light** %2, align 8
  %61 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %60, i32 0, i32 1
  %62 = load double**, double*** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double*, double** %62, i64 %65
  %67 = load double*, double** %66, align 8
  %68 = getelementptr inbounds double, double* %67, i64 0
  %69 = load double, double* %68, align 8
  %70 = load %struct.gl_light*, %struct.gl_light** %2, align 8
  %71 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %70, i32 0, i32 1
  %72 = load double**, double*** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double*, double** %72, i64 %74
  %76 = load double*, double** %75, align 8
  %77 = getelementptr inbounds double, double* %76, i64 0
  %78 = load double, double* %77, align 8
  %79 = fsub double %69, %78
  %80 = load %struct.gl_light*, %struct.gl_light** %2, align 8
  %81 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %80, i32 0, i32 1
  %82 = load double**, double*** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double*, double** %82, i64 %84
  %86 = load double*, double** %85, align 8
  %87 = getelementptr inbounds double, double* %86, i64 1
  store double %79, double* %87, align 8
  br label %88

88:                                               ; preds = %59
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %54

91:                                               ; preds = %54
  %92 = load %struct.gl_light*, %struct.gl_light** %2, align 8
  %93 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %92, i32 0, i32 1
  %94 = load double**, double*** %93, align 8
  %95 = load i32, i32* @EXP_TABLE_SIZE, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double*, double** %94, i64 %97
  %99 = load double*, double** %98, align 8
  %100 = getelementptr inbounds double, double* %99, i64 1
  store double 0.000000e+00, double* %100, align 8
  ret void
}

declare dso_local double @pow(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
