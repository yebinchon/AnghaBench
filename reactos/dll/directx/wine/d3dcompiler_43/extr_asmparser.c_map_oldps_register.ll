; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_map_oldps_register.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_map_oldps_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_reg = type { i32, i32 }

@BWRITERSPR_INPUT = common dso_local global i32 0, align 4
@T0_VARYING = common dso_local global i32 0, align 4
@T1_VARYING = common dso_local global i32 0, align 4
@T2_VARYING = common dso_local global i32 0, align 4
@T3_VARYING = common dso_local global i32 0, align 4
@T4_VARYING = common dso_local global i32 0, align 4
@T5_VARYING = common dso_local global i32 0, align 4
@T6_VARYING = common dso_local global i32 0, align 4
@T7_VARYING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unexpected TEXTURE register t%u\0A\00", align 1
@BWRITERSPR_TEMP = common dso_local global i32 0, align 4
@T0_REG = common dso_local global i32 0, align 4
@T1_REG = common dso_local global i32 0, align 4
@T2_REG = common dso_local global i32 0, align 4
@T3_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.shader_reg*, i32)* @map_oldps_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_oldps_register(%struct.shader_reg* %0, i32 %1) #0 {
  %3 = alloca %struct.shader_reg, align 4
  %4 = alloca %struct.shader_reg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.shader_reg, align 4
  store %struct.shader_reg* %0, %struct.shader_reg** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %8 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %89 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %10
  %14 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %15 = bitcast %struct.shader_reg* %6 to i8*
  %16 = bitcast %struct.shader_reg* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 8, i1 false)
  %17 = load i32, i32* @BWRITERSPR_INPUT, align 4
  %18 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %20 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %46 [
    i32 0, label %22
    i32 1, label %25
    i32 2, label %28
    i32 3, label %31
    i32 4, label %34
    i32 5, label %37
    i32 6, label %40
    i32 7, label %43
  ]

22:                                               ; preds = %13
  %23 = load i32, i32* @T0_VARYING, align 4
  %24 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  br label %54

25:                                               ; preds = %13
  %26 = load i32, i32* @T1_VARYING, align 4
  %27 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  br label %54

28:                                               ; preds = %13
  %29 = load i32, i32* @T2_VARYING, align 4
  %30 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  br label %54

31:                                               ; preds = %13
  %32 = load i32, i32* @T3_VARYING, align 4
  %33 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  br label %54

34:                                               ; preds = %13
  %35 = load i32, i32* @T4_VARYING, align 4
  %36 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  br label %54

37:                                               ; preds = %13
  %38 = load i32, i32* @T5_VARYING, align 4
  %39 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  br label %54

40:                                               ; preds = %13
  %41 = load i32, i32* @T6_VARYING, align 4
  %42 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  br label %54

43:                                               ; preds = %13
  %44 = load i32, i32* @T7_VARYING, align 4
  %45 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  br label %54

46:                                               ; preds = %13
  %47 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %48 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %52 = bitcast %struct.shader_reg* %3 to i8*
  %53 = bitcast %struct.shader_reg* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 8, i1 false)
  br label %93

54:                                               ; preds = %43, %40, %37, %34, %31, %28, %25, %22
  %55 = bitcast %struct.shader_reg* %3 to i8*
  %56 = bitcast %struct.shader_reg* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 8, i1 false)
  br label %93

57:                                               ; preds = %10
  %58 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %59 = bitcast %struct.shader_reg* %6 to i8*
  %60 = bitcast %struct.shader_reg* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 8, i1 false)
  %61 = load i32, i32* @BWRITERSPR_TEMP, align 4
  %62 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %64 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %78 [
    i32 0, label %66
    i32 1, label %69
    i32 2, label %72
    i32 3, label %75
  ]

66:                                               ; preds = %57
  %67 = load i32, i32* @T0_REG, align 4
  %68 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  br label %86

69:                                               ; preds = %57
  %70 = load i32, i32* @T1_REG, align 4
  %71 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  br label %86

72:                                               ; preds = %57
  %73 = load i32, i32* @T2_REG, align 4
  %74 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  br label %86

75:                                               ; preds = %57
  %76 = load i32, i32* @T3_REG, align 4
  %77 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %6, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  br label %86

78:                                               ; preds = %57
  %79 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %80 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %84 = bitcast %struct.shader_reg* %3 to i8*
  %85 = bitcast %struct.shader_reg* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 8, i1 false)
  br label %93

86:                                               ; preds = %75, %72, %69, %66
  %87 = bitcast %struct.shader_reg* %3 to i8*
  %88 = bitcast %struct.shader_reg* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 8, i1 false)
  br label %93

89:                                               ; preds = %2
  %90 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %91 = bitcast %struct.shader_reg* %3 to i8*
  %92 = bitcast %struct.shader_reg* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 8, i1 false)
  br label %93

93:                                               ; preds = %89, %86, %78, %54, %46
  %94 = bitcast %struct.shader_reg* %3 to i64*
  %95 = load i64, i64* %94, align 4
  ret i64 %95
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
