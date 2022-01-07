; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_map_vs_output.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_map_vs_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i64, i64, i64, i64, i64, i64*, i64*, i32 }

@TRUE = common dso_local global i64 0, align 8
@D3DSPR_RASTOUT = common dso_local global i32 0, align 4
@D3DSRO_POSITION = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@D3DSRO_FOG = common dso_local global i64 0, align 8
@D3DSP_WRITEMASK_ALL = common dso_local global i64 0, align 8
@D3DSRO_POINT_SIZE = common dso_local global i64 0, align 8
@D3DSPR_ATTROUT = common dso_local global i32 0, align 4
@D3DSPR_TEXCRDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Undeclared varying %u\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bc_writer*, i64, i64, i64*)* @map_vs_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_vs_output(%struct.bc_writer* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.bc_writer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.bc_writer* %0, %struct.bc_writer** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i64, i64* @TRUE, align 8
  %12 = load i64*, i64** %9, align 8
  store i64 %11, i64* %12, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %15 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @D3DSPR_RASTOUT, align 4
  %20 = load i64, i64* @D3DSRO_POSITION, align 8
  %21 = call i64 @d3dsp_register(i32 %19, i64 %20)
  store i64 %21, i64* %5, align 8
  br label %110

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %25 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %31 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i64, i64* @FALSE, align 8
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* @D3DSPR_RASTOUT, align 4
  %38 = load i64, i64* @D3DSRO_FOG, align 8
  %39 = call i64 @d3dsp_register(i32 %37, i64 %38)
  %40 = load i64, i64* @D3DSP_WRITEMASK_ALL, align 8
  %41 = or i64 %39, %40
  store i64 %41, i64* %5, align 8
  br label %110

42:                                               ; preds = %28, %22
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %45 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %51 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i64, i64* @FALSE, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* @D3DSPR_RASTOUT, align 4
  %58 = load i64, i64* @D3DSRO_POINT_SIZE, align 8
  %59 = call i64 @d3dsp_register(i32 %57, i64 %58)
  %60 = load i64, i64* @D3DSP_WRITEMASK_ALL, align 8
  %61 = or i64 %59, %60
  store i64 %61, i64* %5, align 8
  br label %110

62:                                               ; preds = %48, %42
  store i64 0, i64* %10, align 8
  br label %63

63:                                               ; preds = %80, %62
  %64 = load i64, i64* %10, align 8
  %65 = icmp slt i64 %64, 2
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %69 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %68, i32 0, i32 5
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %67, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @D3DSPR_ATTROUT, align 4
  %77 = load i64, i64* %10, align 8
  %78 = call i64 @d3dsp_register(i32 %76, i64 %77)
  store i64 %78, i64* %5, align 8
  br label %110

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %10, align 8
  br label %63

83:                                               ; preds = %63
  store i64 0, i64* %10, align 8
  br label %84

84:                                               ; preds = %101, %83
  %85 = load i64, i64* %10, align 8
  %86 = icmp slt i64 %85, 8
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %90 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %89, i32 0, i32 6
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %88, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = load i32, i32* @D3DSPR_TEXCRDOUT, align 4
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @d3dsp_register(i32 %97, i64 %98)
  store i64 %99, i64* %5, align 8
  br label %110

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %10, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %10, align 8
  br label %84

104:                                              ; preds = %84
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %105)
  %107 = load i32, i32* @E_INVALIDARG, align 4
  %108 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %109 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 8
  store i64 -1, i64* %5, align 8
  br label %110

110:                                              ; preds = %104, %96, %75, %54, %34, %18
  %111 = load i64, i64* %5, align 8
  ret i64 %111
}

declare dso_local i64 @d3dsp_register(i32, i64) #1

declare dso_local i32 @WARN(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
