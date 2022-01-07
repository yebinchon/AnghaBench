; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_set_draw_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_set_draw_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i64, %struct.TYPE_4__*, %struct.wined3d_gl_info* }
%struct.TYPE_4__ = type { i64 }
%struct.wined3d_gl_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [15 x i8] c"glDrawBuffer()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_set_draw_buffer(%struct.wined3d_context* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 2
  %10 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  store %struct.wined3d_gl_info* %10, %struct.wined3d_gl_info** %5, align 8
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %22 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %21, i32 0, i32 0
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i64* [ %19, %15 ], [ %22, %20 ]
  store i64* %24, i64** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @context_generate_rt_mask(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %43

32:                                               ; preds = %23
  %33 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %34 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 %37(i32 %38)
  %40 = call i32 @checkGLcall(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %41 = load i64, i64* %7, align 8
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %32, %31
  ret void
}

declare dso_local i64 @context_generate_rt_mask(i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
