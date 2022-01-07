; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_intrinsic.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_intrinsic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32 }
%struct.cf_token = type { i32 }
%struct.shader_var = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ddx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dFdx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ddy\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dFdy\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"frac\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fract\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"lerp\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"fmod\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"rsqrt\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"inversesqrt\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"saturate\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_shader_parser*, %struct.cf_token**)* @gl_write_intrinsic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_write_intrinsic(%struct.gl_shader_parser* %0, %struct.cf_token** %1) #0 {
  %3 = alloca %struct.gl_shader_parser*, align 8
  %4 = alloca %struct.cf_token**, align 8
  %5 = alloca %struct.cf_token*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.shader_var*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %3, align 8
  store %struct.cf_token** %1, %struct.cf_token*** %4, align 8
  %8 = load %struct.cf_token**, %struct.cf_token*** %4, align 8
  %9 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  store %struct.cf_token* %9, %struct.cf_token** %5, align 8
  store i32 1, i32* %6, align 4
  %10 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %11 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %10, i32 0, i32 0
  %12 = call i64 @strref_cmp(i32* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %16 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %15, i32 0, i32 0
  %17 = call i32 @dstr_cat(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %114

18:                                               ; preds = %2
  %19 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %20 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %19, i32 0, i32 0
  %21 = call i64 @strref_cmp(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %25 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %24, i32 0, i32 0
  %26 = call i32 @dstr_cat(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %113

27:                                               ; preds = %18
  %28 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %29 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %28, i32 0, i32 0
  %30 = call i64 @strref_cmp(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %34 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %33, i32 0, i32 0
  %35 = call i32 @dstr_cat(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %112

36:                                               ; preds = %27
  %37 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %38 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %37, i32 0, i32 0
  %39 = call i64 @strref_cmp(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %43 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %42, i32 0, i32 0
  %44 = call i32 @dstr_cat(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %111

45:                                               ; preds = %36
  %46 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %47 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %46, i32 0, i32 0
  %48 = call i64 @strref_cmp(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %52 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %51, i32 0, i32 0
  %53 = call i32 @dstr_cat(i32* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %110

54:                                               ; preds = %45
  %55 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %56 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %55, i32 0, i32 0
  %57 = call i64 @strref_cmp(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %61 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %60, i32 0, i32 0
  %62 = call i32 @dstr_cat(i32* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %109

63:                                               ; preds = %54
  %64 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %65 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %64, i32 0, i32 0
  %66 = call i64 @strref_cmp(i32* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %70 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %69, i32 0, i32 0
  %71 = call i32 @dstr_cat(i32* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %108

72:                                               ; preds = %63
  %73 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %74 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %73, i32 0, i32 0
  %75 = call i64 @strref_cmp(i32* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %79 = call i32 @gl_write_saturate(%struct.gl_shader_parser* %78, %struct.cf_token** %5)
  store i32 %79, i32* %6, align 4
  br label %107

80:                                               ; preds = %72
  %81 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %82 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %81, i32 0, i32 0
  %83 = call i64 @strref_cmp(i32* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %87 = call i32 @gl_write_mul(%struct.gl_shader_parser* %86, %struct.cf_token** %5)
  store i32 %87, i32* %6, align 4
  br label %106

88:                                               ; preds = %80
  %89 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %90 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %91 = call %struct.shader_var* @sp_getparam(%struct.gl_shader_parser* %89, %struct.cf_token* %90)
  store %struct.shader_var* %91, %struct.shader_var** %7, align 8
  %92 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %93 = icmp ne %struct.shader_var* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %88
  %95 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %96 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @astrcmp_n(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 7)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %102 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %103 = call i32 @gl_write_texture_code(%struct.gl_shader_parser* %101, %struct.cf_token** %5, %struct.shader_var* %102)
  store i32 %103, i32* %6, align 4
  br label %105

104:                                              ; preds = %94, %88
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %100
  br label %106

106:                                              ; preds = %105, %85
  br label %107

107:                                              ; preds = %106, %77
  br label %108

108:                                              ; preds = %107, %68
  br label %109

109:                                              ; preds = %108, %59
  br label %110

110:                                              ; preds = %109, %50
  br label %111

111:                                              ; preds = %110, %41
  br label %112

112:                                              ; preds = %111, %32
  br label %113

113:                                              ; preds = %112, %23
  br label %114

114:                                              ; preds = %113, %14
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %119 = load %struct.cf_token**, %struct.cf_token*** %4, align 8
  store %struct.cf_token* %118, %struct.cf_token** %119, align 8
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i64 @strref_cmp(i32*, i8*) #1

declare dso_local i32 @dstr_cat(i32*, i8*) #1

declare dso_local i32 @gl_write_saturate(%struct.gl_shader_parser*, %struct.cf_token**) #1

declare dso_local i32 @gl_write_mul(%struct.gl_shader_parser*, %struct.cf_token**) #1

declare dso_local %struct.shader_var* @sp_getparam(%struct.gl_shader_parser*, %struct.cf_token*) #1

declare dso_local i64 @astrcmp_n(i32, i8*, i32) #1

declare dso_local i32 @gl_write_texture_code(%struct.gl_shader_parser*, %struct.cf_token**, %struct.shader_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
