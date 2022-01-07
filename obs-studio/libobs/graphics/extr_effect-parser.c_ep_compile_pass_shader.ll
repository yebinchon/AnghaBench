; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_compile_pass_shader.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_compile_pass_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.gs_effect_technique = type { i32 }
%struct.gs_effect_pass = type { %struct.TYPE_12__, i32*, %struct.TYPE_10__, i32* }
%struct.TYPE_12__ = type { %struct.darray }
%struct.darray = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.darray }
%struct.ep_pass = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.dstr = type { i32 }

@GS_SHADER_VERTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c" (Vertex \00", align 1
@GS_SHADER_PIXEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" (Pixel \00", align 1
@UINT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"shader, technique %s, pass %u)\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.gs_effect_technique*, %struct.gs_effect_pass*, %struct.ep_pass*, i64, i32)* @ep_compile_pass_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_compile_pass_shader(%struct.effect_parser* %0, %struct.gs_effect_technique* %1, %struct.gs_effect_pass* %2, %struct.ep_pass* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.effect_parser*, align 8
  %8 = alloca %struct.gs_effect_technique*, align 8
  %9 = alloca %struct.gs_effect_pass*, align 8
  %10 = alloca %struct.ep_pass*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dstr, align 4
  %14 = alloca %struct.dstr, align 4
  %15 = alloca %struct.darray, align 4
  %16 = alloca %struct.darray*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %7, align 8
  store %struct.gs_effect_technique* %1, %struct.gs_effect_technique** %8, align 8
  store %struct.gs_effect_pass* %2, %struct.gs_effect_pass** %9, align 8
  store %struct.ep_pass* %3, %struct.ep_pass** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.darray* null, %struct.darray** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 1, i32* %18, align 4
  %19 = call i32 @dstr_init(%struct.dstr* %13)
  %20 = call i32 @darray_init(%struct.darray* %15)
  %21 = call i32 @dstr_init(%struct.dstr* %14)
  %22 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %23 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dstr_copy(%struct.dstr* %14, i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @GS_SHADER_VERTEX, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = call i32 @dstr_cat(%struct.dstr* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %40

33:                                               ; preds = %6
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @GS_SHADER_PIXEL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @dstr_cat(%struct.dstr* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @UINT_MAX, align 8
  %43 = icmp ule i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.gs_effect_technique*, %struct.gs_effect_technique** %8, align 8
  %47 = getelementptr inbounds %struct.gs_effect_technique, %struct.gs_effect_technique* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %11, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @dstr_catf(%struct.dstr* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @GS_SHADER_VERTEX, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %40
  %56 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %57 = load %struct.ep_pass*, %struct.ep_pass** %10, align 8
  %58 = getelementptr inbounds %struct.ep_pass, %struct.ep_pass* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = call i32 @ep_makeshaderstring(%struct.effect_parser* %56, %struct.dstr* %13, i32* %59, %struct.darray* %15)
  %61 = getelementptr inbounds %struct.dstr, %struct.dstr* %13, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.dstr, %struct.dstr* %14, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @gs_vertexshader_create(i32 %62, i32 %64, i32* null)
  %66 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %67 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  %68 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %69 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %17, align 8
  %71 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %72 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store %struct.darray* %73, %struct.darray** %16, align 8
  br label %98

74:                                               ; preds = %40
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @GS_SHADER_PIXEL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %74
  %79 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %80 = load %struct.ep_pass*, %struct.ep_pass** %10, align 8
  %81 = getelementptr inbounds %struct.ep_pass, %struct.ep_pass* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = call i32 @ep_makeshaderstring(%struct.effect_parser* %79, %struct.dstr* %13, i32* %82, %struct.darray* %15)
  %84 = getelementptr inbounds %struct.dstr, %struct.dstr* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.dstr, %struct.dstr* %14, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32* @gs_pixelshader_create(i32 %85, i32 %87, i32* null)
  %89 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %90 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  %91 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %92 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %17, align 8
  %94 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %95 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store %struct.darray* %96, %struct.darray** %16, align 8
  br label %97

97:                                               ; preds = %78, %74
  br label %98

98:                                               ; preds = %97, %55
  %99 = load i32*, i32** %17, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.effect_parser*, %struct.effect_parser** %7, align 8
  %103 = load %struct.darray*, %struct.darray** %16, align 8
  %104 = load i32*, i32** %17, align 8
  %105 = call i32 @ep_compile_pass_shaderparams(%struct.effect_parser* %102, %struct.darray* %103, %struct.darray* %15, i32* %104)
  store i32 %105, i32* %18, align 4
  br label %107

106:                                              ; preds = %98
  store i32 0, i32* %18, align 4
  br label %107

107:                                              ; preds = %106, %101
  %108 = call i32 @dstr_free(%struct.dstr* %14)
  %109 = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dstr_array_free(i32 %110, i32 %112)
  %114 = call i32 @darray_free(%struct.darray* %15)
  %115 = call i32 @dstr_free(%struct.dstr* %13)
  %116 = load i32, i32* %18, align 4
  ret i32 %116
}

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i32 @darray_init(%struct.darray*) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i32) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dstr_catf(%struct.dstr*, i8*, i32, i32) #1

declare dso_local i32 @ep_makeshaderstring(%struct.effect_parser*, %struct.dstr*, i32*, %struct.darray*) #1

declare dso_local i32* @gs_vertexshader_create(i32, i32, i32*) #1

declare dso_local i32* @gs_pixelshader_create(i32, i32, i32*) #1

declare dso_local i32 @ep_compile_pass_shaderparams(%struct.effect_parser*, %struct.darray*, %struct.darray*, i32*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i32 @dstr_array_free(i32, i32) #1

declare dso_local i32 @darray_free(%struct.darray*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
