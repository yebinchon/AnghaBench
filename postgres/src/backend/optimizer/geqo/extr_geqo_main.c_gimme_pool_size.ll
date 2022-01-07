; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/geqo/extr_geqo_main.c_gimme_pool_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/geqo/extr_geqo_main.c_gimme_pool_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Geqo_pool_size = common dso_local global i32 0, align 4
@Geqo_effort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gimme_pool_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gimme_pool_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @Geqo_pool_size, align 4
  %8 = icmp sge i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @Geqo_pool_size, align 4
  store i32 %10, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = sitofp i32 %12 to double
  %14 = fadd double %13, 1.000000e+00
  %15 = fptosi double %14 to i32
  %16 = call double @pow(double 2.000000e+00, i32 %15)
  store double %16, double* %4, align 8
  %17 = load i32, i32* @Geqo_effort, align 4
  %18 = mul nsw i32 50, %17
  store i32 %18, i32* %6, align 4
  %19 = load double, double* %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sitofp i32 %20 to double
  %22 = fcmp ogt double %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %11
  %26 = load i32, i32* @Geqo_effort, align 4
  %27 = mul nsw i32 10, %26
  store i32 %27, i32* %5, align 4
  %28 = load double, double* %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sitofp i32 %29 to double
  %31 = fcmp olt double %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %25
  %35 = load double, double* %4, align 8
  %36 = call i64 @ceil(double %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %32, %23, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local double @pow(double, i32) #1

declare dso_local i64 @ceil(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
