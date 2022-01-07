; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_unpack_texsubimage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_unpack_texsubimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_image = type { i32 }

@GL_BITMAP = common dso_local global i64 0, align 8
@GL_COLOR_INDEX = common dso_local global i64 0, align 8
@GL_STENCIL_INDEX = common dso_local global i64 0, align 8
@GL_DEPTH_COMPONENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gl_image* @gl_unpack_texsubimage(i32* %0, i32 %1, i32 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.gl_image*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* @GL_BITMAP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @GL_COLOR_INDEX, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store %struct.gl_image* null, %struct.gl_image** %7, align 8
  br label %44

22:                                               ; preds = %17, %6
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @GL_STENCIL_INDEX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @GL_DEPTH_COMPONENT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  store %struct.gl_image* null, %struct.gl_image** %7, align 8
  br label %44

31:                                               ; preds = %26
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @gl_sizeof_type(i64 %32)
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store %struct.gl_image* null, %struct.gl_image** %7, align 8
  br label %44

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call %struct.gl_image* @gl_unpack_image(i32* %37, i32 %38, i32 %39, i64 %40, i64 %41, i32* %42)
  store %struct.gl_image* %43, %struct.gl_image** %7, align 8
  br label %44

44:                                               ; preds = %36, %35, %30, %21
  %45 = load %struct.gl_image*, %struct.gl_image** %7, align 8
  ret %struct.gl_image* %45
}

declare dso_local i64 @gl_sizeof_type(i64) #1

declare dso_local %struct.gl_image* @gl_unpack_image(i32*, i32, i32, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
