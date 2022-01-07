; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_exec_set_arg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_exec_set_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_regstore = type { i32 }
%struct.d3dx_pres_reg = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_regstore*, %struct.d3dx_pres_reg*, i32, double)* @exec_set_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_set_arg(%struct.d3dx_regstore* %0, %struct.d3dx_pres_reg* %1, i32 %2, double %3) #0 {
  %5 = alloca %struct.d3dx_regstore*, align 8
  %6 = alloca %struct.d3dx_pres_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store %struct.d3dx_regstore* %0, %struct.d3dx_regstore** %5, align 8
  store %struct.d3dx_pres_reg* %1, %struct.d3dx_pres_reg** %6, align 8
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  %9 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %5, align 8
  %10 = load %struct.d3dx_pres_reg*, %struct.d3dx_pres_reg** %6, align 8
  %11 = getelementptr inbounds %struct.d3dx_pres_reg, %struct.d3dx_pres_reg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.d3dx_pres_reg*, %struct.d3dx_pres_reg** %6, align 8
  %14 = getelementptr inbounds %struct.d3dx_pres_reg, %struct.d3dx_pres_reg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load double, double* %8, align 8
  %20 = call i32 @regstore_set_double(%struct.d3dx_regstore* %9, i32 %12, i64 %18, double %19)
  ret void
}

declare dso_local i32 @regstore_set_double(%struct.d3dx_regstore*, i32, i64, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
