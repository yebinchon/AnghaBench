; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_set_matrix_transpose.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_set_matrix_transpose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_parameter = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32** }

@D3DXPT_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_parameter*, %struct.TYPE_5__*)* @set_matrix_transpose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_matrix_transpose(%struct.d3dx_parameter* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.d3dx_parameter*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.d3dx_parameter* %0, %struct.d3dx_parameter** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %55, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %10 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %51, %13
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %17 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %14
  %21 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %22 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %27 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %24, i64 %30
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %36 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* @D3DXPT_FLOAT, align 4
  %50 = call i32 @set_number(i32* %34, i32 %37, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %20
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %14

54:                                               ; preds = %14
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %7

58:                                               ; preds = %7
  ret void
}

declare dso_local i32 @set_number(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
