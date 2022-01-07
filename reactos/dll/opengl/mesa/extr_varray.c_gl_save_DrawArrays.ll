; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_save_DrawArrays.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_save_DrawArrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glDrawArrays\00", align 1
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"glDrawArrays(count)\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"glDrawArrays(mode)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_save_DrawArrays(i32* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @INSIDE_BEGIN_END(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %16 = call i32 @gl_error(i32* %14, i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %51

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @GL_INVALID_VALUE, align 4
  %23 = call i32 @gl_error(i32* %21, i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %51

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %27 [
    i32 134, label %26
    i32 137, label %26
    i32 135, label %26
    i32 136, label %26
    i32 130, label %26
    i32 128, label %26
    i32 129, label %26
    i32 132, label %26
    i32 131, label %26
    i32 133, label %26
  ]

26:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24, %24, %24
  br label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @GL_INVALID_ENUM, align 4
  %30 = call i32 @gl_error(i32* %28, i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %51

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @gl_save_Begin(i32* %32, i32 %33)
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %45, %31
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @gl_save_ArrayElement(i32* %40, i64 %43)
  br label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %35

48:                                               ; preds = %35
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @gl_save_End(i32* %49)
  br label %51

51:                                               ; preds = %48, %27, %20, %13
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(i32*) #1

declare dso_local i32 @gl_error(i32*, i32, i8*) #1

declare dso_local i32 @gl_save_Begin(i32*, i32) #1

declare dso_local i32 @gl_save_ArrayElement(i32*, i64) #1

declare dso_local i32 @gl_save_End(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
