; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_regstore_get_double.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_regstore_get_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.d3dx_regstore = type { i64* }

@table_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unexpected preshader input from table %u.\0A\00", align 1
@NAN = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.d3dx_regstore*, i32, i32)* @regstore_get_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @regstore_get_double(%struct.d3dx_regstore* %0, i32 %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.d3dx_regstore*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.d3dx_regstore* %0, %struct.d3dx_regstore** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %5, align 8
  %10 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table_info, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %16, i64 %25
  store i32* %26, i32** %8, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table_info, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %42 [
    i32 128, label %33
    i32 129, label %38
  ]

33:                                               ; preds = %3
  %34 = load i32*, i32** %8, align 8
  %35 = bitcast i32* %34 to float*
  %36 = load float, float* %35, align 4
  %37 = fpext float %36 to double
  store double %37, double* %4, align 8
  br label %46

38:                                               ; preds = %3
  %39 = load i32*, i32** %8, align 8
  %40 = bitcast i32* %39 to double*
  %41 = load double, double* %40, align 8
  store double %41, double* %4, align 8
  br label %46

42:                                               ; preds = %3
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load double, double* @NAN, align 8
  store double %45, double* %4, align 8
  br label %46

46:                                               ; preds = %42, %38, %33
  %47 = load double, double* %4, align 8
  ret double %47
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
