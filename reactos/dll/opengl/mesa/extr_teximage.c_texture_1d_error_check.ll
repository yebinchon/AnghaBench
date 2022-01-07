; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_texture_1d_error_check.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_texture_1d_error_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_TEXTURE_1D = common dso_local global i64 0, align 8
@GL_PROXY_TEXTURE_1D = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glTexImage1D\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@MAX_TEXTURE_LEVELS = common dso_local global i64 0, align 8
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"glTexImage1D(level)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"glTexImage1D(internalFormat)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"glTexImage1D(border)\00", align 1
@MAX_TEXTURE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"glTexImage1D(width)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"glTexImage1D(width != 2^k + 2*border)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"glTexImage1D(format)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"glTexImage1D(type)\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, i64, i64, i64, i64)* @texture_1d_error_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @texture_1d_error_check(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @GL_TEXTURE_1D, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @GL_PROXY_TEXTURE_1D, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* @GL_INVALID_ENUM, align 4
  %29 = call i32 @gl_error(i32* %27, i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @GL_TRUE, align 4
  store i32 %30, i32* %9, align 4
  br label %120

31:                                               ; preds = %22, %8
  %32 = load i64, i64* %12, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %31
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @GL_INVALID_VALUE, align 4
  %41 = call i32 @gl_error(i32* %39, i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @GL_TRUE, align 4
  store i32 %42, i32* %9, align 4
  br label %120

43:                                               ; preds = %34
  %44 = load i64, i64* %13, align 8
  %45 = call i64 @decode_internal_format(i64 %44)
  store i64 %45, i64* %18, align 8
  %46 = load i64, i64* %18, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* @GL_INVALID_VALUE, align 4
  %51 = call i32 @gl_error(i32* %49, i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @GL_TRUE, align 4
  store i32 %52, i32* %9, align 4
  br label %120

53:                                               ; preds = %43
  %54 = load i64, i64* %17, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i64, i64* %17, align 8
  %58 = icmp ne i64 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @GL_PROXY_TEXTURE_1D, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* @GL_INVALID_VALUE, align 4
  %66 = call i32 @gl_error(i32* %64, i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* @GL_TRUE, align 4
  store i32 %68, i32* %9, align 4
  br label %120

69:                                               ; preds = %56, %53
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %17, align 8
  %72 = mul nsw i64 2, %71
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load i64, i64* %16, align 8
  %76 = load i32, i32* @MAX_TEXTURE_SIZE, align 4
  %77 = add nsw i32 2, %76
  %78 = sext i32 %77 to i64
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74, %69
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @GL_PROXY_TEXTURE_1D, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* @GL_INVALID_VALUE, align 4
  %87 = call i32 @gl_error(i32* %85, i32 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* @GL_TRUE, align 4
  store i32 %89, i32* %9, align 4
  br label %120

90:                                               ; preds = %74
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* %17, align 8
  %93 = mul nsw i64 2, %92
  %94 = sub nsw i64 %91, %93
  %95 = call i64 @logbase2(i64 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* @GL_INVALID_VALUE, align 4
  %100 = call i32 @gl_error(i32* %98, i32 %99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32, i32* @GL_TRUE, align 4
  store i32 %101, i32* %9, align 4
  br label %120

102:                                              ; preds = %90
  %103 = load i64, i64* %14, align 8
  switch i64 %103, label %105 [
    i64 138, label %104
    i64 133, label %104
    i64 136, label %104
    i64 140, label %104
    i64 143, label %104
    i64 132, label %104
    i64 141, label %104
    i64 131, label %104
    i64 142, label %104
    i64 135, label %104
    i64 134, label %104
  ]

104:                                              ; preds = %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102
  br label %110

105:                                              ; preds = %102
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* @GL_INVALID_ENUM, align 4
  %108 = call i32 @gl_error(i32* %106, i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32, i32* @GL_TRUE, align 4
  store i32 %109, i32* %9, align 4
  br label %120

110:                                              ; preds = %104
  %111 = load i64, i64* %15, align 8
  switch i64 %111, label %113 [
    i64 129, label %112
    i64 139, label %112
    i64 128, label %112
    i64 130, label %112
    i64 137, label %112
  ]

112:                                              ; preds = %110, %110, %110, %110, %110
  br label %118

113:                                              ; preds = %110
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* @GL_INVALID_ENUM, align 4
  %116 = call i32 @gl_error(i32* %114, i32 %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %117 = load i32, i32* @GL_TRUE, align 4
  store i32 %117, i32* %9, align 4
  br label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @GL_FALSE, align 4
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %118, %113, %105, %97, %88, %67, %48, %38, %26
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @gl_error(i32*, i32, i8*) #1

declare dso_local i64 @decode_internal_format(i64) #1

declare dso_local i64 @logbase2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
