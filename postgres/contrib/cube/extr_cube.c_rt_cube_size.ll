; ModuleID = '/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_rt_cube_size.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_rt_cube_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_cube_size(i32* %0, double* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store double* %1, double** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store double 0.000000e+00, double* %5, align 8
  br label %41

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @IS_POINT(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @DIM(i32* %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  store double 0.000000e+00, double* %5, align 8
  br label %40

19:                                               ; preds = %14
  store double 1.000000e+00, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @DIM(i32* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @UR_COORD(i32* %26, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @LL_COORD(i32* %29, i32 %30)
  %32 = sub nsw i64 %28, %31
  %33 = call double @Abs(i64 %32)
  %34 = load double, double* %5, align 8
  %35 = fmul double %34, %33
  store double %35, double* %5, align 8
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %20

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39, %18
  br label %41

41:                                               ; preds = %40, %9
  %42 = load double, double* %5, align 8
  %43 = load double*, double** %4, align 8
  store double %42, double* %43, align 8
  ret void
}

declare dso_local i64 @IS_POINT(i32*) #1

declare dso_local i32 @DIM(i32*) #1

declare dso_local double @Abs(i64) #1

declare dso_local i64 @UR_COORD(i32*, i32) #1

declare dso_local i64 @LL_COORD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
