; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_gen_oldps_input.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_gen_oldps_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwriter_shader = type { i32 }

@BWRITERDECLUSAGE_TEXCOORD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@T7_VARYING = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@T6_VARYING = common dso_local global i32 0, align 4
@T5_VARYING = common dso_local global i32 0, align 4
@T4_VARYING = common dso_local global i32 0, align 4
@T3_VARYING = common dso_local global i32 0, align 4
@T2_VARYING = common dso_local global i32 0, align 4
@T1_VARYING = common dso_local global i32 0, align 4
@T0_VARYING = common dso_local global i32 0, align 4
@BWRITERDECLUSAGE_COLOR = common dso_local global i32 0, align 4
@C0_VARYING = common dso_local global i32 0, align 4
@C1_VARYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwriter_shader*, i32)* @gen_oldps_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_oldps_input(%struct.bwriter_shader* %0, i32 %1) #0 {
  %3 = alloca %struct.bwriter_shader*, align 8
  %4 = alloca i32, align 4
  store %struct.bwriter_shader* %0, %struct.bwriter_shader** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %70 [
    i32 8, label %6
    i32 7, label %14
    i32 6, label %22
    i32 5, label %30
    i32 4, label %38
    i32 3, label %46
    i32 2, label %54
    i32 1, label %62
  ]

6:                                                ; preds = %2
  %7 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %8 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %9 = load i32, i32* @FALSE, align 4
  %10 = load i32, i32* @T7_VARYING, align 4
  %11 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @record_declaration(%struct.bwriter_shader* %7, i32 %8, i32 7, i32 0, i32 %9, i32 %10, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %2, %6
  %15 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %16 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32, i32* @T6_VARYING, align 4
  %19 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @record_declaration(%struct.bwriter_shader* %15, i32 %16, i32 6, i32 0, i32 %17, i32 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %2, %14
  %23 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %24 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32, i32* @T5_VARYING, align 4
  %27 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @record_declaration(%struct.bwriter_shader* %23, i32 %24, i32 5, i32 0, i32 %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %2, %22
  %31 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %32 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i32, i32* @T4_VARYING, align 4
  %35 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @record_declaration(%struct.bwriter_shader* %31, i32 %32, i32 4, i32 0, i32 %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %2, %30
  %39 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %40 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32, i32* @T3_VARYING, align 4
  %43 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @record_declaration(%struct.bwriter_shader* %39, i32 %40, i32 3, i32 0, i32 %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %2, %38
  %47 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %48 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = load i32, i32* @T2_VARYING, align 4
  %51 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @record_declaration(%struct.bwriter_shader* %47, i32 %48, i32 2, i32 0, i32 %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %2, %46
  %55 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %56 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32, i32* @T1_VARYING, align 4
  %59 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @record_declaration(%struct.bwriter_shader* %55, i32 %56, i32 1, i32 0, i32 %57, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %2, %54
  %63 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %64 = load i32, i32* @BWRITERDECLUSAGE_TEXCOORD, align 4
  %65 = load i32, i32* @FALSE, align 4
  %66 = load i32, i32* @T0_VARYING, align 4
  %67 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @record_declaration(%struct.bwriter_shader* %63, i32 %64, i32 0, i32 0, i32 %65, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %2
  %71 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %72 = load i32, i32* @BWRITERDECLUSAGE_COLOR, align 4
  %73 = load i32, i32* @FALSE, align 4
  %74 = load i32, i32* @C0_VARYING, align 4
  %75 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %76 = load i32, i32* @TRUE, align 4
  %77 = call i32 @record_declaration(%struct.bwriter_shader* %71, i32 %72, i32 0, i32 0, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %79 = load i32, i32* @BWRITERDECLUSAGE_COLOR, align 4
  %80 = load i32, i32* @FALSE, align 4
  %81 = load i32, i32* @C1_VARYING, align 4
  %82 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i32 @record_declaration(%struct.bwriter_shader* %78, i32 %79, i32 1, i32 0, i32 %80, i32 %81, i32 %82, i32 %83)
  ret void
}

declare dso_local i32 @record_declaration(%struct.bwriter_shader*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
