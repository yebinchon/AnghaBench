; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_platform_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_platform_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_platform = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_platform_destroy(%struct.gl_platform* %0) #0 {
  %2 = alloca %struct.gl_platform*, align 8
  store %struct.gl_platform* %0, %struct.gl_platform** %2, align 8
  %3 = load %struct.gl_platform*, %struct.gl_platform** %2, align 8
  %4 = icmp ne %struct.gl_platform* %3, null
  br i1 %4, label %5, label %47

5:                                                ; preds = %1
  %6 = load %struct.gl_platform*, %struct.gl_platform** %2, align 8
  %7 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = call i32 @wglMakeCurrent(i32* null, i32* null)
  %12 = load %struct.gl_platform*, %struct.gl_platform** %2, align 8
  %13 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @wglDeleteContext(i64 %14)
  br label %16

16:                                               ; preds = %10, %5
  %17 = load %struct.gl_platform*, %struct.gl_platform** %2, align 8
  %18 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.gl_platform*, %struct.gl_platform** %2, align 8
  %24 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.gl_platform*, %struct.gl_platform** %2, align 8
  %28 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ReleaseDC(i64 %26, i64 %30)
  br label %32

32:                                               ; preds = %22, %16
  %33 = load %struct.gl_platform*, %struct.gl_platform** %2, align 8
  %34 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.gl_platform*, %struct.gl_platform** %2, align 8
  %40 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @DestroyWindow(i64 %42)
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.gl_platform*, %struct.gl_platform** %2, align 8
  %46 = call i32 @bfree(%struct.gl_platform* %45)
  br label %47

47:                                               ; preds = %44, %1
  ret void
}

declare dso_local i32 @wglMakeCurrent(i32*, i32*) #1

declare dso_local i32 @wglDeleteContext(i64) #1

declare dso_local i32 @ReleaseDC(i64, i64) #1

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i32 @bfree(%struct.gl_platform*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
