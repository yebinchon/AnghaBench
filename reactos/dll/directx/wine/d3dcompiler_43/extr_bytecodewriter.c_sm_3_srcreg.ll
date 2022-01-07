; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_sm_3_srcreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_sm_3_srcreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i64, i8* }
%struct.shader_reg = type { i64, i64, %struct.shader_reg*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bytecode_buffer = type { i32 }

@D3DVS_SWIZZLE_MASK = common dso_local global i32 0, align 4
@BWRITERSPR_CONST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"c%u[...] is unsupported in ps_3_0\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@BWRITERSPR_ADDR = common dso_local global i64 0, align 8
@BWRITERSPR_LOOP = common dso_local global i64 0, align 8
@D3DVS_ADDRMODE_RELATIVE = common dso_local global i32 0, align 4
@D3DVS_ADDRESSMODE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unsupported relative addressing register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*)* @sm_3_srcreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm_3_srcreg(%struct.bc_writer* %0, %struct.shader_reg* %1, %struct.bytecode_buffer* %2) #0 {
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
  %10 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @d3d9_register(i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %15 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @d3dsp_register(i32 %13, i64 %16)
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %21 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @d3d9_swizzle(i32 %23)
  %25 = load i32, i32* @D3DVS_SWIZZLE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %30 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @d3d9_srcmod(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %36 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %35, i32 0, i32 2
  %37 = load %struct.shader_reg*, %struct.shader_reg** %36, align 8
  %38 = icmp ne %struct.shader_reg* %37, null
  br i1 %38, label %39, label %100

39:                                               ; preds = %3
  %40 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %41 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BWRITERSPR_CONST, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %47 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @BWRITERPS_VERSION(i32 3, i32 0)
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %53 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i8*, i8** @E_INVALIDARG, align 8
  %57 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %58 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %114

59:                                               ; preds = %45, %39
  %60 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %61 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %60, i32 0, i32 2
  %62 = load %struct.shader_reg*, %struct.shader_reg** %61, align 8
  %63 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BWRITERSPR_ADDR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %69 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @BWRITERVS_VERSION(i32 3, i32 0)
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %67, %59
  %74 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %75 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %74, i32 0, i32 2
  %76 = load %struct.shader_reg*, %struct.shader_reg** %75, align 8
  %77 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BWRITERSPR_LOOP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %73, %67
  %82 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %83 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %82, i32 0, i32 2
  %84 = load %struct.shader_reg*, %struct.shader_reg** %83, align 8
  %85 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @D3DVS_ADDRMODE_RELATIVE, align 4
  %90 = load i32, i32* @D3DVS_ADDRESSMODE_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %99

94:                                               ; preds = %81, %73
  %95 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i8*, i8** @E_INVALIDARG, align 8
  %97 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %98 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  br label %114

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %3
  %101 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @put_dword(%struct.bytecode_buffer* %101, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @D3DVS_ADDRMODE_RELATIVE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %110 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %111 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %110, i32 0, i32 2
  %112 = load %struct.shader_reg*, %struct.shader_reg** %111, align 8
  %113 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  call void @sm_3_srcreg(%struct.bc_writer* %109, %struct.shader_reg* %112, %struct.bytecode_buffer* %113)
  br label %114

114:                                              ; preds = %51, %94, %108, %100
  ret void
}

declare dso_local i32 @d3d9_register(i64) #1

declare dso_local i32 @d3dsp_register(i32, i64) #1

declare dso_local i32 @d3d9_swizzle(i32) #1

declare dso_local i32 @d3d9_srcmod(i32) #1

declare dso_local i64 @BWRITERPS_VERSION(i32, i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i64 @BWRITERVS_VERSION(i32, i32) #1

declare dso_local i32 @put_dword(%struct.bytecode_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
