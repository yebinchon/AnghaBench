; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_ps_1_4_srcreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_ps_1_4_srcreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i8* }
%struct.shader_reg = type { i32, i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.bytecode_buffer = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Relative addressing not supported in <= ps_3_0\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid register type for ps_1_4 shader\0A\00", align 1
@D3DVS_SWIZZLE_MASK = common dso_local global i32 0, align 4
@BWRITERSPSM_ABS = common dso_local global i64 0, align 8
@BWRITERSPSM_ABSNEG = common dso_local global i64 0, align 8
@BWRITERSPSM_NOT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Invalid source modifier %u for ps_1_4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*)* @ps_1_4_srcreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_1_4_srcreg(%struct.bc_writer* %0, %struct.shader_reg* %1, %struct.bytecode_buffer* %2) #0 {
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.shader_reg*, align 8
  %6 = alloca %struct.bytecode_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.shader_reg* %1, %struct.shader_reg** %5, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %6, align 8
  store i32 -2147483648, i32* %7, align 4
  %8 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %9 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** @E_INVALIDARG, align 8
  %15 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %16 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  br label %87

17:                                               ; preds = %3
  %18 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %19 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %37 [
    i32 129, label %21
    i32 128, label %27
    i32 130, label %27
  ]

21:                                               ; preds = %17
  %22 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %23 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %24 = call i32 @map_ps_input(%struct.bc_writer* %22, %struct.shader_reg* %23)
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %42

27:                                               ; preds = %17, %17
  %28 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %29 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %32 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @d3dsp_register(i32 %30, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %42

37:                                               ; preds = %17
  %38 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** @E_INVALIDARG, align 8
  %40 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %41 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %87

42:                                               ; preds = %27, %21
  %43 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %44 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @d3d9_swizzle(i32 %46)
  %48 = load i32, i32* @D3DVS_SWIZZLE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %53 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BWRITERSPSM_ABS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %42
  %58 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %59 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BWRITERSPSM_ABSNEG, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %65 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BWRITERSPSM_NOT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63, %57, %42
  %70 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %71 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %72)
  %74 = load i8*, i8** @E_INVALIDARG, align 8
  %75 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %76 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %87

77:                                               ; preds = %63
  %78 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %79 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @d3d9_srcmod(i64 %80)
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @put_dword(%struct.bytecode_buffer* %84, i32 %85)
  br label %87

87:                                               ; preds = %77, %69, %37, %12
  ret void
}

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @map_ps_input(%struct.bc_writer*, %struct.shader_reg*) #1

declare dso_local i32 @d3dsp_register(i32, i32) #1

declare dso_local i32 @d3d9_swizzle(i32) #1

declare dso_local i32 @d3d9_srcmod(i64) #1

declare dso_local i32 @put_dword(%struct.bytecode_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
