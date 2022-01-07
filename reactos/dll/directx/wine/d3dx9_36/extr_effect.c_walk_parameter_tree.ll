; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_walk_parameter_tree.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_walk_parameter_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_parameter = type { i32, i32, %struct.d3dx_parameter* }
%struct.d3dx_parameter.0 = type opaque

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.d3dx_parameter*, i64 (i8*, %struct.d3dx_parameter.0*)*, i8*)* @walk_parameter_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @walk_parameter_tree(%struct.d3dx_parameter* %0, i64 (i8*, %struct.d3dx_parameter.0*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.d3dx_parameter*, align 8
  %6 = alloca i64 (i8*, %struct.d3dx_parameter.0*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.d3dx_parameter* %0, %struct.d3dx_parameter** %5, align 8
  store i64 (i8*, %struct.d3dx_parameter.0*)* %1, i64 (i8*, %struct.d3dx_parameter.0*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i64 (i8*, %struct.d3dx_parameter.0*)*, i64 (i8*, %struct.d3dx_parameter.0*)** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %13 = bitcast %struct.d3dx_parameter* %12 to %struct.d3dx_parameter.0*
  %14 = call i64 %10(i8* %11, %struct.d3dx_parameter.0* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @TRUE, align 8
  store i64 %17, i64* %4, align 8
  br label %56

18:                                               ; preds = %3
  %19 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %20 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %25 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  br label %31

27:                                               ; preds = %18
  %28 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %29 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %30, %27 ]
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %51, %31
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %39 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %38, i32 0, i32 2
  %40 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %40, i64 %42
  %44 = load i64 (i8*, %struct.d3dx_parameter.0*)*, i64 (i8*, %struct.d3dx_parameter.0*)** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @walk_parameter_tree(%struct.d3dx_parameter* %43, i64 (i8*, %struct.d3dx_parameter.0*)* %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i64, i64* @TRUE, align 8
  store i64 %49, i64* %4, align 8
  br label %56

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %33

54:                                               ; preds = %33
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %54, %48, %16
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
