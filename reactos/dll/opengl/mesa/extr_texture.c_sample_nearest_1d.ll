; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_sample_nearest_1d.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_sample_nearest_1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_texture_object = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_texture_object*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @sample_nearest_1d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sample_nearest_1d(%struct.gl_texture_object* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.gl_texture_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  store %struct.gl_texture_object* %0, %struct.gl_texture_object** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %50, %10
  %23 = load i64, i64* %21, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %28 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %29 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = load i64, i64* %21, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %17, align 8
  %38 = load i64, i64* %21, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32*, i32** %18, align 8
  %41 = load i64, i64* %21, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32*, i32** %19, align 8
  %44 = load i64, i64* %21, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32*, i32** %20, align 8
  %47 = load i64, i64* %21, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = call i32 @sample_1d_nearest(%struct.gl_texture_object* %27, i32 %32, i32 %36, i32* %39, i32* %42, i32* %45, i32* %48)
  br label %50

50:                                               ; preds = %26
  %51 = load i64, i64* %21, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %21, align 8
  br label %22

53:                                               ; preds = %22
  ret void
}

declare dso_local i32 @sample_1d_nearest(%struct.gl_texture_object*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
