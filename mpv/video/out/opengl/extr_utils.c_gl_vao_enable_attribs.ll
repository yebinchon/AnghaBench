; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_utils.c_gl_vao_enable_attribs.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_utils.c_gl_vao_enable_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_vao = type { i32, i32, %struct.ra_renderpass_input*, %struct.TYPE_2__* }
%struct.ra_renderpass_input = type { i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32, i8*)*, i32 (i32)* }

@GL_INT = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_vao*)* @gl_vao_enable_attribs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_vao_enable_attribs(%struct.gl_vao* %0) #0 {
  %2 = alloca %struct.gl_vao*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ra_renderpass_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gl_vao* %0, %struct.gl_vao** %2, align 8
  %8 = load %struct.gl_vao*, %struct.gl_vao** %2, align 8
  %9 = getelementptr inbounds %struct.gl_vao, %struct.gl_vao* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %64, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.gl_vao*, %struct.gl_vao** %2, align 8
  %14 = getelementptr inbounds %struct.gl_vao, %struct.gl_vao* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %11
  %18 = load %struct.gl_vao*, %struct.gl_vao** %2, align 8
  %19 = getelementptr inbounds %struct.gl_vao, %struct.gl_vao* %18, i32 0, i32 2
  %20 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %20, i64 %22
  store %struct.ra_renderpass_input* %23, %struct.ra_renderpass_input** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %24 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %5, align 8
  %25 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %33 [
    i32 128, label %27
    i32 129, label %29
    i32 130, label %31
  ]

27:                                               ; preds = %17
  %28 = load i32, i32* @GL_INT, align 4
  store i32 %28, i32* %6, align 4
  br label %35

29:                                               ; preds = %17
  %30 = load i32, i32* @GL_FLOAT, align 4
  store i32 %30, i32* %6, align 4
  br label %35

31:                                               ; preds = %17
  %32 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  store i32 %32, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %35

33:                                               ; preds = %17
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %31, %29, %27
  %36 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %5, align 8
  %37 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 %44(i32 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (i32, i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i32, i8*)** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %5, align 8
  %52 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.gl_vao*, %struct.gl_vao** %2, align 8
  %57 = getelementptr inbounds %struct.gl_vao, %struct.gl_vao* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %5, align 8
  %60 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 %49(i32 %50, i32 %53, i32 %54, i32 %55, i32 %58, i8* %62)
  br label %64

64:                                               ; preds = %35
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %11

67:                                               ; preds = %11
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
