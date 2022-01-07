; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_CopyTexImage1D.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_CopyTexImage1D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_image = type { i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"glCopyTexImage1D\00", align 1
@GL_TEXTURE_1D = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"glCopyTexImage1D(target)\00", align 1
@MAX_TEXTURE_LEVELS = common dso_local global i64 0, align 8
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"glCopyTexImage1D(level)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"glCopyTexImage1D(border)\00", align 1
@MAX_TEXTURE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"glCopyTexImage1D(width)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"glCopyTexImage1D(format)\00", align 1
@GL_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_CopyTexImage1D(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.gl_image*, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @INSIDE_BEGIN_END(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %25 = call i32 @gl_error(i32* %23, i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %112

26:                                               ; preds = %8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @GL_TEXTURE_1D, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @GL_INVALID_ENUM, align 4
  %33 = call i32 @gl_error(i32* %31, i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %112

34:                                               ; preds = %26
  %35 = load i64, i64* %11, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %34
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @GL_INVALID_VALUE, align 4
  %44 = call i32 @gl_error(i32* %42, i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %112

45:                                               ; preds = %37
  %46 = load i64, i64* %16, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @GL_INVALID_VALUE, align 4
  %54 = call i32 @gl_error(i32* %52, i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %112

55:                                               ; preds = %48, %45
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %16, align 8
  %59 = mul nsw i64 2, %58
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @MAX_TEXTURE_SIZE, align 4
  %64 = add nsw i32 2, %63
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66, %61, %55
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* @GL_INVALID_VALUE, align 4
  %72 = call i32 @gl_error(i32* %70, i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %112

73:                                               ; preds = %66
  %74 = load i64, i64* %12, align 8
  %75 = call i64 @decode_internal_format(i64 %74)
  store i64 %75, i64* %17, align 8
  %76 = load i64, i64* %17, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = load i64, i64* %12, align 8
  %80 = icmp sge i64 %79, 1
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i64, i64* %12, align 8
  %83 = icmp sle i64 %82, 4
  br i1 %83, label %84, label %88

84:                                               ; preds = %81, %73
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* @GL_INVALID_VALUE, align 4
  %87 = call i32 @gl_error(i32* %85, i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %112

88:                                               ; preds = %81, %78
  %89 = load i32*, i32** %9, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i64, i64* %17, align 8
  %94 = call %struct.gl_image* @read_color_image(i32* %89, i64 %90, i64 %91, i32 %92, i32 1, i64 %93)
  store %struct.gl_image* %94, %struct.gl_image** %18, align 8
  %95 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %96 = icmp ne %struct.gl_image* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %88
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* @GL_OUT_OF_MEMORY, align 4
  %100 = call i32 @gl_error(i32* %98, i32 %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %112

101:                                              ; preds = %88
  %102 = load i32*, i32** %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i64, i64* %16, align 8
  %108 = load i32, i32* @GL_RGBA, align 4
  %109 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %110 = load %struct.gl_image*, %struct.gl_image** %18, align 8
  %111 = call i32 @gl_TexImage1D(i32* %102, i64 %103, i64 %104, i64 %105, i32 %106, i64 %107, i32 %108, i32 %109, %struct.gl_image* %110)
  br label %112

112:                                              ; preds = %101, %97, %84, %69, %51, %41, %30, %22
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(i32*) #1

declare dso_local i32 @gl_error(i32*, i32, i8*) #1

declare dso_local i64 @decode_internal_format(i64) #1

declare dso_local %struct.gl_image* @read_color_image(i32*, i64, i64, i32, i32, i64) #1

declare dso_local i32 @gl_TexImage1D(i32*, i64, i64, i64, i32, i64, i32, i32, %struct.gl_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
