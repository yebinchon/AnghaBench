; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_vs_1_x_srcreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_vs_1_x_srcreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i8* }
%struct.shader_reg = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bytecode_buffer = type { i32 }

@BWRITERSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unexpected register type %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Relative addressing in vs_1_x is only allowed with a0.x\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@D3DVS_ADDRMODE_RELATIVE = common dso_local global i32 0, align 4
@D3DVS_ADDRESSMODE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Invalid register type for 1.x vshader\0A\00", align 1
@D3DVS_SWIZZLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*)* @vs_1_x_srcreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vs_1_x_srcreg(%struct.bc_writer* %0, %struct.shader_reg* %1, %struct.bytecode_buffer* %2) #0 {
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.shader_reg*, align 8
  %6 = alloca %struct.bytecode_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.shader_reg* %1, %struct.shader_reg** %5, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %6, align 8
  store i32 -2147483648, i32* %7, align 4
  %10 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %11 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %89 [
    i32 134, label %13
    i32 133, label %36
    i32 137, label %36
    i32 135, label %41
    i32 132, label %41
    i32 136, label %41
    i32 138, label %41
  ]

13:                                               ; preds = %3
  %14 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %15 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %26 [
    i32 130, label %18
    i32 129, label %20
    i32 128, label %22
    i32 131, label %24
  ]

18:                                               ; preds = %13
  %19 = load i32, i32* @BWRITERSP_WRITEMASK_0, align 4
  store i32 %19, i32* %9, align 4
  br label %27

20:                                               ; preds = %13
  %21 = load i32, i32* @BWRITERSP_WRITEMASK_1, align 4
  store i32 %21, i32* %9, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load i32, i32* @BWRITERSP_WRITEMASK_2, align 4
  store i32 %23, i32* %9, align 4
  br label %27

24:                                               ; preds = %13
  %25 = load i32, i32* @BWRITERSP_WRITEMASK_3, align 4
  store i32 %25, i32* %9, align 4
  br label %27

26:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %24, %22, %20, %18
  %28 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %29 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %30 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @map_vs_output(%struct.bc_writer* %28, i32 %31, i32 %32, i32* %8)
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %94

36:                                               ; preds = %3, %3
  %37 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %38 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %3, %3, %3, %3, %36
  %42 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %43 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %46 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @d3dsp_register(i32 %44, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %52 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %88

55:                                               ; preds = %41
  %56 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %57 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 138
  br i1 %61, label %77, label %62

62:                                               ; preds = %55
  %63 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %64 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %63, i32 0, i32 3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %62
  %70 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %71 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 130
  br i1 %76, label %77, label %82

77:                                               ; preds = %69, %62, %55
  %78 = call i32 @WARN(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i8*, i8** @E_INVALIDARG, align 8
  %80 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %81 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %113

82:                                               ; preds = %69
  %83 = load i32, i32* @D3DVS_ADDRMODE_RELATIVE, align 4
  %84 = load i32, i32* @D3DVS_ADDRESSMODE_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %82, %41
  br label %94

89:                                               ; preds = %3
  %90 = call i32 @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i8*, i8** @E_INVALIDARG, align 8
  %92 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %93 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %113

94:                                               ; preds = %88, %27
  %95 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %96 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @d3d9_swizzle(i32 %98)
  %100 = load i32, i32* @D3DVS_SWIZZLE_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %105 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @d3d9_srcmod(i32 %106)
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @put_dword(%struct.bytecode_buffer* %110, i32 %111)
  br label %113

113:                                              ; preds = %94, %89, %77
  ret void
}

declare dso_local i32 @map_vs_output(%struct.bc_writer*, i32, i32, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @d3dsp_register(i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @d3d9_swizzle(i32) #1

declare dso_local i32 @d3d9_srcmod(i32) #1

declare dso_local i32 @put_dword(%struct.bytecode_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
