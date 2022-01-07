; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_map_ps13_temp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_map_ps13_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i32 }
%struct.shader_reg = type { i32 }

@T0_REG = common dso_local global i32 0, align 4
@D3DSPR_TEXTURE = common dso_local global i32 0, align 4
@T1_REG = common dso_local global i32 0, align 4
@T2_REG = common dso_local global i32 0, align 4
@T3_REG = common dso_local global i32 0, align 4
@D3DSPR_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bc_writer*, %struct.shader_reg*)* @map_ps13_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_ps13_temp(%struct.bc_writer* %0, %struct.shader_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.shader_reg*, align 8
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.shader_reg* %1, %struct.shader_reg** %5, align 8
  %6 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %7 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @T0_REG, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @D3DSPR_TEXTURE, align 4
  %13 = call i32 @d3dsp_register(i32 %12, i32 0)
  store i32 %13, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %16 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @T1_REG, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @D3DSPR_TEXTURE, align 4
  %22 = call i32 @d3dsp_register(i32 %21, i32 1)
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %14
  %24 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %25 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @T2_REG, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @D3DSPR_TEXTURE, align 4
  %31 = call i32 @d3dsp_register(i32 %30, i32 2)
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %23
  %33 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %34 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @T3_REG, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @D3DSPR_TEXTURE, align 4
  %40 = call i32 @d3dsp_register(i32 %39, i32 3)
  store i32 %40, i32* %3, align 4
  br label %47

41:                                               ; preds = %32
  %42 = load i32, i32* @D3DSPR_TEMP, align 4
  %43 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %44 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @d3dsp_register(i32 %42, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %38, %29, %20, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @d3dsp_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
