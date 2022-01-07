; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_utils.c_gl_vao_draw_data.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_utils.c_gl_vao_draw_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_vao = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i64)*, i32 (i32, i32)*, i32 (i32, i64, i8*, i32)* }

@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_STREAM_DRAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_vao_draw_data(%struct.gl_vao* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.gl_vao*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  store %struct.gl_vao* %0, %struct.gl_vao** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.gl_vao*, %struct.gl_vao** %5, align 8
  %11 = getelementptr inbounds %struct.gl_vao, %struct.gl_vao* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %20 = load %struct.gl_vao*, %struct.gl_vao** %5, align 8
  %21 = getelementptr inbounds %struct.gl_vao, %struct.gl_vao* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %18(i32 %19, i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32 (i32, i64, i8*, i32)*, i32 (i32, i64, i8*, i32)** %25, align 8
  %27 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.gl_vao*, %struct.gl_vao** %5, align 8
  %30 = getelementptr inbounds %struct.gl_vao, %struct.gl_vao* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %28, %31
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @GL_STREAM_DRAW, align 4
  %35 = call i32 %26(i32 %27, i64 %32, i8* %33, i32 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (i32, i32)*, i32 (i32, i32)** %37, align 8
  %39 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %40 = call i32 %38(i32 %39, i32 0)
  br label %41

41:                                               ; preds = %15, %4
  %42 = load %struct.gl_vao*, %struct.gl_vao** %5, align 8
  %43 = call i32 @gl_vao_bind(%struct.gl_vao* %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 %46(i32 %47, i32 0, i64 %48)
  %50 = load %struct.gl_vao*, %struct.gl_vao** %5, align 8
  %51 = call i32 @gl_vao_unbind(%struct.gl_vao* %50)
  ret void
}

declare dso_local i32 @gl_vao_bind(%struct.gl_vao*) #1

declare dso_local i32 @gl_vao_unbind(%struct.gl_vao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
