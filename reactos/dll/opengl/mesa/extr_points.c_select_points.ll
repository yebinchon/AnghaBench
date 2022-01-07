; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_points.c_select_points.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_points.c_select_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vertex_buffer* }
%struct.vertex_buffer = type { i64*, i32** }

@DEPTH_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, i64)* @select_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_points(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vertex_buffer*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.vertex_buffer*, %struct.vertex_buffer** %10, align 8
  store %struct.vertex_buffer* %11, %struct.vertex_buffer** %7, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %39, %3
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %17
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DEPTH_SCALE, align 4
  %36 = sdiv i32 %34, %35
  %37 = call i32 @gl_update_hitflag(%struct.TYPE_4__* %26, i32 %36)
  br label %38

38:                                               ; preds = %25, %17
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %13

42:                                               ; preds = %13
  ret void
}

declare dso_local i32 @gl_update_hitflag(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
