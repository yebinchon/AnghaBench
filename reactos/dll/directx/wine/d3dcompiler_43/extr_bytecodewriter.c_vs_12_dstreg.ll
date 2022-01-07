; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_vs_12_dstreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_vs_12_dstreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i8*, i32 }
%struct.shader_reg = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.bytecode_buffer = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"Relative addressing not supported for destination registers\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Unexpected register type %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Only a0 exists\0A\00", align 1
@D3DSPR_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Predicate register is allowed only in vs_2_x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Only predicate register p0 exists\0A\00", align 1
@D3DSPR_PREDICATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Invalid register type for 1.x-2.x vertex shader\0A\00", align 1
@D3DSP_DSTSHIFT_SHIFT = common dso_local global i32 0, align 4
@D3DSP_DSTSHIFT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*, i32, i32)* @vs_12_dstreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vs_12_dstreg(%struct.bc_writer* %0, %struct.shader_reg* %1, %struct.bytecode_buffer* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bc_writer*, align 8
  %7 = alloca %struct.shader_reg*, align 8
  %8 = alloca %struct.bytecode_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %6, align 8
  store %struct.shader_reg* %1, %struct.shader_reg** %7, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 -2147483648, i32* %11, align 4
  %13 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %14 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = call i32 @WARN(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** @E_INVALIDARG, align 8
  %20 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %21 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  br label %128

22:                                               ; preds = %5
  %23 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %24 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %97 [
    i32 131, label %26
    i32 129, label %38
    i32 134, label %38
    i32 132, label %43
    i32 128, label %43
    i32 133, label %43
    i32 135, label %54
    i32 130, label %70
  ]

26:                                               ; preds = %22
  %27 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %28 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %29 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %32 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @map_vs_output(%struct.bc_writer* %27, i32 %30, i32 %34, i32* %12)
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %102

38:                                               ; preds = %22, %22
  %39 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %40 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %22, %22, %22, %38
  %44 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %45 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %48 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @d3dsp_register(i32 %46, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %12, align 4
  br label %102

54:                                               ; preds = %22
  %55 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %56 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = call i32 @WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i8*, i8** @E_INVALIDARG, align 8
  %62 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %63 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %128

64:                                               ; preds = %54
  %65 = load i32, i32* @D3DSPR_ADDR, align 4
  %66 = call i32 @d3dsp_register(i32 %65, i32 0)
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %12, align 4
  br label %102

70:                                               ; preds = %22
  %71 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %72 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @BWRITERVS_VERSION(i32 2, i32 1)
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = call i32 @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i8*, i8** @E_INVALIDARG, align 8
  %79 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %80 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %128

81:                                               ; preds = %70
  %82 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %83 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i8*, i8** @E_INVALIDARG, align 8
  %89 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %90 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  br label %128

91:                                               ; preds = %81
  %92 = load i32, i32* @D3DSPR_PREDICATE, align 4
  %93 = call i32 @d3dsp_register(i32 %92, i32 0)
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* %12, align 4
  br label %102

97:                                               ; preds = %22
  %98 = call i32 @WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i8*, i8** @E_INVALIDARG, align 8
  %100 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %101 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %128

102:                                              ; preds = %91, %64, %43, %26
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @D3DSP_DSTSHIFT_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* @D3DSP_DSTSHIFT_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @d3d9_dstmod(i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %102
  %117 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %118 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @d3d9_writemask(i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %116, %102
  %125 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %8, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @put_dword(%struct.bytecode_buffer* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %97, %86, %76, %59, %17
  ret void
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @map_vs_output(%struct.bc_writer*, i32, i32, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @d3dsp_register(i32, i32) #1

declare dso_local i32 @BWRITERVS_VERSION(i32, i32) #1

declare dso_local i32 @d3d9_dstmod(i32) #1

declare dso_local i32 @d3d9_writemask(i32) #1

declare dso_local i32 @put_dword(%struct.bytecode_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
