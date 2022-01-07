; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_gl_eval_vertex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_gl_eval_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.vertex_buffer* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.vertex_buffer = type { i64, i64*, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@VERTEX4_BIT = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@VB_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_eval_vertex(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vertex_buffer*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  %17 = load %struct.vertex_buffer*, %struct.vertex_buffer** %16, align 8
  store %struct.vertex_buffer* %17, %struct.vertex_buffer** %13, align 8
  %18 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %19 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i32, i32* @VERTEX4_BIT, align 4
  %22 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %23 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @GL_FALSE, align 4
  %25 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %26 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %28 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %14, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @COPY_4V(i32 %32, i32* %33)
  %35 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %36 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @COPY_3V(i32 %40, i32* %41)
  %43 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %44 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %14, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @COPY_4UBV(i32 %48, i32* %49)
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %53 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %51, i64* %56, align 8
  %57 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %58 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %14, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @COPY_4V(i32 %62, i32* %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %70 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %14, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load i64, i64* %14, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %78 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* @VB_MAX, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %6
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = load i32, i32* @GL_FALSE, align 4
  %85 = call i32 @gl_transform_vb_part1(%struct.TYPE_13__* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %6
  ret void
}

declare dso_local i32 @COPY_4V(i32, i32*) #1

declare dso_local i32 @COPY_3V(i32, i32*) #1

declare dso_local i32 @COPY_4UBV(i32, i32*) #1

declare dso_local i32 @gl_transform_vb_part1(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
