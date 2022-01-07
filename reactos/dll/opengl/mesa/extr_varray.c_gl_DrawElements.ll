; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_DrawElements.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_DrawElements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"glDrawElements\00", align 1
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"glDrawElements(count)\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"glDrawArrays(mode)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"glDrawElements(type)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_DrawElements(i32* %0, i32 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @INSIDE_BEGIN_END(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %23 = call i32 @gl_error(i32* %21, i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %113

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @GL_INVALID_VALUE, align 4
  %30 = call i32 @gl_error(i32* %28, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %113

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %34 [
    i32 137, label %33
    i32 140, label %33
    i32 138, label %33
    i32 139, label %33
    i32 133, label %33
    i32 131, label %33
    i32 132, label %33
    i32 135, label %33
    i32 134, label %33
    i32 136, label %33
  ]

33:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  br label %38

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @GL_INVALID_ENUM, align 4
  %37 = call i32 @gl_error(i32* %35, i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %113

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %109 [
    i32 130, label %40
    i32 128, label %63
    i32 129, label %86
  ]

40:                                               ; preds = %38
  %41 = load i32*, i32** %10, align 8
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @gl_Begin(i32* %42, i32 %43)
  store i64 0, i64* %12, align 8
  br label %45

45:                                               ; preds = %57, %40
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @gl_ArrayElement(i32* %50, i64 %55)
  br label %57

57:                                               ; preds = %49
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %45

60:                                               ; preds = %45
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @gl_End(i32* %61)
  br label %113

63:                                               ; preds = %38
  %64 = load i32*, i32** %10, align 8
  store i32* %64, i32** %13, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @gl_Begin(i32* %65, i32 %66)
  store i64 0, i64* %14, align 8
  br label %68

68:                                               ; preds = %80, %63
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 @gl_ArrayElement(i32* %73, i64 %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i64, i64* %14, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %14, align 8
  br label %68

83:                                               ; preds = %68
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @gl_End(i32* %84)
  br label %113

86:                                               ; preds = %38
  %87 = load i32*, i32** %10, align 8
  store i32* %87, i32** %15, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @gl_Begin(i32* %88, i32 %89)
  store i64 0, i64* %16, align 8
  br label %91

91:                                               ; preds = %103, %86
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i32*, i32** %6, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = call i32 @gl_ArrayElement(i32* %96, i64 %101)
  br label %103

103:                                              ; preds = %95
  %104 = load i64, i64* %16, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %16, align 8
  br label %91

106:                                              ; preds = %91
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @gl_End(i32* %107)
  br label %113

109:                                              ; preds = %38
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* @GL_INVALID_ENUM, align 4
  %112 = call i32 @gl_error(i32* %110, i32 %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %20, %27, %34, %109, %106, %83, %60
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(i32*) #1

declare dso_local i32 @gl_error(i32*, i32, i8*) #1

declare dso_local i32 @gl_Begin(i32*, i32) #1

declare dso_local i32 @gl_ArrayElement(i32*, i64) #1

declare dso_local i32 @gl_End(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
