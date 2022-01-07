; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_main_storage_assign.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_main_storage_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i64, %struct.dstr, i32 }
%struct.dstr = type { i8*, i32 }
%struct.shader_var = type { i8*, i32, i32 }
%struct.shader_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.shader_var* }

@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@GS_SHADER_VERTEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"POSITION\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"VERTEXID\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"uint(gl_VertexID)\00", align 1
@GS_SHADER_PIXEL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"gl_FragCoord\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*, %struct.shader_var*, i8*, i8*, i32)* @gl_write_main_storage_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_write_main_storage_assign(%struct.gl_shader_parser* %0, %struct.shader_var* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.gl_shader_parser*, align 8
  %7 = alloca %struct.shader_var*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.shader_struct*, align 8
  %12 = alloca %struct.dstr, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct.dstr, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.shader_var*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %6, align 8
  store %struct.shader_var* %1, %struct.shader_var** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = bitcast %struct.dstr* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 46, i32 95
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %13, align 1
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 95, i32 46
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %14, align 1
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %5
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @dstr_copy(%struct.dstr* %12, i8* %32)
  %34 = load i8, i8* %13, align 1
  %35 = call i32 @dstr_cat_ch(%struct.dstr* %12, i8 signext %34)
  br label %38

36:                                               ; preds = %5
  %37 = call i32 @dstr_copy(%struct.dstr* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %40 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @dstr_cat(%struct.dstr* %12, i8* %41)
  %43 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %44 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %43, i32 0, i32 2
  %45 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %46 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.shader_struct* @shader_parser_getstruct(i32* %44, i32 %47)
  store %struct.shader_struct* %48, %struct.shader_struct** %11, align 8
  %49 = load %struct.shader_struct*, %struct.shader_struct** %11, align 8
  %50 = icmp ne %struct.shader_struct* %49, null
  br i1 %50, label %51, label %91

51:                                               ; preds = %38
  %52 = bitcast %struct.dstr* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %52, i8 0, i64 16, i1 false)
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @dstr_copy(%struct.dstr* %15, i8* %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %60 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @dstr_cat(%struct.dstr* %15, i8* %61)
  %63 = load i8, i8* %14, align 1
  %64 = call i32 @dstr_cat_ch(%struct.dstr* %15, i8 signext %63)
  store i64 0, i64* %16, align 8
  br label %65

65:                                               ; preds = %86, %58
  %66 = load i64, i64* %16, align 8
  %67 = load %struct.shader_struct*, %struct.shader_struct** %11, align 8
  %68 = getelementptr inbounds %struct.shader_struct, %struct.shader_struct* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  %73 = load %struct.shader_struct*, %struct.shader_struct** %11, align 8
  %74 = getelementptr inbounds %struct.shader_struct, %struct.shader_struct* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load %struct.shader_var*, %struct.shader_var** %75, align 8
  %77 = load i64, i64* %16, align 8
  %78 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %76, i64 %77
  store %struct.shader_var* %78, %struct.shader_var** %17, align 8
  %79 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %80 = load %struct.shader_var*, %struct.shader_var** %17, align 8
  %81 = getelementptr inbounds %struct.dstr, %struct.dstr* %12, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds %struct.dstr, %struct.dstr* %15, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %10, align 4
  call void @gl_write_main_storage_assign(%struct.gl_shader_parser* %79, %struct.shader_var* %80, i8* %82, i8* %84, i32 %85)
  br label %86

86:                                               ; preds = %72
  %87 = load i64, i64* %16, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %16, align 8
  br label %65

89:                                               ; preds = %65
  %90 = call i32 @dstr_free(%struct.dstr* %15)
  br label %177

91:                                               ; preds = %38
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %91
  %95 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %96 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @GS_SHADER_VERTEX, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %102 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @strcmp(i32 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %168

106:                                              ; preds = %100, %94, %91
  %107 = call i32 @dstr_is_empty(%struct.dstr* %12)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %111 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %110, i32 0, i32 1
  %112 = call i32 @dstr_cat_dstr(%struct.dstr* %111, %struct.dstr* %12)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %115 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %114, i32 0, i32 1
  %116 = call i32 @dstr_cat(%struct.dstr* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %121 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @strcmp(i32 %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %127 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %126, i32 0, i32 1
  %128 = call i32 @dstr_cat(%struct.dstr* %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %164

129:                                              ; preds = %119, %113
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %129
  %133 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %134 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @GS_SHADER_PIXEL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %140 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @strcmp(i32 %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %146 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %145, i32 0, i32 1
  %147 = call i32 @dstr_cat(%struct.dstr* %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %163

148:                                              ; preds = %138, %132, %129
  %149 = load i8*, i8** %9, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %153 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %152, i32 0, i32 1
  %154 = load i8*, i8** %9, align 8
  %155 = call i32 @dstr_cat(%struct.dstr* %153, i8* %154)
  br label %156

156:                                              ; preds = %151, %148
  %157 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %158 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %157, i32 0, i32 1
  %159 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %160 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @dstr_cat(%struct.dstr* %158, i8* %161)
  br label %163

163:                                              ; preds = %156, %144
  br label %164

164:                                              ; preds = %163, %125
  %165 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %166 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %165, i32 0, i32 1
  %167 = call i32 @dstr_cat(%struct.dstr* %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %168

168:                                              ; preds = %164, %100
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  %172 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %173 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 @gl_write_main_interface_assign(%struct.gl_shader_parser* %172, %struct.shader_var* %173, i8* %174)
  br label %176

176:                                              ; preds = %171, %168
  br label %177

177:                                              ; preds = %176, %89
  %178 = call i32 @dstr_free(%struct.dstr* %12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_cat_ch(%struct.dstr*, i8 signext) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local %struct.shader_struct* @shader_parser_getstruct(i32*, i32) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @dstr_is_empty(%struct.dstr*) #2

declare dso_local i32 @dstr_cat_dstr(%struct.dstr*, %struct.dstr*) #2

declare dso_local i32 @gl_write_main_interface_assign(%struct.gl_shader_parser*, %struct.shader_var*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
