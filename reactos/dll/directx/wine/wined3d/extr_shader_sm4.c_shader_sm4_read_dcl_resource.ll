; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_dcl_resource.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_dcl_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32, i8* }
%struct.wined3d_sm4_data = type { i32 }

@WINED3D_SM4_RESOURCE_TYPE_MASK = common dso_local global i64 0, align 8
@WINED3D_SM4_RESOURCE_TYPE_SHIFT = common dso_local global i64 0, align 8
@resource_type_table = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unhandled resource type %#x.\0A\00", align 1
@WINED3D_SHADER_RESOURCE_NONE = common dso_local global i8* null, align 8
@WINED3D_SM4_OP_DCL_RESOURCE = common dso_local global i64 0, align 8
@WINED3D_DATA_RESOURCE = common dso_local global i32 0, align 4
@WINED3D_DATA_UAV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Components (%#x) have different data types.\0A\00", align 1
@data_type_table = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Unhandled data type %#x.\0A\00", align 1
@WINED3D_DATA_FLOAT = common dso_local global i8* null, align 8
@WINED3D_SM5_UAV_FLAGS_MASK = common dso_local global i64 0, align 8
@WINED3D_SM5_UAV_FLAGS_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, i64, i64, i64*, i32, %struct.wined3d_sm4_data*)* @shader_sm4_read_dcl_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_sm4_read_dcl_resource(%struct.wined3d_shader_instruction* %0, i64 %1, i64 %2, i64* %3, i32 %4, %struct.wined3d_sm4_data* %5) #0 {
  %7 = alloca %struct.wined3d_shader_instruction*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_sm4_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.wined3d_sm4_data* %5, %struct.wined3d_sm4_data** %12, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @WINED3D_SM4_RESOURCE_TYPE_MASK, align 8
  %19 = and i64 %17, %18
  %20 = load i64, i64* @WINED3D_SM4_RESOURCE_TYPE_SHIFT, align 8
  %21 = ashr i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load i32, i32* %13, align 4
  %27 = load i8**, i8*** @resource_type_table, align 8
  %28 = call i32 @ARRAY_SIZE(i8** %27)
  %29 = icmp uge i32 %26, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25, %6
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** @WINED3D_SHADER_RESOURCE_NONE, align 8
  %34 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i8* %33, i8** %37, align 8
  br label %48

38:                                               ; preds = %25
  %39 = load i8**, i8*** @resource_type_table, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i8* %43, i8** %47, align 8
  br label %48

48:                                               ; preds = %38, %30
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @WINED3D_SM4_OP_DCL_RESOURCE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @WINED3D_DATA_RESOURCE, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @WINED3D_DATA_UAV, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %15, align 4
  %58 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %12, align 8
  %59 = load i64*, i64** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %65 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = call i32 @shader_sm4_read_dst_param(%struct.wined3d_sm4_data* %58, i64** %10, i64* %62, i32 %63, i32* %67)
  %69 = load i64*, i64** %10, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %10, align 8
  %71 = load i64, i64* %69, align 8
  store i64 %71, i64* %16, align 8
  %72 = load i64, i64* %16, align 8
  %73 = and i64 %72, 65520
  %74 = load i64, i64* %16, align 8
  %75 = and i64 %74, 15
  %76 = mul nsw i64 %75, 4368
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %56
  %79 = load i64, i64* %16, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %56
  %83 = load i64, i64* %16, align 8
  %84 = and i64 %83, 15
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32, i32* %14, align 4
  %90 = load i8**, i8*** @data_type_table, align 8
  %91 = call i32 @ARRAY_SIZE(i8** %90)
  %92 = icmp uge i32 %89, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %88, %82
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i8*, i8** @WINED3D_DATA_FLOAT, align 8
  %97 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %98 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i8* %96, i8** %100, align 8
  br label %111

101:                                              ; preds = %88
  %102 = load i8**, i8*** @data_type_table, align 8
  %103 = load i32, i32* %14, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %108 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %101, %93
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @WINED3D_DATA_UAV, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @WINED3D_SM5_UAV_FLAGS_MASK, align 8
  %118 = and i64 %116, %117
  %119 = load i64, i64* @WINED3D_SM5_UAV_FLAGS_SHIFT, align 8
  %120 = ashr i64 %118, %119
  %121 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %122 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %115, %111
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @shader_sm4_read_dst_param(%struct.wined3d_sm4_data*, i64**, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
