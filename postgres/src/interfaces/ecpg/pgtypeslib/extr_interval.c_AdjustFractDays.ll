; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_interval.c_AdjustFractDays.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_interval.c_AdjustFractDays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@SECS_PER_DAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, %struct.tm*, i32*, i32)* @AdjustFractDays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AdjustFractDays(double %0, %struct.tm* %1, i32* %2, i32 %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  store %struct.tm* %1, %struct.tm** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load double, double* %5, align 8
  %11 = fcmp oeq double %10, 0.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %34

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = sitofp i32 %14 to double
  %16 = load double, double* %5, align 8
  %17 = fmul double %16, %15
  store double %17, double* %5, align 8
  %18 = load double, double* %5, align 8
  %19 = fptosi double %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.tm*, %struct.tm** %6, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sitofp i32 %25 to double
  %27 = load double, double* %5, align 8
  %28 = fsub double %27, %26
  store double %28, double* %5, align 8
  %29 = load double, double* %5, align 8
  %30 = load %struct.tm*, %struct.tm** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @SECS_PER_DAY, align 4
  %33 = call i32 @AdjustFractSeconds(double %29, %struct.tm* %30, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @AdjustFractSeconds(double, %struct.tm*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
