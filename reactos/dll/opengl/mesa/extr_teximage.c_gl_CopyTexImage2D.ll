; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_CopyTexImage2D.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_CopyTexImage2D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_image = type { i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"glCopyTexImage2D\00", align 1
@GL_TEXTURE_2D = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"glCopyTexImage2D(target)\00", align 1
@MAX_TEXTURE_LEVELS = common dso_local global i64 0, align 8
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"glCopyTexImage2D(level)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"glCopyTexImage2D(border)\00", align 1
@MAX_TEXTURE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"glCopyTexImage2D(width)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"glCopyTexImage2D(height)\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"glCopyTexImage2D(format)\00", align 1
@GL_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_CopyTexImage2D(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.gl_image*, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i64 %8, i64* %18, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i64 @INSIDE_BEGIN_END(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %9
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %27 = call i32 @gl_error(i32* %25, i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %134

28:                                               ; preds = %9
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @GL_TEXTURE_2D, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @GL_INVALID_ENUM, align 4
  %35 = call i32 @gl_error(i32* %33, i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %134

36:                                               ; preds = %28
  %37 = load i64, i64* %12, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %36
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* @GL_INVALID_VALUE, align 4
  %46 = call i32 @gl_error(i32* %44, i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %134

47:                                               ; preds = %39
  %48 = load i64, i64* %18, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i64, i64* %18, align 8
  %52 = icmp ne i64 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* @GL_INVALID_VALUE, align 4
  %56 = call i32 @gl_error(i32* %54, i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %134

57:                                               ; preds = %50, %47
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %18, align 8
  %61 = mul nsw i64 2, %60
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @MAX_TEXTURE_SIZE, align 4
  %66 = add nsw i32 2, %65
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %63, %57
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* @GL_INVALID_VALUE, align 4
  %74 = call i32 @gl_error(i32* %72, i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %134

75:                                               ; preds = %68
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %18, align 8
  %79 = mul nsw i64 2, %78
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @MAX_TEXTURE_SIZE, align 4
  %84 = add nsw i32 2, %83
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %17, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86, %81, %75
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* @GL_INVALID_VALUE, align 4
  %92 = call i32 @gl_error(i32* %90, i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %134

93:                                               ; preds = %86
  %94 = load i64, i64* %13, align 8
  %95 = call i64 @decode_internal_format(i64 %94)
  store i64 %95, i64* %19, align 8
  %96 = load i64, i64* %19, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load i64, i64* %13, align 8
  %100 = icmp sge i64 %99, 1
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i64, i64* %13, align 8
  %103 = icmp sle i64 %102, 4
  br i1 %103, label %104, label %108

104:                                              ; preds = %101, %93
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* @GL_INVALID_VALUE, align 4
  %107 = call i32 @gl_error(i32* %105, i32 %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %134

108:                                              ; preds = %101, %98
  %109 = load i32*, i32** %10, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %15, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i64, i64* %19, align 8
  %115 = call %struct.gl_image* @read_color_image(i32* %109, i64 %110, i64 %111, i32 %112, i32 %113, i64 %114)
  store %struct.gl_image* %115, %struct.gl_image** %20, align 8
  %116 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %117 = icmp ne %struct.gl_image* %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %108
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* @GL_OUT_OF_MEMORY, align 4
  %121 = call i32 @gl_error(i32* %119, i32 %120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %134

122:                                              ; preds = %108
  %123 = load i32*, i32** %10, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i64, i64* %18, align 8
  %130 = load i32, i32* @GL_RGBA, align 4
  %131 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %132 = load %struct.gl_image*, %struct.gl_image** %20, align 8
  %133 = call i32 @gl_TexImage2D(i32* %123, i64 %124, i64 %125, i64 %126, i32 %127, i32 %128, i64 %129, i32 %130, i32 %131, %struct.gl_image* %132)
  br label %134

134:                                              ; preds = %122, %118, %104, %89, %71, %53, %43, %32, %24
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(i32*) #1

declare dso_local i32 @gl_error(i32*, i32, i8*) #1

declare dso_local i64 @decode_internal_format(i64) #1

declare dso_local %struct.gl_image* @read_color_image(i32*, i64, i64, i32, i32, i64) #1

declare dso_local i32 @gl_TexImage2D(i32*, i64, i64, i64, i32, i32, i64, i32, i32, %struct.gl_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
