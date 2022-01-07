; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_regstore_set_double.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_regstore_set_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.d3dx_regstore = type { i64* }

@table_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Bad type %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_regstore*, i32, i32, double)* @regstore_set_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regstore_set_double(%struct.d3dx_regstore* %0, i32 %1, i32 %2, double %3) #0 {
  %5 = alloca %struct.d3dx_regstore*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32*, align 8
  store %struct.d3dx_regstore* %0, %struct.d3dx_regstore** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  %10 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %5, align 8
  %11 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table_info, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %17, i64 %26
  store i32* %27, i32** %9, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table_info, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %54 [
    i32 129, label %34
    i32 130, label %39
    i32 128, label %43
    i32 131, label %47
  ]

34:                                               ; preds = %4
  %35 = load double, double* %8, align 8
  %36 = fptrunc double %35 to float
  %37 = load i32*, i32** %9, align 8
  %38 = bitcast i32* %37 to float*
  store float %36, float* %38, align 4
  br label %62

39:                                               ; preds = %4
  %40 = load double, double* %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = bitcast i32* %41 to double*
  store double %40, double* %42, align 8
  br label %62

43:                                               ; preds = %4
  %44 = load double, double* %8, align 8
  %45 = call i32 @lrint(double %44)
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %62

47:                                               ; preds = %4
  %48 = load double, double* %8, align 8
  %49 = fcmp une double %48, 0.000000e+00
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %62

54:                                               ; preds = %4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table_info, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @FIXME(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %54, %47, %43, %39, %34
  ret void
}

declare dso_local i32 @lrint(double) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
