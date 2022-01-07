; ModuleID = '/home/carl/AnghaBench/postgres/contrib/file_fdw/extr_file_fdw.c_estimate_costs.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/file_fdw/extr_file_fdw.c_estimate_costs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { double, double }
%struct.TYPE_8__ = type { i32, double }

@seq_page_cost = common dso_local global i32 0, align 4
@cpu_tuple_cost = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, double*, double*)* @estimate_costs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @estimate_costs(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2, double* %3, double* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load double, double* %19, align 8
  store double %20, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  %21 = load i32, i32* @seq_page_cost, align 4
  %22 = load i32, i32* %11, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sitofp i32 %23 to double
  %25 = load double, double* %13, align 8
  %26 = fadd double %25, %24
  store double %26, double* %13, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = load double*, double** %9, align 8
  store double %30, double* %31, align 8
  %32 = load i32, i32* @cpu_tuple_cost, align 4
  %33 = mul nsw i32 %32, 10
  %34 = sitofp i32 %33 to double
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = fadd double %34, %38
  store double %39, double* %14, align 8
  %40 = load double, double* %14, align 8
  %41 = load double, double* %12, align 8
  %42 = fmul double %40, %41
  %43 = load double, double* %13, align 8
  %44 = fadd double %43, %42
  store double %44, double* %13, align 8
  %45 = load double*, double** %9, align 8
  %46 = load double, double* %45, align 8
  %47 = load double, double* %13, align 8
  %48 = fadd double %46, %47
  %49 = load double*, double** %10, align 8
  store double %48, double* %49, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
