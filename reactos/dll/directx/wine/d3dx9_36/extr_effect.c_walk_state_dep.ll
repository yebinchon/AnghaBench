; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_walk_state_dep.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_walk_state_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_state = type { i64, %struct.TYPE_2__, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ST_CONSTANT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ST_ARRAY_SELECTOR = common dso_local global i64 0, align 8
@ST_PARAMETER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_state*, i32, i8*)* @walk_state_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_state_dep(%struct.d3dx_state* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.d3dx_state* %0, %struct.d3dx_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.d3dx_state*, %struct.d3dx_state** %5, align 8
  %9 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ST_CONSTANT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load %struct.d3dx_state*, %struct.d3dx_state** %5, align 8
  %15 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @is_param_type_sampler(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load %struct.d3dx_state*, %struct.d3dx_state** %5, align 8
  %22 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %21, i32 0, i32 1
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @walk_parameter_dep(%struct.TYPE_2__* %22, i32 %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %4, align 4
  br label %62

29:                                               ; preds = %20
  br label %54

30:                                               ; preds = %13, %3
  %31 = load %struct.d3dx_state*, %struct.d3dx_state** %5, align 8
  %32 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ST_ARRAY_SELECTOR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.d3dx_state*, %struct.d3dx_state** %5, align 8
  %38 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ST_PARAMETER, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36, %30
  %43 = load %struct.d3dx_state*, %struct.d3dx_state** %5, align 8
  %44 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @walk_parameter_dep(%struct.TYPE_2__* %45, i32 %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %4, align 4
  br label %62

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %53, %29
  %55 = load %struct.d3dx_state*, %struct.d3dx_state** %5, align 8
  %56 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @walk_param_eval_dep(i32 %58, i32 %59, i8* %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %50, %27
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @is_param_type_sampler(i32) #1

declare dso_local i64 @walk_parameter_dep(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @walk_param_eval_dep(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
