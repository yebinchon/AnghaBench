; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_cocoa.c_test_gl_version.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_cocoa.c_test_gl_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@kCGLPFAOpenGLProfile = common dso_local global i64 0, align 8
@kCGLPFAAccelerated = common dso_local global i64 0, align 8
@kCGLPFAAllowOfflineRenderers = common dso_local global i64 0, align 8
@kCGLPFASupportsAutomaticGraphicsSwitching = common dso_local global i64 0, align 8
@kCGLBadAttribute = common dso_local global i64 0, align 8
@kCGLNoError = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"error creating CGL pixel format: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ra_ctx*, i32)* @test_gl_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_gl_version(%struct.ra_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.priv*, align 8
  %6 = alloca [6 x i64], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %5, align 8
  %13 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %14 = load i64, i64* @kCGLPFAOpenGLProfile, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 1
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds i64, i64* %15, i64 1
  %19 = load i64, i64* @kCGLPFAAccelerated, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 1
  %21 = load i64, i64* @kCGLPFAAllowOfflineRenderers, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 1
  %23 = load i64, i64* @kCGLPFASupportsAutomaticGraphicsSwitching, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %26 = call i32 @MP_ARRAY_SIZE(i64* %25)
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  %28 = load %struct.priv*, %struct.priv** %5, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 %37
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %2
  %40 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %41 = load %struct.priv*, %struct.priv** %5, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 1
  %43 = call i64 @CGLChoosePixelFormat(i64* %40, i32* %42, i32* %7)
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %53, %39
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @kCGLBadAttribute, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 3
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i1 [ false, %44 ], [ %50, %48 ]
  br i1 %52, label %53, label %62

53:                                               ; preds = %51
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 %56
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %59 = load %struct.priv*, %struct.priv** %5, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 1
  %61 = call i64 @CGLChoosePixelFormat(i64* %58, i32* %60, i32* %7)
  store i64 %61, i64* %8, align 8
  br label %44

62:                                               ; preds = %51
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @kCGLNoError, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @CGLErrorString(i64 %70)
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @MP_ERR(i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %71, i64 %72)
  br label %81

74:                                               ; preds = %62
  %75 = load %struct.priv*, %struct.priv** %5, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.priv*, %struct.priv** %5, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 0
  %80 = call i64 @CGLCreateContext(i32 %77, i32 0, i32* %79)
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %74, %66
  %82 = load i64, i64* %8, align 8
  ret i64 %82
}

declare dso_local i32 @MP_ARRAY_SIZE(i64*) #1

declare dso_local i64 @CGLChoosePixelFormat(i64*, i32*, i32*) #1

declare dso_local i32 @MP_ERR(i32, i8*, i32, i64) #1

declare dso_local i32 @CGLErrorString(i64) #1

declare dso_local i64 @CGLCreateContext(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
