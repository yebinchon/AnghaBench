; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_swimpl.c_sw_GetProcAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_swimpl.c_sw_GetProcAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"glColorTableEXT\00", align 1
@_mesa_ColorTableEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"glColorSubTableEXT\00", align 1
@_mesa_ColorSubTableEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"glColorGetTableEXT\00", align 1
@_mesa_GetColorTableEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"glGetColorTableParameterivEXT\00", align 1
@_mesa_GetColorTableParameterivEXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"glGetColorTableParameterfvEXT\00", align 1
@_mesa_GetColorTableParameterfvEXT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"glAddSwapHintRectWIN\00", align 1
@_swimpl_AddSwapHintRectWIN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Asking for proc address %s, returning NULL.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sw_GetProcAddress(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @strcmp(i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @_mesa_ColorTableEXT, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %2, align 8
  br label %54

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @strcmp(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @_mesa_ColorSubTableEXT, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %2, align 8
  br label %54

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @strcmp(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @_mesa_GetColorTableEXT, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %2, align 8
  br label %54

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @_mesa_GetColorTableParameterivEXT, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %2, align 8
  br label %54

35:                                               ; preds = %27
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @strcmp(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @_mesa_GetColorTableParameterfvEXT, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %2, align 8
  br label %54

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @strcmp(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @_swimpl_AddSwapHintRectWIN, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %2, align 8
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  store i32* null, i32** %2, align 8
  br label %54

54:                                               ; preds = %51, %47, %39, %31, %23, %15, %7
  %55 = load i32*, i32** %2, align 8
  ret i32* %55
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
