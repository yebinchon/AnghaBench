; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_gen_oldvs_output.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_gen_oldvs_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwriter_shader = type { i32 }

@BWRITERDECLUSAGE_POSITION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OPOS_REG = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@BWRITERDECLUSAGE_TEXCOORD = common dso_local global i32 0, align 4
@OT0_REG = common dso_local global i32 0, align 4
@OT1_REG = common dso_local global i32 0, align 4
@OT2_REG = common dso_local global i32 0, align 4
@OT3_REG = common dso_local global i32 0, align 4
@OT4_REG = common dso_local global i32 0, align 4
@OT5_REG = common dso_local global i32 0, align 4
@OT6_REG = common dso_local global i32 0, align 4
@OT7_REG = common dso_local global i32 0, align 4
@BWRITERDECLUSAGE_FOG = common dso_local global i32 0, align 4
@OFOG_REG = common dso_local global i32 0, align 4
@OFOG_WRITEMASK = common dso_local global i32 0, align 4
@BWRITERDECLUSAGE_PSIZE = common dso_local global i32 0, align 4
@OPTS_REG = common dso_local global i32 0, align 4
@OPTS_WRITEMASK = common dso_local global i32 0, align 4
@BWRITERDECLUSAGE_COLOR = common dso_local global i32 0, align 4
@OD0_REG = common dso_local global i32 0, align 4
@OD1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwriter_shader*)* @gen_oldvs_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_oldvs_output(%struct.bwriter_shader* %0) #0 {
  %2 = alloca %struct.bwriter_shader*, align 8
  store %struct.bwriter_shader* %0, %struct.bwriter_shader** %2, align 8
  %3 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %4 = load i32, i32* @BWRITERDECLUSAGE_POSITION, align 4
  %5 = load i32, i32* @TRUE, align 4
  %6 = load i32, i32* @OPOS_REG, align 4
  %7 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32 @record_declaration(%struct.bwriter_shader* %3, i32 %4, i32 0, i32 0, i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %11 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %12 = load i32, i32* @TRUE, align 4
  %13 = load i32, i32* @OT0_REG, align 4
  %14 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @record_declaration(%struct.bwriter_shader* %10, i32 %11, i32 0, i32 0, i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %18 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = load i32, i32* @OT1_REG, align 4
  %21 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32 @record_declaration(%struct.bwriter_shader* %17, i32 %18, i32 1, i32 0, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %25 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i32, i32* @OT2_REG, align 4
  %28 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @record_declaration(%struct.bwriter_shader* %24, i32 %25, i32 2, i32 0, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %32 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i32, i32* @OT3_REG, align 4
  %35 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @record_declaration(%struct.bwriter_shader* %31, i32 %32, i32 3, i32 0, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %39 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32, i32* @OT4_REG, align 4
  %42 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @record_declaration(%struct.bwriter_shader* %38, i32 %39, i32 4, i32 0, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %46 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %47 = load i32, i32* @TRUE, align 4
  %48 = load i32, i32* @OT5_REG, align 4
  %49 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @record_declaration(%struct.bwriter_shader* %45, i32 %46, i32 5, i32 0, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %53 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %54 = load i32, i32* @TRUE, align 4
  %55 = load i32, i32* @OT6_REG, align 4
  %56 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i32 @record_declaration(%struct.bwriter_shader* %52, i32 %53, i32 6, i32 0, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %60 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = load i32, i32* @OT7_REG, align 4
  %63 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %64 = load i32, i32* @TRUE, align 4
  %65 = call i32 @record_declaration(%struct.bwriter_shader* %59, i32 %60, i32 7, i32 0, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %67 = load i32, i32* @BWRITERDECLUSAGE_FOG, align 4
  %68 = load i32, i32* @TRUE, align 4
  %69 = load i32, i32* @OFOG_REG, align 4
  %70 = load i32, i32* @OFOG_WRITEMASK, align 4
  %71 = load i32, i32* @TRUE, align 4
  %72 = call i32 @record_declaration(%struct.bwriter_shader* %66, i32 %67, i32 0, i32 0, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %74 = load i32, i32* @BWRITERDECLUSAGE_PSIZE, align 4
  %75 = load i32, i32* @TRUE, align 4
  %76 = load i32, i32* @OPTS_REG, align 4
  %77 = load i32, i32* @OPTS_WRITEMASK, align 4
  %78 = load i32, i32* @TRUE, align 4
  %79 = call i32 @record_declaration(%struct.bwriter_shader* %73, i32 %74, i32 0, i32 0, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %81 = load i32, i32* @BWRITERDECLUSAGE_COLOR, align 4
  %82 = load i32, i32* @TRUE, align 4
  %83 = load i32, i32* @OD0_REG, align 4
  %84 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i32 @record_declaration(%struct.bwriter_shader* %80, i32 %81, i32 0, i32 0, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.bwriter_shader*, %struct.bwriter_shader** %2, align 8
  %88 = load i32, i32* @BWRITERDECLUSAGE_COLOR, align 4
  %89 = load i32, i32* @TRUE, align 4
  %90 = load i32, i32* @OD1_REG, align 4
  %91 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @record_declaration(%struct.bwriter_shader* %87, i32 %88, i32 1, i32 0, i32 %89, i32 %90, i32 %91, i32 %92)
  ret void
}

declare dso_local i32 @record_declaration(%struct.bwriter_shader*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
