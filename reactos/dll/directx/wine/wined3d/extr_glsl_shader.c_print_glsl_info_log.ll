; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_print_glsl_info_log.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_print_glsl_info_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }

@d3d_shader = common dso_local global i32 0, align 4
@GL_INFO_LOG_LENGTH = common dso_local global i32 0, align 4
@WINED3D_QUIRK_INFO_LOG_SPAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Info log received from GLSL shader #%u:\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"    %.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_glsl_info_log(%struct.wined3d_gl_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @d3d_shader, align 4
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @d3d_shader, align 4
  %16 = call i32 @FIXME_ON(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %100

19:                                               ; preds = %14, %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @GL_INFO_LOG_LENGTH, align 4
  %25 = call i32 @glGetProgramiv(i32 %23, i32 %24, i32* %7)
  %26 = call i32 @GL_EXTCALL(i32 %25)
  br label %32

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @GL_INFO_LOG_LENGTH, align 4
  %30 = call i32 @glGetShaderiv(i32 %28, i32 %29, i32* %7)
  %31 = call i32 @GL_EXTCALL(i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %100

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @heap_alloc(i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @glGetProgramInfoLog(i32 %46, i32 %47, i32* null, i8* %48)
  %50 = call i32 @GL_EXTCALL(i32 %49)
  br label %57

51:                                               ; preds = %35
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @glGetShaderInfoLog(i32 %52, i32 %53, i32* null, i8* %54)
  %56 = call i32 @GL_EXTCALL(i32 %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %9, align 8
  %59 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %60 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @WINED3D_QUIRK_INFO_LOG_SPAM, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %71, %65
  %69 = call i8* @get_info_log_line(i8** %9)
  store i8* %69, i8** %10, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %77, i8* %78)
  br label %68

80:                                               ; preds = %68
  br label %97

81:                                               ; preds = %57
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %87, %81
  %85 = call i8* @get_info_log_line(i8** %9)
  store i8* %85, i8** %10, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %93, i8* %94)
  br label %84

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %80
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @heap_free(i8* %98)
  br label %100

100:                                              ; preds = %18, %97, %32
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @FIXME_ON(i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGetProgramiv(i32, i32, i32*) #1

declare dso_local i32 @glGetShaderiv(i32, i32, i32*) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @glGetProgramInfoLog(i32, i32, i32*, i8*) #1

declare dso_local i32 @glGetShaderInfoLog(i32, i32, i32*, i8*) #1

declare dso_local i32 @WARN(i8*, i32, ...) #1

declare dso_local i8* @get_info_log_line(i8**) #1

declare dso_local i32 @FIXME(i8*, i32, ...) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
