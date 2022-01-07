; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_walk_param_eval_dep.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_walk_param_eval_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_param_eval = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.d3dx_parameter** }
%struct.d3dx_parameter = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.d3dx_parameter** }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_param_eval*, i32, i8*)* @walk_param_eval_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_param_eval_dep(%struct.d3dx_param_eval* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx_param_eval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.d3dx_parameter**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.d3dx_param_eval* %0, %struct.d3dx_param_eval** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %12 = icmp ne %struct.d3dx_param_eval* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %77

15:                                               ; preds = %3
  %16 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %17 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %18, align 8
  store %struct.d3dx_parameter** %19, %struct.d3dx_parameter*** %8, align 8
  %20 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %21 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %41, %15
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %29, i64 %31
  %33 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @walk_parameter_dep(%struct.d3dx_parameter* %33, i32 %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %4, align 4
  br label %77

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %24

44:                                               ; preds = %24
  %45 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %46 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %48, align 8
  store %struct.d3dx_parameter** %49, %struct.d3dx_parameter*** %8, align 8
  %50 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %51 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %72, %44
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %60, i64 %62
  %64 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @walk_parameter_dep(%struct.d3dx_parameter* %64, i32 %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %55

75:                                               ; preds = %55
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %69, %38, %13
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @walk_parameter_dep(%struct.d3dx_parameter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
