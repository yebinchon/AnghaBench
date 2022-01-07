; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_vs_2_srcreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_vs_2_srcreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i8*, i32 }
%struct.shader_reg = type { i32, %struct.shader_reg*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bytecode_buffer = type { i32 }

@BWRITERSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unexpected register type %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Only regnum 0 is supported for the loop index register in vs_2_0\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@D3DSPR_LOOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Predicate register is allowed only in vs_2_x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Only predicate register 0 is supported\0A\00", align 1
@D3DSPR_PREDICATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Invalid register type for 2.0 vshader\0A\00", align 1
@D3DVS_SWIZZLE_MASK = common dso_local global i32 0, align 4
@D3DVS_ADDRMODE_RELATIVE = common dso_local global i32 0, align 4
@D3DVS_ADDRESSMODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*)* @vs_2_srcreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vs_2_srcreg(%struct.bc_writer* %0, %struct.shader_reg* %1, %struct.bytecode_buffer* %2) #0 {
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.shader_reg*, align 8
  %6 = alloca %struct.bytecode_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.shader_reg* %1, %struct.shader_reg** %5, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %6, align 8
  store i32 -2147483648, i32* %7, align 4
  %11 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %12 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %95 [
    i32 135, label %14
    i32 133, label %37
    i32 142, label %37
    i32 138, label %42
    i32 132, label %42
    i32 141, label %42
    i32 143, label %42
    i32 139, label %42
    i32 140, label %42
    i32 137, label %42
    i32 136, label %54
    i32 134, label %69
  ]

14:                                               ; preds = %3
  %15 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %16 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %27 [
    i32 130, label %19
    i32 129, label %21
    i32 128, label %23
    i32 131, label %25
  ]

19:                                               ; preds = %14
  %20 = load i32, i32* @BWRITERSP_WRITEMASK_0, align 4
  store i32 %20, i32* %9, align 4
  br label %28

21:                                               ; preds = %14
  %22 = load i32, i32* @BWRITERSP_WRITEMASK_1, align 4
  store i32 %22, i32* %9, align 4
  br label %28

23:                                               ; preds = %14
  %24 = load i32, i32* @BWRITERSP_WRITEMASK_2, align 4
  store i32 %24, i32* %9, align 4
  br label %28

25:                                               ; preds = %14
  %26 = load i32, i32* @BWRITERSP_WRITEMASK_3, align 4
  store i32 %26, i32* %9, align 4
  br label %28

27:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %25, %23, %21, %19
  %29 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %30 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %31 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @map_vs_output(%struct.bc_writer* %29, i32 %32, i32 %33, i32* %8)
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %100

37:                                               ; preds = %3, %3
  %38 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %39 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %37
  %43 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %44 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @d3d9_register(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %49 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @d3dsp_register(i32 %47, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %100

54:                                               ; preds = %3
  %55 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %56 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = call i32 @WARN(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i8*, i8** @E_INVALIDARG, align 8
  %62 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %63 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %140

64:                                               ; preds = %54
  %65 = load i32, i32* @D3DSPR_LOOP, align 4
  %66 = call i32 @d3dsp_register(i32 %65, i32 0)
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %100

69:                                               ; preds = %3
  %70 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %71 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @BWRITERVS_VERSION(i32 2, i32 1)
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = call i32 @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i8*, i8** @E_INVALIDARG, align 8
  %78 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %79 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %140

80:                                               ; preds = %69
  %81 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %82 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i8*, i8** @E_INVALIDARG, align 8
  %88 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %89 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  br label %140

90:                                               ; preds = %80
  %91 = load i32, i32* @D3DSPR_PREDICATE, align 4
  %92 = call i32 @d3dsp_register(i32 %91, i32 0)
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %100

95:                                               ; preds = %3
  %96 = call i32 @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i8*, i8** @E_INVALIDARG, align 8
  %98 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %99 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %140

100:                                              ; preds = %90, %64, %42, %28
  %101 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %102 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @d3d9_swizzle(i32 %104)
  %106 = load i32, i32* @D3DVS_SWIZZLE_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %111 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @d3d9_srcmod(i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %117 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %116, i32 0, i32 1
  %118 = load %struct.shader_reg*, %struct.shader_reg** %117, align 8
  %119 = icmp ne %struct.shader_reg* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %100
  %121 = load i32, i32* @D3DVS_ADDRMODE_RELATIVE, align 4
  %122 = load i32, i32* @D3DVS_ADDRESSMODE_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %120, %100
  %127 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @put_dword(%struct.bytecode_buffer* %127, i32 %128)
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @D3DVS_ADDRMODE_RELATIVE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %126
  %135 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %136 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %137 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %136, i32 0, i32 1
  %138 = load %struct.shader_reg*, %struct.shader_reg** %137, align 8
  %139 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  call void @vs_2_srcreg(%struct.bc_writer* %135, %struct.shader_reg* %138, %struct.bytecode_buffer* %139)
  br label %140

140:                                              ; preds = %59, %75, %85, %95, %134, %126
  ret void
}

declare dso_local i32 @map_vs_output(%struct.bc_writer*, i32, i32, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @d3d9_register(i32) #1

declare dso_local i32 @d3dsp_register(i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @BWRITERVS_VERSION(i32, i32) #1

declare dso_local i32 @d3d9_swizzle(i32) #1

declare dso_local i32 @d3d9_srcmod(i32) #1

declare dso_local i32 @put_dword(%struct.bytecode_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
