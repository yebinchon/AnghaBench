; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-indexbuffer.c_init_ib.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-indexbuffer.c_init_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_index_buffer = type { i32*, i64, i32, i32 }

@GL_DYNAMIC_DRAW = common dso_local global i32 0, align 4
@GL_STATIC_DRAW = common dso_local global i32 0, align 4
@GL_ELEMENT_ARRAY_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_index_buffer*)* @init_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ib(%struct.gs_index_buffer* %0) #0 {
  %2 = alloca %struct.gs_index_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gs_index_buffer* %0, %struct.gs_index_buffer** %2, align 8
  %5 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @GL_DYNAMIC_DRAW, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @GL_STATIC_DRAW, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %16 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %2, align 8
  %17 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %16, i32 0, i32 3
  %18 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %2, align 8
  %22 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @gl_create_buffer(i32 %15, i32* %17, i32 %20, i32* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %2, align 8
  %27 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %13
  %31 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %2, align 8
  %32 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @bfree(i32* %33)
  %35 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %2, align 8
  %36 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %13
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @gl_create_buffer(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @bfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
