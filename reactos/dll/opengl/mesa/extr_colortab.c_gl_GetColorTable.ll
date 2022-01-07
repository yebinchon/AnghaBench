; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_colortab.c_gl_GetColorTable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_colortab.c_gl_GetColorTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"glGetBooleanv\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"glGetColorTableEXT(target)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"glGetColorTableEXT not implemented!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetColorTable(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @INSIDE_BEGIN_END(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %17 = call i32 @gl_error(i32* %15, i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %30

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %23 [
    i32 130, label %20
    i32 129, label %21
    i32 128, label %22
  ]

20:                                               ; preds = %18
  br label %27

21:                                               ; preds = %18
  br label %27

22:                                               ; preds = %18
  br label %27

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @GL_INVALID_ENUM, align 4
  %26 = call i32 @gl_error(i32* %24, i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %30

27:                                               ; preds = %22, %21, %20
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @gl_problem(i32* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %23, %14
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(i32*) #1

declare dso_local i32 @gl_error(i32*, i32, i8*) #1

declare dso_local i32 @gl_problem(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
