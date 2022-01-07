; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_dump_program_source.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_dump_program_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }

@GL_ATTACHED_SHADERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate shader array memory.\0A\00", align 1
@GL_SHADER_SOURCE_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to allocate %d bytes for shader source.\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Shader %u:\0A\00", align 1
@GL_SHADER_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"    GL_SHADER_TYPE: %s.\0A\00", align 1
@GL_COMPILE_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"    GL_COMPILE_STATUS: %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"    %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, i8)* @shader_glsl_dump_program_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_dump_program_source(%struct.wined3d_gl_info* %0, i8 signext %1) #0 {
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store i8 %1, i8* %4, align 1
  store i64 -1, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %13 = load i8, i8* %4, align 1
  %14 = load i32, i32* @GL_ATTACHED_SHADERS, align 4
  %15 = call i32 @glGetProgramiv(i8 signext %13, i32 %14, i64* %6)
  %16 = call i32 @GL_EXTCALL(i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i8* @heap_calloc(i64 %17, i32 1)
  store i8* %18, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %114

22:                                               ; preds = %2
  %23 = load i8, i8* %4, align 1
  %24 = load i64, i64* %6, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @glGetAttachedShaders(i8 signext %23, i64 %24, i32* null, i8* %25)
  %27 = call i32 @GL_EXTCALL(i32 %26)
  store i64 0, i64* %5, align 8
  br label %28

28:                                               ; preds = %106, %22
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %109

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load i32, i32* @GL_SHADER_SOURCE_LENGTH, align 4
  %38 = call i32 @glGetShaderiv(i8 signext %36, i32 %37, i64* %12)
  %39 = call i32 @GL_EXTCALL(i32 %38)
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %32
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @heap_free(i8* %44)
  %46 = load i64, i64* %12, align 8
  %47 = call i8* @heap_alloc_zero(i64 %46)
  store i8* %47, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %12, align 8
  %51 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @heap_free(i8* %52)
  br label %114

54:                                               ; preds = %43
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %54, %32
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i32, i32* @GL_SHADER_TYPE, align 4
  %68 = call i32 @glGetShaderiv(i8 signext %66, i32 %67, i64* %12)
  %69 = call i32 @GL_EXTCALL(i32 %68)
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @debug_gl_shader_type(i64 %70)
  %72 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i8*, i8** %8, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i32, i32* @GL_COMPILE_STATUS, align 4
  %78 = call i32 @glGetShaderiv(i8 signext %76, i32 %77, i64* %12)
  %79 = call i32 @GL_EXTCALL(i32 %78)
  %80 = load i64, i64* %12, align 8
  %81 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %80)
  %82 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i8*, i8** %9, align 8
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = load i64, i64* %7, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @glGetShaderSource(i8 signext %87, i64 %88, i32* null, i8* %89)
  %91 = call i32 @GL_EXTCALL(i32 %90)
  br label %92

92:                                               ; preds = %95, %56
  %93 = call i8* @get_info_log_line(i8** %10)
  store i8* %93, i8** %11, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %101, i8* %102)
  br label %92

104:                                              ; preds = %92
  %105 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %5, align 8
  br label %28

109:                                              ; preds = %28
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @heap_free(i8* %110)
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @heap_free(i8* %112)
  br label %114

114:                                              ; preds = %109, %49, %20
  ret void
}

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGetProgramiv(i8 signext, i32, i64*) #1

declare dso_local i8* @heap_calloc(i64, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @glGetAttachedShaders(i8 signext, i64, i32*, i8*) #1

declare dso_local i32 @glGetShaderiv(i8 signext, i32, i64*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i8* @heap_alloc_zero(i64) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @debug_gl_shader_type(i64) #1

declare dso_local i32 @glGetShaderSource(i8 signext, i64, i32*, i8*) #1

declare dso_local i8* @get_info_log_line(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
