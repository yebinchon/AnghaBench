; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_register.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_register = type { i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64*, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.wined3d_shader_version = type { i32, i32 }

@shader_dump_register.rastout_reg_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"oPos\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"oFog\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"oPts\00", align 1
@shader_dump_register.misctype_reg_names = internal constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"vPos\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"vFace\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"oC\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"oDepth\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"oDepthGE\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"oDepthLE\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"oD\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"oT\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"aL\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Unhandled misctype register %u.\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"<unhandled misctype %#x>\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"cb\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"icb\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"primID\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"vOutputControlPointID\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"vForkInstanceId\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"vJoinInstanceId\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"vicp\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"vocp\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"vpc\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"vDomainLocation\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"vThreadID\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"vThreadGroupID\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"vThreadIDInGroup\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"vThreadIDInGroupFlattened\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"fb\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"vCoverage\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"oMask\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"vGSInstanceID\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"<unhandled_rtype(%#x)>\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"%.8e\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"<unhandled data type %#x>\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"%.8e, %.8e, %.8e, %.8e\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"%d, %d, %d, %d\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"%u, %u, %u, %u\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"<unhandled immconst_type %#x>\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"%u]\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"[%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_shader_register*, %struct.wined3d_shader_version*)* @shader_dump_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_dump_register(%struct.wined3d_string_buffer* %0, %struct.wined3d_shader_register* %1, %struct.wined3d_shader_version* %2) #0 {
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.wined3d_shader_register*, align 8
  %6 = alloca %struct.wined3d_shader_version*, align 8
  %7 = alloca i64, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store %struct.wined3d_shader_register* %1, %struct.wined3d_shader_register** %5, align 8
  store %struct.wined3d_shader_version* %2, %struct.wined3d_shader_version** %6, align 8
  %8 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %8, i32 0, i32 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %186 [
    i32 141, label %17
    i32 159, label %20
    i32 179, label %23
    i32 178, label %23
    i32 177, label %23
    i32 176, label %23
    i32 138, label %31
    i32 146, label %41
    i32 180, label %47
    i32 171, label %50
    i32 170, label %53
    i32 169, label %56
    i32 181, label %59
    i32 139, label %62
    i32 173, label %74
    i32 175, label %77
    i32 157, label %80
    i32 154, label %83
    i32 143, label %86
    i32 153, label %89
    i32 148, label %105
    i32 162, label %108
    i32 174, label %111
    i32 161, label %114
    i32 147, label %117
    i32 152, label %120
    i32 145, label %123
    i32 135, label %126
    i32 150, label %129
    i32 168, label %132
    i32 158, label %135
    i32 160, label %138
    i32 151, label %141
    i32 149, label %144
    i32 140, label %147
    i32 165, label %150
    i32 136, label %153
    i32 137, label %156
    i32 156, label %159
    i32 155, label %162
    i32 163, label %165
    i32 142, label %168
    i32 167, label %171
    i32 166, label %174
    i32 172, label %177
    i32 144, label %180
    i32 164, label %183
  ]

17:                                               ; preds = %3
  %18 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %19 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %192

20:                                               ; preds = %3
  %21 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %22 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %192

23:                                               ; preds = %3, %3, %3, %3
  %24 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %25 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %26 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @shader_get_float_offset(i32 %28, i64 %29)
  store i64 %30, i64* %7, align 8
  br label %192

31:                                               ; preds = %3
  %32 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %33 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %6, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 116, i32 97
  %40 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %39)
  br label %192

41:                                               ; preds = %3
  %42 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* @shader_dump_register.rastout_reg_names, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %45)
  br label %192

47:                                               ; preds = %3
  %48 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %49 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %192

50:                                               ; preds = %3
  %51 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %52 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %192

53:                                               ; preds = %3
  %54 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %55 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %192

56:                                               ; preds = %3
  %57 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %58 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %192

59:                                               ; preds = %3
  %60 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %61 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %192

62:                                               ; preds = %3
  %63 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %6, align 8
  %64 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %65, 3
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %69 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %73

70:                                               ; preds = %62
  %71 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %72 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %67
  br label %192

74:                                               ; preds = %3
  %75 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %76 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %192

77:                                               ; preds = %3
  %78 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %79 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %192

80:                                               ; preds = %3
  %81 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %82 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %192

83:                                               ; preds = %3
  %84 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %85 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %192

86:                                               ; preds = %3
  %87 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %88 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  br label %192

89:                                               ; preds = %3
  %90 = load i64, i64* %7, align 8
  %91 = icmp ugt i64 %90, 1
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i64 %93)
  %95 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i64 %96)
  br label %104

98:                                               ; preds = %89
  %99 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds [2 x i8*], [2 x i8*]* @shader_dump_register.misctype_reg_names, i64 0, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %98, %92
  br label %192

105:                                              ; preds = %3
  %106 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %107 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %192

108:                                              ; preds = %3
  %109 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %110 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %192

111:                                              ; preds = %3
  %112 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %113 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %192

114:                                              ; preds = %3
  %115 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %116 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  br label %192

117:                                              ; preds = %3
  %118 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %119 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %192

120:                                              ; preds = %3
  %121 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %122 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  br label %192

123:                                              ; preds = %3
  %124 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %125 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  br label %192

126:                                              ; preds = %3
  %127 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %128 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  br label %192

129:                                              ; preds = %3
  %130 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %131 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  br label %192

132:                                              ; preds = %3
  %133 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %134 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  br label %192

135:                                              ; preds = %3
  %136 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %137 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0))
  br label %192

138:                                              ; preds = %3
  %139 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %140 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  br label %192

141:                                              ; preds = %3
  %142 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %143 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  br label %192

144:                                              ; preds = %3
  %145 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %146 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  br label %192

147:                                              ; preds = %3
  %148 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %149 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0))
  br label %192

150:                                              ; preds = %3
  %151 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %152 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  br label %192

153:                                              ; preds = %3
  %154 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %155 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0))
  br label %192

156:                                              ; preds = %3
  %157 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %158 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %157, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0))
  br label %192

159:                                              ; preds = %3
  %160 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %161 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0))
  br label %192

162:                                              ; preds = %3
  %163 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %164 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0))
  br label %192

165:                                              ; preds = %3
  %166 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %167 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0))
  br label %192

168:                                              ; preds = %3
  %169 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %170 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0))
  br label %192

171:                                              ; preds = %3
  %172 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %173 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0))
  br label %192

174:                                              ; preds = %3
  %175 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %176 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0))
  br label %192

177:                                              ; preds = %3
  %178 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %179 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0))
  br label %192

180:                                              ; preds = %3
  %181 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %182 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0))
  br label %192

183:                                              ; preds = %3
  %184 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %185 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0))
  br label %192

186:                                              ; preds = %3
  %187 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %188 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %189 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %187, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %186, %183, %180, %177, %174, %171, %168, %165, %162, %159, %156, %153, %150, %147, %144, %141, %138, %135, %132, %129, %126, %123, %120, %117, %114, %111, %108, %105, %104, %86, %83, %80, %77, %74, %73, %59, %56, %53, %50, %47, %41, %31, %23, %20, %17
  %193 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %194 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 162
  br i1 %196, label %197, label %351

197:                                              ; preds = %192
  %198 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %199 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0))
  %200 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %201 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  switch i32 %202, label %342 [
    i32 129, label %203
    i32 128, label %242
  ]

203:                                              ; preds = %197
  %204 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %205 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  switch i64 %206, label %235 [
    i64 134, label %207
    i64 133, label %217
    i64 132, label %226
    i64 131, label %226
    i64 130, label %226
  ]

207:                                              ; preds = %203
  %208 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %209 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %210 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = bitcast i64* %212 to float*
  %214 = load float, float* %213, align 4
  %215 = fpext float %214 to double
  %216 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), double %215)
  br label %241

217:                                              ; preds = %203
  %218 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %219 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %220 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 0
  %224 = load i64, i64* %223, align 8
  %225 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %218, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i64 %224)
  br label %241

226:                                              ; preds = %203, %203, %203
  %227 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %228 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %229 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i64*, i64** %230, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 0
  %233 = load i64, i64* %232, align 8
  %234 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %227, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i64 %233)
  br label %241

235:                                              ; preds = %203
  %236 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %237 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %238 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %236, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i64 0, i64 0), i64 %239)
  br label %241

241:                                              ; preds = %235, %226, %217, %207
  br label %348

242:                                              ; preds = %197
  %243 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %244 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  switch i64 %245, label %335 [
    i64 134, label %246
    i64 133, label %281
    i64 132, label %308
    i64 131, label %308
    i64 130, label %308
  ]

246:                                              ; preds = %242
  %247 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %248 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %249 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 0
  %253 = bitcast i64* %252 to float*
  %254 = load float, float* %253, align 4
  %255 = fpext float %254 to double
  %256 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %257 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = load i64*, i64** %258, align 8
  %260 = getelementptr inbounds i64, i64* %259, i64 1
  %261 = bitcast i64* %260 to float*
  %262 = load float, float* %261, align 4
  %263 = fpext float %262 to double
  %264 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %265 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = load i64*, i64** %266, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 2
  %269 = bitcast i64* %268 to float*
  %270 = load float, float* %269, align 4
  %271 = fpext float %270 to double
  %272 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %273 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i64*, i64** %274, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 3
  %277 = bitcast i64* %276 to float*
  %278 = load float, float* %277, align 4
  %279 = fpext float %278 to double
  %280 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i64 0, i64 0), double %255, double %263, double %271, double %279)
  br label %341

281:                                              ; preds = %242
  %282 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %283 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %284 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = load i64*, i64** %285, align 8
  %287 = getelementptr inbounds i64, i64* %286, i64 0
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %290 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 0
  %292 = load i64*, i64** %291, align 8
  %293 = getelementptr inbounds i64, i64* %292, i64 1
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %296 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  %298 = load i64*, i64** %297, align 8
  %299 = getelementptr inbounds i64, i64* %298, i64 2
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %302 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %301, i32 0, i32 3
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  %304 = load i64*, i64** %303, align 8
  %305 = getelementptr inbounds i64, i64* %304, i64 3
  %306 = load i64, i64* %305, align 8
  %307 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %282, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i64 0, i64 0), i64 %288, i64 %294, i64 %300, i64 %306)
  br label %341

308:                                              ; preds = %242, %242, %242
  %309 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %310 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %311 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  %313 = load i64*, i64** %312, align 8
  %314 = getelementptr inbounds i64, i64* %313, i64 0
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %317 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  %319 = load i64*, i64** %318, align 8
  %320 = getelementptr inbounds i64, i64* %319, i64 1
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %323 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  %325 = load i64*, i64** %324, align 8
  %326 = getelementptr inbounds i64, i64* %325, i64 2
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %329 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 0
  %331 = load i64*, i64** %330, align 8
  %332 = getelementptr inbounds i64, i64* %331, i64 3
  %333 = load i64, i64* %332, align 8
  %334 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %309, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0), i64 %315, i64 %321, i64 %327, i64 %333)
  br label %341

335:                                              ; preds = %242
  %336 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %337 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %338 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %336, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i64 0, i64 0), i64 %339)
  br label %341

341:                                              ; preds = %335, %308, %281, %246
  br label %348

342:                                              ; preds = %197
  %343 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %344 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %345 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %343, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i64 0, i64 0), i32 %346)
  br label %348

348:                                              ; preds = %342, %341, %241
  %349 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %350 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %349, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0))
  br label %448

351:                                              ; preds = %192
  %352 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %353 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 146
  br i1 %355, label %356, label %447

356:                                              ; preds = %351
  %357 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %358 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %359, 153
  br i1 %360, label %361, label %447

361:                                              ; preds = %356
  %362 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %363 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = icmp ne i32 %364, 152
  br i1 %365, label %366, label %447

366:                                              ; preds = %361
  %367 = load i64, i64* %7, align 8
  %368 = icmp ne i64 %367, 4294967295
  br i1 %368, label %369, label %434

369:                                              ; preds = %366
  %370 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %371 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %370, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0))
  %372 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %373 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %372, i32 0, i32 4
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i64 0
  %376 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %391

379:                                              ; preds = %369
  %380 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %381 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %382 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %381, i32 0, i32 4
  %383 = load %struct.TYPE_3__*, %struct.TYPE_3__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i64 0
  %385 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %6, align 8
  %388 = call i32 @shader_dump_src_param(%struct.wined3d_string_buffer* %380, i64 %386, %struct.wined3d_shader_version* %387)
  %389 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %390 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %389, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0))
  br label %391

391:                                              ; preds = %379, %369
  %392 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %393 = load i64, i64* %7, align 8
  %394 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %392, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i64 %393)
  %395 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %396 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %395, i32 0, i32 4
  %397 = load %struct.TYPE_3__*, %struct.TYPE_3__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i64 1
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 4294967295
  br i1 %401, label %402, label %433

402:                                              ; preds = %391
  %403 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %404 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %403, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0))
  %405 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %406 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %405, i32 0, i32 4
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i64 1
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %424

412:                                              ; preds = %402
  %413 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %414 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %415 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %414, i32 0, i32 4
  %416 = load %struct.TYPE_3__*, %struct.TYPE_3__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i64 1
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %6, align 8
  %421 = call i32 @shader_dump_src_param(%struct.wined3d_string_buffer* %413, i64 %419, %struct.wined3d_shader_version* %420)
  %422 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %423 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %422, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0))
  br label %424

424:                                              ; preds = %412, %402
  %425 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %426 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %427 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %426, i32 0, i32 4
  %428 = load %struct.TYPE_3__*, %struct.TYPE_3__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i64 1
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %425, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i64 %431)
  br label %433

433:                                              ; preds = %424, %391
  br label %434

434:                                              ; preds = %433, %366
  %435 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %436 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = icmp eq i32 %437, 166
  br i1 %438, label %439, label %446

439:                                              ; preds = %434
  %440 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %441 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %442 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %441, i32 0, i32 3
  %443 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %440, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i64 %444)
  br label %446

446:                                              ; preds = %439, %434
  br label %447

447:                                              ; preds = %446, %361, %356, %351
  br label %448

448:                                              ; preds = %447, %348
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i64 @shader_get_float_offset(i32, i64) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i32 @shader_dump_src_param(%struct.wined3d_string_buffer*, i64, %struct.wined3d_shader_version*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
