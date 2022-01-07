; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_volumetexture_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_volumetexture_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { float*, i32, %struct.wined3d_texture_sub_resource*, %struct.TYPE_6__, i32 }
%struct.wined3d_texture_sub_resource = type { i32*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wined3d_resource_desc = type { i64, i32, i32, i32, i32, i32 }
%struct.wined3d_device = type { %struct.TYPE_4__*, %struct.wined3d_device_parent* }
%struct.TYPE_4__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_device_parent = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.wined3d_texture* (%struct.wined3d_device_parent*, %struct.wined3d_texture*, i32, i32**, i32*)* }
%struct.wined3d_parent_ops = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Invalid layer count for volume texture.\0A\00", align 1
@E_INVALIDARG = common dso_local global %struct.wined3d_texture* null, align 8
@WINED3DFMT_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"(%p) : Texture cannot be created with a format of WINED3DFMT_UNKNOWN.\0A\00", align 1
@WINED3DERR_INVALIDCALL = common dso_local global %struct.wined3d_texture* null, align 8
@EXT_TEXTURE3D = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"(%p) : Texture cannot be created - no volume texture support.\0A\00", align 1
@WINED3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@WINED3DUSAGE_SCRATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Attempted to create a DYNAMIC texture with access %s.\0A\00", align 1
@ARB_TEXTURE_NON_POWER_OF_TWO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [68 x i8] c"Creating a scratch NPOT volume texture despite lack of HW support.\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"Attempted to create a NPOT volume texture (%u, %u, %u) without GL support.\0A\00", align 1
@texture3d_ops = common dso_local global i32 0, align 4
@texture_resource_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"Failed to initialize texture, returning %#x.\0A\00", align 1
@GL_TEXTURE_3D = common dso_local global i32 0, align 4
@WINED3D_LOCATION_BUFFER = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DISCARDED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"Failed to create volume parent, hr %#x.\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"parent %p, parent_ops %p.\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Created volume level %u.\0A\00", align 1
@WINED3D_OK = common dso_local global %struct.wined3d_texture* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_texture* (%struct.wined3d_texture*, %struct.wined3d_resource_desc*, i32, i32, i32, %struct.wined3d_device*, i8*, %struct.wined3d_parent_ops*)* @volumetexture_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_texture* @volumetexture_init(%struct.wined3d_texture* %0, %struct.wined3d_resource_desc* %1, i32 %2, i32 %3, i32 %4, %struct.wined3d_device* %5, i8* %6, %struct.wined3d_parent_ops* %7) #0 {
  %9 = alloca %struct.wined3d_texture*, align 8
  %10 = alloca %struct.wined3d_texture*, align 8
  %11 = alloca %struct.wined3d_resource_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_device*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.wined3d_parent_ops*, align 8
  %18 = alloca %struct.wined3d_device_parent*, align 8
  %19 = alloca %struct.wined3d_gl_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.wined3d_texture*, align 8
  %22 = alloca %struct.wined3d_texture_sub_resource*, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %10, align 8
  store %struct.wined3d_resource_desc* %1, %struct.wined3d_resource_desc** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.wined3d_device* %5, %struct.wined3d_device** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.wined3d_parent_ops* %7, %struct.wined3d_parent_ops** %17, align 8
  %23 = load %struct.wined3d_device*, %struct.wined3d_device** %15, align 8
  %24 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %23, i32 0, i32 1
  %25 = load %struct.wined3d_device_parent*, %struct.wined3d_device_parent** %24, align 8
  store %struct.wined3d_device_parent* %25, %struct.wined3d_device_parent** %18, align 8
  %26 = load %struct.wined3d_device*, %struct.wined3d_device** %15, align 8
  %27 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.wined3d_gl_info* %29, %struct.wined3d_gl_info** %19, align 8
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %8
  %33 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.wined3d_texture*, %struct.wined3d_texture** @E_INVALIDARG, align 8
  store %struct.wined3d_texture* %34, %struct.wined3d_texture** %9, align 8
  br label %232

35:                                               ; preds = %8
  %36 = load i64, i64* @WINED3DFMT_UNKNOWN, align 8
  %37 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %38 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %43 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_texture* %42)
  %44 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %44, %struct.wined3d_texture** %9, align 8
  br label %232

45:                                               ; preds = %35
  %46 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %47 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @EXT_TEXTURE3D, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %55 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), %struct.wined3d_texture* %54)
  %56 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %56, %struct.wined3d_texture** %9, align 8
  br label %232

57:                                               ; preds = %45
  %58 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %59 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @WINED3DUSAGE_DYNAMIC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %57
  %65 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %66 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @wined3d_resource_access_is_managed(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  %71 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %72 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @WINED3DUSAGE_SCRATCH, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70, %64
  %78 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %79 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.wined3d_texture* @wined3d_debug_resource_access(i32 %80)
  %82 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), %struct.wined3d_texture* %81)
  %83 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %83, %struct.wined3d_texture** %9, align 8
  br label %232

84:                                               ; preds = %70, %57
  %85 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %86 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @ARB_TEXTURE_NON_POWER_OF_TWO, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %133, label %92

92:                                               ; preds = %84
  %93 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %94 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @is_power_of_two(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %100 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @is_power_of_two(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %106 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @is_power_of_two(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %104, %98, %92
  %111 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %112 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @WINED3DUSAGE_SCRATCH, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  br label %131

119:                                              ; preds = %110
  %120 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %121 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %124 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %127 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i32 %122, i32 %125, i32 %128)
  %130 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %130, %struct.wined3d_texture** %9, align 8
  br label %232

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131, %104
  br label %133

133:                                              ; preds = %132, %84
  %134 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.wined3d_device*, %struct.wined3d_device** %15, align 8
  %139 = load i8*, i8** %16, align 8
  %140 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %17, align 8
  %141 = call %struct.wined3d_texture* @wined3d_texture_init(%struct.wined3d_texture* %134, i32* @texture3d_ops, i32 1, i32 %135, %struct.wined3d_resource_desc* %136, i32 %137, %struct.wined3d_device* %138, i8* %139, %struct.wined3d_parent_ops* %140, i32* @texture_resource_ops)
  store %struct.wined3d_texture* %141, %struct.wined3d_texture** %21, align 8
  %142 = call i64 @FAILED(%struct.wined3d_texture* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %133
  %145 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %146 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), %struct.wined3d_texture* %145)
  %147 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  store %struct.wined3d_texture* %147, %struct.wined3d_texture** %9, align 8
  br label %232

148:                                              ; preds = %133
  %149 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %150 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %149, i32 0, i32 0
  %151 = load float*, float** %150, align 8
  %152 = getelementptr inbounds float, float* %151, i64 0
  store float 1.000000e+00, float* %152, align 4
  %153 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %154 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %153, i32 0, i32 0
  %155 = load float*, float** %154, align 8
  %156 = getelementptr inbounds float, float* %155, i64 5
  store float 1.000000e+00, float* %156, align 4
  %157 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %158 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %157, i32 0, i32 0
  %159 = load float*, float** %158, align 8
  %160 = getelementptr inbounds float, float* %159, i64 10
  store float 1.000000e+00, float* %160, align 4
  %161 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %162 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %161, i32 0, i32 0
  %163 = load float*, float** %162, align 8
  %164 = getelementptr inbounds float, float* %163, i64 15
  store float 1.000000e+00, float* %164, align 4
  %165 = load i32, i32* @GL_TEXTURE_3D, align 4
  %166 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %167 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  %168 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %169 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %170 = call i64 @wined3d_texture_use_pbo(%struct.wined3d_texture* %168, %struct.wined3d_gl_info* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %148
  %173 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %174 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %173, i32 0, i32 3
  %175 = call i32 @wined3d_resource_free_sysmem(%struct.TYPE_6__* %174)
  %176 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %177 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %178 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 8
  br label %180

180:                                              ; preds = %172, %148
  store i32 0, i32* %20, align 4
  br label %181

181:                                              ; preds = %227, %180
  %182 = load i32, i32* %20, align 4
  %183 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %184 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp ult i32 %182, %185
  br i1 %186, label %187, label %230

187:                                              ; preds = %181
  %188 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %189 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %188, i32 0, i32 2
  %190 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %189, align 8
  %191 = load i32, i32* %20, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %190, i64 %192
  store %struct.wined3d_texture_sub_resource* %193, %struct.wined3d_texture_sub_resource** %22, align 8
  %194 = load i32, i32* @WINED3D_LOCATION_DISCARDED, align 4
  %195 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %22, align 8
  %196 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 4
  %197 = load %struct.wined3d_device_parent*, %struct.wined3d_device_parent** %18, align 8
  %198 = getelementptr inbounds %struct.wined3d_device_parent, %struct.wined3d_device_parent* %197, i32 0, i32 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load %struct.wined3d_texture* (%struct.wined3d_device_parent*, %struct.wined3d_texture*, i32, i32**, i32*)*, %struct.wined3d_texture* (%struct.wined3d_device_parent*, %struct.wined3d_texture*, i32, i32**, i32*)** %200, align 8
  %202 = load %struct.wined3d_device_parent*, %struct.wined3d_device_parent** %18, align 8
  %203 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %204 = load i32, i32* %20, align 4
  %205 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %22, align 8
  %206 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %205, i32 0, i32 0
  %207 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %22, align 8
  %208 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %207, i32 0, i32 1
  %209 = call %struct.wined3d_texture* %201(%struct.wined3d_device_parent* %202, %struct.wined3d_texture* %203, i32 %204, i32** %206, i32* %208)
  store %struct.wined3d_texture* %209, %struct.wined3d_texture** %21, align 8
  %210 = call i64 @FAILED(%struct.wined3d_texture* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %187
  %213 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %214 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), %struct.wined3d_texture* %213)
  %215 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %22, align 8
  %216 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %215, i32 0, i32 0
  store i32* null, i32** %216, align 8
  %217 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %218 = call i32 @wined3d_texture_cleanup_sync(%struct.wined3d_texture* %217)
  %219 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  store %struct.wined3d_texture* %219, %struct.wined3d_texture** %9, align 8
  br label %232

220:                                              ; preds = %187
  %221 = load i8*, i8** %16, align 8
  %222 = ptrtoint i8* %221 to i32
  %223 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %17, align 8
  %224 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %222, %struct.wined3d_parent_ops* %223)
  %225 = load i32, i32* %20, align 4
  %226 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %220
  %228 = load i32, i32* %20, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %20, align 4
  br label %181

230:                                              ; preds = %181
  %231 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3D_OK, align 8
  store %struct.wined3d_texture* %231, %struct.wined3d_texture** %9, align 8
  br label %232

232:                                              ; preds = %230, %212, %144, %119, %77, %53, %41, %32
  %233 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  ret %struct.wined3d_texture* %233
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i64 @wined3d_resource_access_is_managed(i32) #1

declare dso_local %struct.wined3d_texture* @wined3d_debug_resource_access(i32) #1

declare dso_local i32 @is_power_of_two(i32) #1

declare dso_local i64 @FAILED(%struct.wined3d_texture*) #1

declare dso_local %struct.wined3d_texture* @wined3d_texture_init(%struct.wined3d_texture*, i32*, i32, i32, %struct.wined3d_resource_desc*, i32, %struct.wined3d_device*, i8*, %struct.wined3d_parent_ops*, i32*) #1

declare dso_local i64 @wined3d_texture_use_pbo(%struct.wined3d_texture*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @wined3d_resource_free_sysmem(%struct.TYPE_6__*) #1

declare dso_local i32 @wined3d_texture_cleanup_sync(%struct.wined3d_texture*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
