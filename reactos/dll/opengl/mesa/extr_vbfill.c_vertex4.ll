; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_vertex4.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_vertex4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.vertex_buffer* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.vertex_buffer = type { i64, i32, i32*, i32*, i32*, i32*, i32* }

@VERTEX4_BIT = common dso_local global i32 0, align 4
@VB_MAX = common dso_local global i64 0, align 8
@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i32, i32)* @vertex4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vertex4(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vertex_buffer*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.vertex_buffer*, %struct.vertex_buffer** %14, align 8
  store %struct.vertex_buffer* %15, %struct.vertex_buffer** %11, align 8
  %16 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %17 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %20 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %12, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ASSIGN_4V(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %31 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @COPY_4UBV(i32 %35, i32 %39)
  %41 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %42 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @COPY_3V(i32 %46, i32 %50)
  %52 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %53 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @COPY_4V(i32 %57, i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %68 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* @VERTEX4_BIT, align 4
  %73 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %74 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %79 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @VB_MAX, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %5
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = load i32, i32* @GL_FALSE, align 4
  %86 = call i32 @gl_transform_vb_part1(%struct.TYPE_6__* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %5
  ret void
}

declare dso_local i32 @ASSIGN_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @COPY_4UBV(i32, i32) #1

declare dso_local i32 @COPY_3V(i32, i32) #1

declare dso_local i32 @COPY_4V(i32, i32) #1

declare dso_local i32 @gl_transform_vb_part1(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
