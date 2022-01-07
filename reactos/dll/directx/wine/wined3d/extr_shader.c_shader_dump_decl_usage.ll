; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_decl_usage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_decl_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_semantic = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.wined3d_shader_version = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"dcl\00", align 1
@WINED3DSPR_SAMPLER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"_2d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"_3d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"_cube\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"_unknown_resource_type(%#x)\00", align 1
@WINED3DSPR_RESOURCE = common dso_local global i64 0, align 8
@WINED3DSPR_UAV = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"_resource_\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"_uav_\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"texture1d\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"texture2d\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"texture2dms\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"texture3d\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"texturecube\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"texture1darray\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"texture2darray\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"texture2dmsarray\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"texturecubearray\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c" (float)\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c" (int)\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c" (uint)\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c" (unorm)\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" (snorm)\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c" (unknown)\00", align 1
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"position%u\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"blend\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"normal%u\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"psize\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"specular%u\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"texture%u\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"tangent\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"binormal\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"tessfactor\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"positionT%u\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"fog\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"<unknown_semantic(%#x)>\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"Unrecognised semantic usage %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_shader_semantic*, i32, %struct.wined3d_shader_version*)* @shader_dump_decl_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_dump_decl_usage(%struct.wined3d_string_buffer* %0, %struct.wined3d_shader_semantic* %1, i32 %2, %struct.wined3d_shader_version* %3) #0 {
  %5 = alloca %struct.wined3d_string_buffer*, align 8
  %6 = alloca %struct.wined3d_shader_semantic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_version*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %5, align 8
  store %struct.wined3d_shader_semantic* %1, %struct.wined3d_shader_semantic** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_shader_version* %3, %struct.wined3d_shader_version** %8, align 8
  %9 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %10 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WINED3DSPR_SAMPLER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %4
  %19 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %31 [
    i32 134, label %22
    i32 130, label %25
    i32 129, label %28
  ]

22:                                               ; preds = %18
  %23 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %24 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %37

25:                                               ; preds = %18
  %26 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %27 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %37

28:                                               ; preds = %18
  %29 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %30 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %37

31:                                               ; preds = %18
  %32 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %33 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %28, %25, %22
  br label %238

38:                                               ; preds = %4
  %39 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WINED3DSPR_RESOURCE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @WINED3DSPR_UAV, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %140

54:                                               ; preds = %46, %38
  %55 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WINED3DSPR_RESOURCE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %64 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %68

65:                                               ; preds = %54
  %66 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %67 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %70 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %102 [
    i32 137, label %72
    i32 136, label %75
    i32 134, label %78
    i32 132, label %81
    i32 130, label %84
    i32 129, label %87
    i32 135, label %90
    i32 133, label %93
    i32 131, label %96
    i32 128, label %99
  ]

72:                                               ; preds = %68
  %73 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %74 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %105

75:                                               ; preds = %68
  %76 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %77 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %105

78:                                               ; preds = %68
  %79 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %80 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %105

81:                                               ; preds = %68
  %82 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %83 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %105

84:                                               ; preds = %68
  %85 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %86 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %105

87:                                               ; preds = %68
  %88 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %89 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %105

90:                                               ; preds = %68
  %91 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %92 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %105

93:                                               ; preds = %68
  %94 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %95 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %105

96:                                               ; preds = %68
  %97 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %98 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %105

99:                                               ; preds = %68
  %100 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %101 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  br label %105

102:                                              ; preds = %68
  %103 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %104 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72
  %106 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %107 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @WINED3DSPR_UAV, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @shader_dump_uav_flags(%struct.wined3d_string_buffer* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %105
  %118 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %119 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %136 [
    i32 156, label %121
    i32 155, label %124
    i32 153, label %127
    i32 152, label %130
    i32 154, label %133
  ]

121:                                              ; preds = %117
  %122 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %123 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %139

124:                                              ; preds = %117
  %125 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %126 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  br label %139

127:                                              ; preds = %117
  %128 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %129 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  br label %139

130:                                              ; preds = %117
  %131 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %132 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %139

133:                                              ; preds = %117
  %134 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %135 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  br label %139

136:                                              ; preds = %117
  %137 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %138 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %133, %130, %127, %124, %121
  br label %237

140:                                              ; preds = %46
  %141 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %8, align 8
  %142 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %143, 3
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %8, align 8
  %147 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %238

152:                                              ; preds = %145, %140
  %153 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %154 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152
  %156 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %157 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  switch i32 %158, label %226 [
    i32 144, label %159
    i32 150, label %165
    i32 149, label %168
    i32 145, label %171
    i32 142, label %177
    i32 148, label %180
    i32 138, label %196
    i32 140, label %202
    i32 151, label %205
    i32 139, label %208
    i32 143, label %211
    i32 146, label %217
    i32 147, label %220
    i32 141, label %223
  ]

159:                                              ; preds = %155
  %160 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %161 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %162 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 %163)
  br label %236

165:                                              ; preds = %155
  %166 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %167 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  br label %236

168:                                              ; preds = %155
  %169 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %170 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %236

171:                                              ; preds = %155
  %172 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %173 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %174 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32 %175)
  br label %236

177:                                              ; preds = %155
  %178 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %179 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0))
  br label %236

180:                                              ; preds = %155
  %181 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %182 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %187 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  br label %195

188:                                              ; preds = %180
  %189 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %190 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %191 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %192, 1
  %194 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %189, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %188, %185
  br label %236

196:                                              ; preds = %155
  %197 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %198 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %199 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i32 %200)
  br label %236

202:                                              ; preds = %155
  %203 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %204 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %203, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0))
  br label %236

205:                                              ; preds = %155
  %206 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %207 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0))
  br label %236

208:                                              ; preds = %155
  %209 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %210 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0))
  br label %236

211:                                              ; preds = %155
  %212 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %213 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %214 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %212, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 %215)
  br label %236

217:                                              ; preds = %155
  %218 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %219 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0))
  br label %236

220:                                              ; preds = %155
  %221 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %222 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %221, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0))
  br label %236

223:                                              ; preds = %155
  %224 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %225 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  br label %236

226:                                              ; preds = %155
  %227 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %228 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %229 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %227, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0), i32 %230)
  %232 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %6, align 8
  %233 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %226, %223, %220, %217, %211, %208, %205, %202, %196, %195, %177, %171, %168, %165, %159
  br label %237

237:                                              ; preds = %236, %139
  br label %238

238:                                              ; preds = %151, %237, %37
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_dump_uav_flags(%struct.wined3d_string_buffer*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
