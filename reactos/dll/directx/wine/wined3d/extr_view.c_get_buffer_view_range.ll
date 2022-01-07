; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_get_buffer_view_range.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_get_buffer_view_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_view_desc = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.wined3d_format = type { i32 }

@WINED3DFMT_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_buffer*, %struct.wined3d_view_desc*, %struct.wined3d_format*, i32*, i32*)* @get_buffer_view_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_buffer_view_range(%struct.wined3d_buffer* %0, %struct.wined3d_view_desc* %1, %struct.wined3d_format* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.wined3d_buffer*, align 8
  %7 = alloca %struct.wined3d_view_desc*, align 8
  %8 = alloca %struct.wined3d_format*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.wined3d_buffer* %0, %struct.wined3d_buffer** %6, align 8
  store %struct.wined3d_view_desc* %1, %struct.wined3d_view_desc** %7, align 8
  store %struct.wined3d_format* %2, %struct.wined3d_format** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %7, align 8
  %12 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WINED3DFMT_UNKNOWN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %5
  %17 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %7, align 8
  %18 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul i32 %21, %25
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %7, align 8
  %29 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul i32 %32, %36
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %60

39:                                               ; preds = %5
  %40 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %7, align 8
  %41 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %46 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul i32 %44, %47
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %7, align 8
  %51 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %56 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul i32 %54, %57
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %39, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
