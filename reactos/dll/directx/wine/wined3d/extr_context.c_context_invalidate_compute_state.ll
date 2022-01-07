; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_invalidate_compute_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_invalidate_compute_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@STATE_COMPUTE_OFFSET = common dso_local global i64 0, align 8
@CHAR_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_invalidate_compute_state(%struct.wined3d_context* %0, i64 %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @STATE_COMPUTE_OFFSET, align 8
  %16 = sub i64 %14, %15
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* @CHAR_BIT, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = udiv i64 %17, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @CHAR_BIT, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = sub i64 %26, 1
  %28 = and i64 %23, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 1, %30
  %32 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %33 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %31
  store i32 %39, i32* %37, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
