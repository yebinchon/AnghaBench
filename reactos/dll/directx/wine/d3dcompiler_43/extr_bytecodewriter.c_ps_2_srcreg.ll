; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_ps_2_srcreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_ps_2_srcreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i8*, i32 }
%struct.shader_reg = type { i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.bytecode_buffer = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Relative addressing not supported in <= ps_3_0\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Predicate register not supported in ps_2_0\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Predicate register with regnum %u not supported\0A\00", align 1
@D3DSPR_PREDICATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Invalid register type for ps_2_0 shader\0A\00", align 1
@D3DVS_SWIZZLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*)* @ps_2_srcreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_2_srcreg(%struct.bc_writer* %0, %struct.shader_reg* %1, %struct.bytecode_buffer* %2) #0 {
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.shader_reg*, align 8
  %6 = alloca %struct.bytecode_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.shader_reg* %1, %struct.shader_reg** %5, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %6, align 8
  store i32 -2147483648, i32* %7, align 4
  %9 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %10 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** @E_INVALIDARG, align 8
  %16 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %17 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  br label %93

18:                                               ; preds = %3
  %19 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %20 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %69 [
    i32 132, label %22
    i32 128, label %28
    i32 136, label %28
    i32 137, label %28
    i32 135, label %28
    i32 134, label %28
    i32 129, label %28
    i32 131, label %28
    i32 133, label %28
    i32 130, label %40
  ]

22:                                               ; preds = %18
  %23 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %24 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %25 = call i32 @map_ps_input(%struct.bc_writer* %23, %struct.shader_reg* %24)
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %74

28:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %29 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %30 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @d3d9_register(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %35 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @d3dsp_register(i32 %33, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %74

40:                                               ; preds = %18
  %41 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %42 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @BWRITERPS_VERSION(i32 2, i32 1)
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** @E_INVALIDARG, align 8
  %49 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %50 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %53 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %58 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i8*, i8** @E_INVALIDARG, align 8
  %62 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %63 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %56, %51
  %65 = load i32, i32* @D3DSPR_PREDICATE, align 4
  %66 = call i32 @d3dsp_register(i32 %65, i32 0)
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %74

69:                                               ; preds = %18
  %70 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i8*, i8** @E_INVALIDARG, align 8
  %72 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %73 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %93

74:                                               ; preds = %64, %28, %22
  %75 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %76 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @d3d9_swizzle(i32 %78)
  %80 = load i32, i32* @D3DVS_SWIZZLE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %85 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @d3d9_srcmod(i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @put_dword(%struct.bytecode_buffer* %90, i32 %91)
  br label %93

93:                                               ; preds = %74, %69, %13
  ret void
}

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @map_ps_input(%struct.bc_writer*, %struct.shader_reg*) #1

declare dso_local i32 @d3d9_register(i32) #1

declare dso_local i32 @d3dsp_register(i32, i32) #1

declare dso_local i32 @BWRITERPS_VERSION(i32, i32) #1

declare dso_local i32 @d3d9_swizzle(i32) #1

declare dso_local i32 @d3d9_srcmod(i32) #1

declare dso_local i32 @put_dword(%struct.bytecode_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
