; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_glx.c_find_coreGLX.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_glx.c_find_coreGLX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLADGLXDisplay = common dso_local global i32* null, align 8
@GLADGLXscreen = common dso_local global i32 0, align 4
@GLAD_GLX_VERSION_1_0 = common dso_local global i32 0, align 4
@GLAD_GLX_VERSION_1_1 = common dso_local global i32 0, align 4
@GLAD_GLX_VERSION_1_2 = common dso_local global i32 0, align 4
@GLAD_GLX_VERSION_1_3 = common dso_local global i32 0, align 4
@GLAD_GLX_VERSION_1_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @find_coreGLX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_coreGLX(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32*, i32** @GLADGLXDisplay, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = call i32* @XOpenDisplay(i32 0)
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @XDefaultScreenOfDisplay(i32* %14)
  %16 = call i32 @XScreenNumberOfScreen(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %9, %2
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** @GLADGLXDisplay, align 8
  store i32* %21, i32** %3, align 8
  %22 = load i32, i32* @GLADGLXscreen, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %12
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @glXQueryVersion(i32* %25, i32* %5, i32* %6)
  %27 = load i32*, i32** %3, align 8
  store i32* %27, i32** @GLADGLXDisplay, align 8
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* @GLADGLXscreen, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 1
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i1 [ true, %31 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* @GLAD_GLX_VERSION_1_0, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %46, 1
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ true, %42 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* @GLAD_GLX_VERSION_1_1, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %59, label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 1
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ true, %53 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* @GLAD_GLX_VERSION_1_2, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %65, 3
  br i1 %66, label %70, label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %5, align 4
  %69 = icmp sgt i32 %68, 1
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ true, %64 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* @GLAD_GLX_VERSION_1_3, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 4
  br i1 %77, label %81, label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %5, align 4
  %80 = icmp sgt i32 %79, 1
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i1 [ true, %75 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* @GLAD_GLX_VERSION_1_4, align 4
  ret void
}

declare dso_local i32* @XOpenDisplay(i32) #1

declare dso_local i32 @XScreenNumberOfScreen(i32) #1

declare dso_local i32 @XDefaultScreenOfDisplay(i32*) #1

declare dso_local i32 @glXQueryVersion(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
