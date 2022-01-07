; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_vertex_lighting.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_vertex_lighting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_ffp_vs_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"ffp_varying_diffuse = ffp_attrib_diffuse;\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ffp_varying_specular = ffp_attrib_specular;\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"vec3 ambient = ffp_light_ambient;\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"vec3 diffuse = vec3(0.0);\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"vec4 specular = vec4(0.0);\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"vec3 dir, dst;\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"float att, t;\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"ffp_material.ambient\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"ffp_material.diffuse\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"ffp_material.specular\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"ffp_material.emissive\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"dir = ffp_light[%u].position.xyz - ec_pos.xyz;\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"dst.z = dot(dir, dir);\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"dst.y = sqrt(dst.z);\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"dst.x = 1.0;\0A\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"dst.y = (ffp_light[%u].range - dst.y) / ffp_light[%u].range;\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"dst.z = dst.y * dst.y;\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"if (dst.y > 0.0)\0A{\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"if (dst.y <= ffp_light[%u].range)\0A{\0A\00", align 1
@.str.19 = private unnamed_addr constant [90 x i8] c"att = dot(dst.xyz, vec3(ffp_light[%u].c_att, ffp_light[%u].l_att, ffp_light[%u].q_att));\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"att = 1.0 / att;\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"ambient += ffp_light[%u].ambient.xyz * att;\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"dir = normalize(dir);\0A\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"t = dot(-dir, normalize(ffp_light[%u].direction));\0A\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"if (t > ffp_light[%u].cos_htheta) att = 1.0;\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"else if (t <= ffp_light[%u].cos_hphi) att = 0.0;\0A\00", align 1
@.str.27 = private unnamed_addr constant [124 x i8] c"else att = pow((t - ffp_light[%u].cos_hphi) / (ffp_light[%u].cos_htheta - ffp_light[%u].cos_hphi), ffp_light[%u].falloff);\0A\00", align 1
@.str.28 = private unnamed_addr constant [91 x i8] c"att *= dot(dst.xyz, vec3(ffp_light[%u].c_att, ffp_light[%u].l_att, ffp_light[%u].q_att));\0A\00", align 1
@.str.29 = private unnamed_addr constant [91 x i8] c"att /= dot(dst.xyz, vec3(ffp_light[%u].c_att, ffp_light[%u].l_att, ffp_light[%u].q_att));\0A\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"ambient += ffp_light[%u].ambient.xyz;\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"att = 1.0;\0A\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"dir = normalize(ffp_light[%u].direction.xyz);\0A\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"dir = normalize(ffp_light[%u].position.xyz);\0A\00", align 1
@.str.34 = private unnamed_addr constant [73 x i8] c"ffp_varying_diffuse.xyz = %s.xyz * ambient + %s.xyz * diffuse + %s.xyz;\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"ffp_varying_diffuse.w = %s.w;\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"ffp_varying_specular = %s * specular;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_ffp_vs_settings*, i64)* @shader_glsl_ffp_vertex_lighting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_ffp_vertex_lighting(%struct.wined3d_string_buffer* %0, %struct.wined3d_ffp_vs_settings* %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.wined3d_ffp_vs_settings*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store %struct.wined3d_ffp_vs_settings* %1, %struct.wined3d_ffp_vs_settings** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %19 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %21 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %277

22:                                               ; preds = %3
  %23 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %24 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %26 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %27 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %28 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %29 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %30 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %31 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %32 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %33 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %34 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @shader_glsl_ffp_mcs(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i8* %36, i8** %10, align 8
  %37 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %38 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @shader_glsl_ffp_mcs(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i8* %40, i8** %7, align 8
  %41 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %42 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @shader_glsl_ffp_mcs(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  store i8* %44, i8** %8, align 8
  %45 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %46 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @shader_glsl_ffp_mcs(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  store i8* %48, i8** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %111, %22
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %52 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %116

55:                                               ; preds = %49
  %56 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i32 %57)
  %59 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %60 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %61 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %62 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %63 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %64 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %55
  %68 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %68, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %73 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %74 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %75 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %80

76:                                               ; preds = %55
  %77 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %67
  %81 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %81, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.19, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  %86 = load i64, i64* %6, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %90 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %80
  %92 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i32 %93)
  %95 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %96 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %91
  %100 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %101 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %111

102:                                              ; preds = %91
  %103 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %104 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  %105 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %106 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @shader_glsl_ffp_vertex_lighting_footer(%struct.wined3d_string_buffer* %105, %struct.wined3d_ffp_vs_settings* %106, i32 %107)
  %109 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %110 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %111

111:                                              ; preds = %102, %99
  %112 = load i32, i32* %11, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %49

116:                                              ; preds = %49
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %198, %116
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %120 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %203

123:                                              ; preds = %117
  %124 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %124, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i32 %125)
  %127 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %128 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %129 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %130 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %131 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %132 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %133 = load i64, i64* %6, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %123
  %136 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %136, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %141 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %142 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %143 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %148

144:                                              ; preds = %123
  %145 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %135
  %149 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %150 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %149, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  %151 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %151, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i64 0, i64 0), i32 %152)
  %154 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i32 %155)
  %157 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %158 = load i32, i32* %12, align 4
  %159 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %157, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0), i32 %158)
  %160 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %160, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.27, i64 0, i64 0), i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load i64, i64* %6, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %148
  %169 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %169, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.28, i64 0, i64 0), i32 %170, i32 %171, i32 %172)
  br label %180

174:                                              ; preds = %148
  %175 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %175, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.29, i64 0, i64 0), i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %174, %168
  %181 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %181, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i32 %182)
  %184 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %185 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %180
  %189 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %190 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %198

191:                                              ; preds = %180
  %192 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %193 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @shader_glsl_ffp_vertex_lighting_footer(%struct.wined3d_string_buffer* %192, %struct.wined3d_ffp_vs_settings* %193, i32 %194)
  %196 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %197 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %198

198:                                              ; preds = %191, %188
  %199 = load i32, i32* %11, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %12, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %117

203:                                              ; preds = %117
  store i32 0, i32* %11, align 4
  br label %204

204:                                              ; preds = %229, %203
  %205 = load i32, i32* %11, align 4
  %206 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %207 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = icmp ult i32 %205, %208
  br i1 %209, label %210, label %234

210:                                              ; preds = %204
  %211 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %212 = load i32, i32* %12, align 4
  %213 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %211, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i32 %212)
  %214 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %215 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %210
  br label %229

219:                                              ; preds = %210
  %220 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %221 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0))
  %222 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %223 = load i32, i32* %12, align 4
  %224 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %222, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i64 0, i64 0), i32 %223)
  %225 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %226 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @shader_glsl_ffp_vertex_lighting_footer(%struct.wined3d_string_buffer* %225, %struct.wined3d_ffp_vs_settings* %226, i32 %227)
  br label %229

229:                                              ; preds = %219, %218
  %230 = load i32, i32* %11, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %12, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %12, align 4
  br label %204

234:                                              ; preds = %204
  store i32 0, i32* %11, align 4
  br label %235

235:                                              ; preds = %260, %234
  %236 = load i32, i32* %11, align 4
  %237 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %238 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = icmp ult i32 %236, %239
  br i1 %240, label %241, label %265

241:                                              ; preds = %235
  %242 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %243 = load i32, i32* %12, align 4
  %244 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %242, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i32 %243)
  %245 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %246 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %241
  br label %260

250:                                              ; preds = %241
  %251 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %252 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %251, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0))
  %253 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %254 = load i32, i32* %12, align 4
  %255 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %253, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i32 %254)
  %256 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %257 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %258 = load i32, i32* %12, align 4
  %259 = call i32 @shader_glsl_ffp_vertex_lighting_footer(%struct.wined3d_string_buffer* %256, %struct.wined3d_ffp_vs_settings* %257, i32 %258)
  br label %260

260:                                              ; preds = %250, %249
  %261 = load i32, i32* %11, align 4
  %262 = add i32 %261, 1
  store i32 %262, i32* %11, align 4
  %263 = load i32, i32* %12, align 4
  %264 = add i32 %263, 1
  store i32 %264, i32* %12, align 4
  br label %235

265:                                              ; preds = %235
  %266 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %267 = load i8*, i8** %10, align 8
  %268 = load i8*, i8** %7, align 8
  %269 = load i8*, i8** %9, align 8
  %270 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %266, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.34, i64 0, i64 0), i8* %267, i8* %268, i8* %269)
  %271 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %272 = load i8*, i8** %7, align 8
  %273 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %271, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i8* %272)
  %274 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %275 = load i8*, i8** %8, align 8
  %276 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %274, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0), i8* %275)
  br label %277

277:                                              ; preds = %265, %17
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i8* @shader_glsl_ffp_mcs(i32, i8*) #1

declare dso_local i32 @shader_glsl_ffp_vertex_lighting_footer(%struct.wined3d_string_buffer*, %struct.wined3d_ffp_vs_settings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
