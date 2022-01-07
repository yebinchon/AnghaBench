; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_map_oldvs_register.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_map_oldvs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_reg = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BWRITERSPR_OUTPUT = common dso_local global i8* null, align 8
@OPOS_REG = common dso_local global i32 0, align 4
@OFOG_REG = common dso_local global i32 0, align 4
@OFOG_WRITEMASK = common dso_local global i32 0, align 4
@OPTS_REG = common dso_local global i32 0, align 4
@OPTS_WRITEMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unhandled RASTOUT register %u\0A\00", align 1
@OT0_REG = common dso_local global i32 0, align 4
@OT1_REG = common dso_local global i32 0, align 4
@OT2_REG = common dso_local global i32 0, align 4
@OT3_REG = common dso_local global i32 0, align 4
@OT4_REG = common dso_local global i32 0, align 4
@OT5_REG = common dso_local global i32 0, align 4
@OT6_REG = common dso_local global i32 0, align 4
@OT7_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unhandled TEXCRDOUT regnum %u\0A\00", align 1
@OD0_REG = common dso_local global i32 0, align 4
@OD1_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unhandled ATTROUT regnum %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (%struct.shader_reg*)* @map_oldvs_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @map_oldvs_register(%struct.shader_reg* %0) #0 {
  %2 = alloca %struct.shader_reg, align 4
  %3 = alloca %struct.shader_reg*, align 8
  %4 = alloca %struct.shader_reg, align 4
  %5 = alloca { i64, i32 }, align 8
  store %struct.shader_reg* %0, %struct.shader_reg** %3, align 8
  %6 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %7 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %117 [
    i32 132, label %9
    i32 131, label %45
    i32 133, label %90
  ]

9:                                                ; preds = %1
  %10 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %11 = bitcast %struct.shader_reg* %4 to i8*
  %12 = bitcast %struct.shader_reg* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  %13 = load i8*, i8** @BWRITERSPR_OUTPUT, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %17 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %34 [
    i32 128, label %19
    i32 130, label %22
    i32 129, label %28
  ]

19:                                               ; preds = %9
  %20 = load i32, i32* @OPOS_REG, align 4
  %21 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  br label %42

22:                                               ; preds = %9
  %23 = load i32, i32* @OFOG_REG, align 4
  %24 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @OFOG_WRITEMASK, align 4
  %26 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %42

28:                                               ; preds = %9
  %29 = load i32, i32* @OPTS_REG, align 4
  %30 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @OPTS_WRITEMASK, align 4
  %32 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %42

34:                                               ; preds = %9
  %35 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %36 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %40 = bitcast %struct.shader_reg* %2 to i8*
  %41 = bitcast %struct.shader_reg* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 12, i1 false)
  br label %121

42:                                               ; preds = %28, %22, %19
  %43 = bitcast %struct.shader_reg* %2 to i8*
  %44 = bitcast %struct.shader_reg* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 12, i1 false)
  br label %121

45:                                               ; preds = %1
  %46 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %47 = bitcast %struct.shader_reg* %4 to i8*
  %48 = bitcast %struct.shader_reg* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 12, i1 false)
  %49 = load i8*, i8** @BWRITERSPR_OUTPUT, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %53 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %79 [
    i32 0, label %55
    i32 1, label %58
    i32 2, label %61
    i32 3, label %64
    i32 4, label %67
    i32 5, label %70
    i32 6, label %73
    i32 7, label %76
  ]

55:                                               ; preds = %45
  %56 = load i32, i32* @OT0_REG, align 4
  %57 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  br label %87

58:                                               ; preds = %45
  %59 = load i32, i32* @OT1_REG, align 4
  %60 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  br label %87

61:                                               ; preds = %45
  %62 = load i32, i32* @OT2_REG, align 4
  %63 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  br label %87

64:                                               ; preds = %45
  %65 = load i32, i32* @OT3_REG, align 4
  %66 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  br label %87

67:                                               ; preds = %45
  %68 = load i32, i32* @OT4_REG, align 4
  %69 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  br label %87

70:                                               ; preds = %45
  %71 = load i32, i32* @OT5_REG, align 4
  %72 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  br label %87

73:                                               ; preds = %45
  %74 = load i32, i32* @OT6_REG, align 4
  %75 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  br label %87

76:                                               ; preds = %45
  %77 = load i32, i32* @OT7_REG, align 4
  %78 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  br label %87

79:                                               ; preds = %45
  %80 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %81 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %85 = bitcast %struct.shader_reg* %2 to i8*
  %86 = bitcast %struct.shader_reg* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 12, i1 false)
  br label %121

87:                                               ; preds = %76, %73, %70, %67, %64, %61, %58, %55
  %88 = bitcast %struct.shader_reg* %2 to i8*
  %89 = bitcast %struct.shader_reg* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 12, i1 false)
  br label %121

90:                                               ; preds = %1
  %91 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %92 = bitcast %struct.shader_reg* %4 to i8*
  %93 = bitcast %struct.shader_reg* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 12, i1 false)
  %94 = load i8*, i8** @BWRITERSPR_OUTPUT, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %98 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %106 [
    i32 0, label %100
    i32 1, label %103
  ]

100:                                              ; preds = %90
  %101 = load i32, i32* @OD0_REG, align 4
  %102 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  br label %114

103:                                              ; preds = %90
  %104 = load i32, i32* @OD1_REG, align 4
  %105 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  br label %114

106:                                              ; preds = %90
  %107 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %108 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %112 = bitcast %struct.shader_reg* %2 to i8*
  %113 = bitcast %struct.shader_reg* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 12, i1 false)
  br label %121

114:                                              ; preds = %103, %100
  %115 = bitcast %struct.shader_reg* %2 to i8*
  %116 = bitcast %struct.shader_reg* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 12, i1 false)
  br label %121

117:                                              ; preds = %1
  %118 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %119 = bitcast %struct.shader_reg* %2 to i8*
  %120 = bitcast %struct.shader_reg* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 12, i1 false)
  br label %121

121:                                              ; preds = %117, %114, %106, %87, %79, %42, %34
  %122 = bitcast { i64, i32 }* %5 to i8*
  %123 = bitcast %struct.shader_reg* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 4 %123, i64 12, i1 false)
  %124 = load { i64, i32 }, { i64, i32 }* %5, align 8
  ret { i64, i32 } %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FIXME(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
