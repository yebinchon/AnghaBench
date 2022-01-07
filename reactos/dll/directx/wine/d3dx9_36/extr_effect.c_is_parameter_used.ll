; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_is_parameter_used.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_is_parameter_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_parameter = type { i32 }
%struct.d3dx_technique = type { i32, %struct.d3dx_pass* }
%struct.d3dx_pass = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@is_same_parameter = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_parameter*, %struct.d3dx_technique*)* @is_parameter_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_parameter_used(%struct.d3dx_parameter* %0, %struct.d3dx_technique* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d3dx_parameter*, align 8
  %5 = alloca %struct.d3dx_technique*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.d3dx_pass*, align 8
  store %struct.d3dx_parameter* %0, %struct.d3dx_parameter** %4, align 8
  store %struct.d3dx_technique* %1, %struct.d3dx_technique** %5, align 8
  %9 = load %struct.d3dx_technique*, %struct.d3dx_technique** %5, align 8
  %10 = icmp ne %struct.d3dx_technique* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %13 = icmp ne %struct.d3dx_parameter* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %54, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.d3dx_technique*, %struct.d3dx_technique** %5, align 8
  %20 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = load %struct.d3dx_technique*, %struct.d3dx_technique** %5, align 8
  %25 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %24, i32 0, i32 1
  %26 = load %struct.d3dx_pass*, %struct.d3dx_pass** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %26, i64 %28
  store %struct.d3dx_pass* %29, %struct.d3dx_pass** %8, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %50, %23
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.d3dx_pass*, %struct.d3dx_pass** %8, align 8
  %33 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load %struct.d3dx_pass*, %struct.d3dx_pass** %8, align 8
  %38 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* @is_same_parameter, align 4
  %44 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %45 = call i64 @walk_state_dep(i32* %42, i32 %43, %struct.d3dx_parameter* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %30

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %17

57:                                               ; preds = %17
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %47, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @walk_state_dep(i32*, i32, %struct.d3dx_parameter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
