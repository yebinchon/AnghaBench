; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/lib_mpc_export/extr_acado_solver.c_acado_multQN1d.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/lib_mpc_export/extr_acado_solver.c_acado_multQN1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@acadoWorkspace = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acado_multQN1d(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = add nsw i32 %13, %20
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = add nsw i32 %21, %28
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = add nsw i32 %38, %45
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = add nsw i32 %46, %53
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = add nsw i32 %63, %70
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = add nsw i32 %71, %78
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %79, i32* %81, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
