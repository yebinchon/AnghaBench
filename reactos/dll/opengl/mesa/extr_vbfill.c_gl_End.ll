; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_gl_End.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_gl_End.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_8__, %struct.vertex_buffer*, %struct.pixel_buffer* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)* }
%struct.vertex_buffer = type { i64, i64 }
%struct.pixel_buffer = type { i64, i64 }

@GL_BITMAP = common dso_local global i64 0, align 8
@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"glEnd\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@begin_time = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_End(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.pixel_buffer*, align 8
  %4 = alloca %struct.vertex_buffer*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 5
  %7 = load %struct.pixel_buffer*, %struct.pixel_buffer** %6, align 8
  store %struct.pixel_buffer* %7, %struct.pixel_buffer** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  %10 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  store %struct.vertex_buffer* %10, %struct.vertex_buffer** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @GL_BITMAP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %19 = call i32 @gl_error(%struct.TYPE_9__* %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = load i32, i32* @GL_TRUE, align 4
  %31 = call i32 @gl_transform_vb_part1(%struct.TYPE_9__* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load %struct.pixel_buffer*, %struct.pixel_buffer** %3, align 8
  %34 = getelementptr inbounds %struct.pixel_buffer, %struct.pixel_buffer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = call i32 @gl_flush_pb(%struct.TYPE_9__* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %43, align 8
  %45 = icmp ne i32 (%struct.TYPE_9__*)* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = call i32 %50(%struct.TYPE_9__* %51)
  br label %53

53:                                               ; preds = %46, %40
  %54 = load i64, i64* @GL_BITMAP, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.pixel_buffer*, %struct.pixel_buffer** %3, align 8
  %58 = getelementptr inbounds %struct.pixel_buffer, %struct.pixel_buffer* %57, i32 0, i32 1
  store i64 %54, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %16
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @gl_transform_vb_part1(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @gl_flush_pb(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
