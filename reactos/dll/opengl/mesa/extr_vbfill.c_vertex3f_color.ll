; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_vertex3f_color.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_vertex3f_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.vertex_buffer* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.vertex_buffer = type { i64, i32*, i32*, i32* }

@VB_MAX = common dso_local global i64 0, align 8
@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i32)* @vertex3f_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vertex3f_color(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vertex_buffer*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.vertex_buffer*, %struct.vertex_buffer** %12, align 8
  store %struct.vertex_buffer* %13, %struct.vertex_buffer** %9, align 8
  %14 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %15 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %18 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ASSIGN_3V(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %28 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @COPY_4UBV(i32 %32, i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %43 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %51 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @VB_MAX, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = load i32, i32* @GL_FALSE, align 4
  %58 = call i32 @gl_transform_vb_part1(%struct.TYPE_6__* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %4
  ret void
}

declare dso_local i32 @ASSIGN_3V(i32, i32, i32, i32) #1

declare dso_local i32 @COPY_4UBV(i32, i32) #1

declare dso_local i32 @gl_transform_vb_part1(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
