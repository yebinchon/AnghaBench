; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_save_DrawElements.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_save_DrawElements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"glDrawElements(type)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_save_DrawElements(i32* %0, i32 %1, i64 %2, i32 %3, i32* %4) #0 {
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
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %87 [
    i32 130, label %18
    i32 128, label %41
    i32 129, label %64
  ]

18:                                               ; preds = %5
  %19 = load i32*, i32** %10, align 8
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @gl_save_Begin(i32* %20, i32 %21)
  store i64 0, i64* %12, align 8
  br label %23

23:                                               ; preds = %35, %18
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = call i32 @gl_save_ArrayElement(i32* %28, i64 %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %12, align 8
  br label %23

38:                                               ; preds = %23
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @gl_save_End(i32* %39)
  br label %91

41:                                               ; preds = %5
  %42 = load i32*, i32** %10, align 8
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @gl_save_Begin(i32* %43, i32 %44)
  store i64 0, i64* %14, align 8
  br label %46

46:                                               ; preds = %58, %41
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @gl_save_ArrayElement(i32* %51, i64 %56)
  br label %58

58:                                               ; preds = %50
  %59 = load i64, i64* %14, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %14, align 8
  br label %46

61:                                               ; preds = %46
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @gl_save_End(i32* %62)
  br label %91

64:                                               ; preds = %5
  %65 = load i32*, i32** %10, align 8
  store i32* %65, i32** %15, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @gl_save_Begin(i32* %66, i32 %67)
  store i64 0, i64* %16, align 8
  br label %69

69:                                               ; preds = %81, %64
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = load i64, i64* %16, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = call i32 @gl_save_ArrayElement(i32* %74, i64 %79)
  br label %81

81:                                               ; preds = %73
  %82 = load i64, i64* %16, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %16, align 8
  br label %69

84:                                               ; preds = %69
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @gl_save_End(i32* %85)
  br label %91

87:                                               ; preds = %5
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @GL_INVALID_ENUM, align 4
  %90 = call i32 @gl_error(i32* %88, i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %84, %61, %38
  ret void
}

declare dso_local i32 @gl_save_Begin(i32*, i32) #1

declare dso_local i32 @gl_save_ArrayElement(i32*, i64) #1

declare dso_local i32 @gl_save_End(i32*) #1

declare dso_local i32 @gl_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
