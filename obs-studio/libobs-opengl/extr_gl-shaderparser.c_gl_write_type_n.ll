; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_type_n.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_type_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"float2\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vec2\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"float3\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vec3\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"float4\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"vec4\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"int2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ivec2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"int3\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ivec3\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"int4\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ivec4\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"float3x3\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"mat3x3\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"float3x4\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"mat3x4\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"float4x4\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"mat4x4\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"texture2d\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sampler2D\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"texture3d\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sampler3D\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"texture_cube\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"samplerCube\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"texture_rect\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"sampler2DRect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_shader_parser*, i8*, i64)* @gl_write_type_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_write_type_n(%struct.gl_shader_parser* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gl_shader_parser*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i64 @cmp_type(i8* %8, i64 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %14 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %13, i32 0, i32 0
  %15 = call i32 @dstr_cat(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %137

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @cmp_type(i8* %17, i64 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %23 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %22, i32 0, i32 0
  %24 = call i32 @dstr_cat(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %136

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @cmp_type(i8* %26, i64 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %32 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %31, i32 0, i32 0
  %33 = call i32 @dstr_cat(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %135

34:                                               ; preds = %25
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @cmp_type(i8* %35, i64 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %41 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %40, i32 0, i32 0
  %42 = call i32 @dstr_cat(i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %134

43:                                               ; preds = %34
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @cmp_type(i8* %44, i64 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %50 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %49, i32 0, i32 0
  %51 = call i32 @dstr_cat(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %133

52:                                               ; preds = %43
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @cmp_type(i8* %53, i64 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %59 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %58, i32 0, i32 0
  %60 = call i32 @dstr_cat(i32* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %132

61:                                               ; preds = %52
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @cmp_type(i8* %62, i64 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 8)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %68 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %67, i32 0, i32 0
  %69 = call i32 @dstr_cat(i32* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %131

70:                                               ; preds = %61
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i64 @cmp_type(i8* %71, i64 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 8)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %77 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %76, i32 0, i32 0
  %78 = call i32 @dstr_cat(i32* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %130

79:                                               ; preds = %70
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i64 @cmp_type(i8* %80, i64 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 8)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %86 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %85, i32 0, i32 0
  %87 = call i32 @dstr_cat(i32* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %129

88:                                               ; preds = %79
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = call i64 @cmp_type(i8* %89, i64 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 9)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %95 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %94, i32 0, i32 0
  %96 = call i32 @dstr_cat(i32* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %128

97:                                               ; preds = %88
  %98 = load i8*, i8** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i64 @cmp_type(i8* %98, i64 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 9)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %104 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %103, i32 0, i32 0
  %105 = call i32 @dstr_cat(i32* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  br label %127

106:                                              ; preds = %97
  %107 = load i8*, i8** %6, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i64 @cmp_type(i8* %107, i64 %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32 12)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %113 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %112, i32 0, i32 0
  %114 = call i32 @dstr_cat(i32* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  br label %126

115:                                              ; preds = %106
  %116 = load i8*, i8** %6, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i64 @cmp_type(i8* %116, i64 %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 12)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %122 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %121, i32 0, i32 0
  %123 = call i32 @dstr_cat(i32* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  br label %125

124:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %138

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %111
  br label %127

127:                                              ; preds = %126, %102
  br label %128

128:                                              ; preds = %127, %93
  br label %129

129:                                              ; preds = %128, %84
  br label %130

130:                                              ; preds = %129, %75
  br label %131

131:                                              ; preds = %130, %66
  br label %132

132:                                              ; preds = %131, %57
  br label %133

133:                                              ; preds = %132, %48
  br label %134

134:                                              ; preds = %133, %39
  br label %135

135:                                              ; preds = %134, %30
  br label %136

136:                                              ; preds = %135, %21
  br label %137

137:                                              ; preds = %136, %12
  store i32 1, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %124
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @cmp_type(i8*, i64, i8*, i32) #1

declare dso_local i32 @dstr_cat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
