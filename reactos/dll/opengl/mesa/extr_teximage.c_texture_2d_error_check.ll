; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_texture_2d_error_check.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_texture_2d_error_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_TEXTURE_2D = common dso_local global i64 0, align 8
@GL_PROXY_TEXTURE_2D = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"glTexImage2D(target)\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@MAX_TEXTURE_LEVELS = common dso_local global i64 0, align 8
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"glTexImage2D(level)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"glTexImage2D(internalFormat)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"glTexImage2D(border)\00", align 1
@MAX_TEXTURE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"glTexImage2D(width)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"glTexImage2D(height)\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"glTexImage2D(width != 2^k + 2*border)\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"glTexImage2D(height != 2^k + 2*border)\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"glTexImage2D(format)\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"glTexImage2D(type)\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, i64, i64, i64, i64, i64)* @texture_2d_error_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @texture_2d_error_check(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @GL_TEXTURE_2D, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %9
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @GL_PROXY_TEXTURE_2D, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @GL_INVALID_ENUM, align 4
  %31 = call i32 @gl_error(i32* %29, i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @GL_TRUE, align 4
  store i32 %32, i32* %10, align 4
  br label %155

33:                                               ; preds = %24, %9
  %34 = load i64, i64* %13, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %33
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* @GL_INVALID_VALUE, align 4
  %43 = call i32 @gl_error(i32* %41, i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @GL_TRUE, align 4
  store i32 %44, i32* %10, align 4
  br label %155

45:                                               ; preds = %36
  %46 = load i64, i64* %14, align 8
  %47 = call i64 @decode_internal_format(i64 %46)
  store i64 %47, i64* %20, align 8
  %48 = load i64, i64* %20, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* @GL_INVALID_VALUE, align 4
  %53 = call i32 @gl_error(i32* %51, i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @GL_TRUE, align 4
  store i32 %54, i32* %10, align 4
  br label %155

55:                                               ; preds = %45
  %56 = load i64, i64* %19, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i64, i64* %19, align 8
  %60 = icmp ne i64 %59, 1
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @GL_PROXY_TEXTURE_2D, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* @GL_INVALID_VALUE, align 4
  %68 = call i32 @gl_error(i32* %66, i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @GL_TRUE, align 4
  store i32 %70, i32* %10, align 4
  br label %155

71:                                               ; preds = %58, %55
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %19, align 8
  %74 = mul nsw i64 2, %73
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load i64, i64* %17, align 8
  %78 = load i32, i32* @MAX_TEXTURE_SIZE, align 4
  %79 = add nsw i32 2, %78
  %80 = sext i32 %79 to i64
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76, %71
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* @GL_PROXY_TEXTURE_2D, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* @GL_INVALID_VALUE, align 4
  %89 = call i32 @gl_error(i32* %87, i32 %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* @GL_TRUE, align 4
  store i32 %91, i32* %10, align 4
  br label %155

92:                                               ; preds = %76
  %93 = load i64, i64* %18, align 8
  %94 = load i64, i64* %19, align 8
  %95 = mul nsw i64 2, %94
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %18, align 8
  %99 = load i32, i32* @MAX_TEXTURE_SIZE, align 4
  %100 = add nsw i32 2, %99
  %101 = sext i32 %100 to i64
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %97, %92
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* @GL_PROXY_TEXTURE_2D, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* @GL_INVALID_VALUE, align 4
  %110 = call i32 @gl_error(i32* %108, i32 %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* @GL_TRUE, align 4
  store i32 %112, i32* %10, align 4
  br label %155

113:                                              ; preds = %97
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* %19, align 8
  %116 = mul nsw i64 2, %115
  %117 = sub nsw i64 %114, %116
  %118 = call i64 @logbase2(i64 %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* @GL_INVALID_VALUE, align 4
  %123 = call i32 @gl_error(i32* %121, i32 %122, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* @GL_TRUE, align 4
  store i32 %124, i32* %10, align 4
  br label %155

125:                                              ; preds = %113
  %126 = load i64, i64* %18, align 8
  %127 = load i64, i64* %19, align 8
  %128 = mul nsw i64 2, %127
  %129 = sub nsw i64 %126, %128
  %130 = call i64 @logbase2(i64 %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* @GL_INVALID_VALUE, align 4
  %135 = call i32 @gl_error(i32* %133, i32 %134, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %136 = load i32, i32* @GL_TRUE, align 4
  store i32 %136, i32* %10, align 4
  br label %155

137:                                              ; preds = %125
  %138 = load i64, i64* %15, align 8
  switch i64 %138, label %140 [
    i64 140, label %139
    i64 134, label %139
    i64 138, label %139
    i64 142, label %139
    i64 145, label %139
    i64 133, label %139
    i64 143, label %139
    i64 132, label %139
    i64 144, label %139
    i64 136, label %139
    i64 135, label %139
  ]

139:                                              ; preds = %137, %137, %137, %137, %137, %137, %137, %137, %137, %137, %137
  br label %145

140:                                              ; preds = %137
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* @GL_INVALID_ENUM, align 4
  %143 = call i32 @gl_error(i32* %141, i32 %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %144 = load i32, i32* @GL_TRUE, align 4
  store i32 %144, i32* %10, align 4
  br label %155

145:                                              ; preds = %139
  %146 = load i64, i64* %16, align 8
  switch i64 %146, label %148 [
    i64 130, label %147
    i64 141, label %147
    i64 128, label %147
    i64 131, label %147
    i64 129, label %147
    i64 137, label %147
    i64 139, label %147
  ]

147:                                              ; preds = %145, %145, %145, %145, %145, %145, %145
  br label %153

148:                                              ; preds = %145
  %149 = load i32*, i32** %11, align 8
  %150 = load i32, i32* @GL_INVALID_ENUM, align 4
  %151 = call i32 @gl_error(i32* %149, i32 %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %152 = load i32, i32* @GL_TRUE, align 4
  store i32 %152, i32* %10, align 4
  br label %155

153:                                              ; preds = %147
  %154 = load i32, i32* @GL_FALSE, align 4
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %153, %148, %140, %132, %120, %111, %90, %69, %50, %40, %28
  %156 = load i32, i32* %10, align 4
  ret i32 %156
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
