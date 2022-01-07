; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_swimpl.c_sw_CreateContext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_swimpl.c_sw_CreateContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wgl_dc_data = type { %struct.sw_framebuffer* }
%struct.sw_framebuffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sw_context = type { i32, %struct.sw_framebuffer*, i32 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to initialize the mesa context.\0A\00", align 1
@GL_BACK = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sw_CreateContext(%struct.wgl_dc_data* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.wgl_dc_data*, align 8
  %4 = alloca %struct.sw_context*, align 8
  %5 = alloca %struct.sw_framebuffer*, align 8
  store %struct.wgl_dc_data* %0, %struct.wgl_dc_data** %3, align 8
  %6 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %3, align 8
  %7 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %6, i32 0, i32 0
  %8 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %7, align 8
  store %struct.sw_framebuffer* %8, %struct.sw_framebuffer** %5, align 8
  %9 = call i32 (...) @GetProcessHeap()
  %10 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %11 = call %struct.sw_context* @HeapAlloc(i32 %9, i32 %10, i32 24)
  store %struct.sw_context* %11, %struct.sw_context** %4, align 8
  %12 = load %struct.sw_context*, %struct.sw_context** %4, align 8
  %13 = icmp ne %struct.sw_context* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %5, align 8
  %17 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.sw_context*, %struct.sw_context** %4, align 8
  %20 = call i32 @gl_create_context(%struct.TYPE_2__* %18, i32* null, %struct.sw_context* %19)
  %21 = load %struct.sw_context*, %struct.sw_context** %4, align 8
  %22 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sw_context*, %struct.sw_context** %4, align 8
  %24 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %15
  %28 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load %struct.sw_context*, %struct.sw_context** %4, align 8
  %31 = call i32 @HeapFree(i32 %29, i32 0, %struct.sw_context* %30)
  store i32* null, i32** %2, align 8
  br label %52

32:                                               ; preds = %15
  %33 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %5, align 8
  %34 = load %struct.sw_context*, %struct.sw_context** %4, align 8
  %35 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %34, i32 0, i32 1
  store %struct.sw_framebuffer* %33, %struct.sw_framebuffer** %35, align 8
  %36 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %5, align 8
  %37 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @GL_BACK, align 4
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @GL_FRONT, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.sw_context*, %struct.sw_context** %4, align 8
  %49 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sw_context*, %struct.sw_context** %4, align 8
  %51 = bitcast %struct.sw_context* %50 to i32*
  store i32* %51, i32** %2, align 8
  br label %52

52:                                               ; preds = %46, %27, %14
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

declare dso_local %struct.sw_context* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @gl_create_context(%struct.TYPE_2__*, i32*, %struct.sw_context*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.sw_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
