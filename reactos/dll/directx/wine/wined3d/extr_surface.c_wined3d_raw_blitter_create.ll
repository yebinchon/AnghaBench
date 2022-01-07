; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_wined3d_raw_blitter_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_wined3d_raw_blitter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_blitter = type { %struct.wined3d_blitter*, i32* }
%struct.wined3d_gl_info = type { i32* }

@ARB_COPY_IMAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Created blitter %p.\0A\00", align 1
@raw_blitter_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_raw_blitter_create(%struct.wined3d_blitter** %0, %struct.wined3d_gl_info* %1) #0 {
  %3 = alloca %struct.wined3d_blitter**, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca %struct.wined3d_blitter*, align 8
  store %struct.wined3d_blitter** %0, %struct.wined3d_blitter*** %3, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %4, align 8
  %6 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %7 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @ARB_COPY_IMAGE, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %29

14:                                               ; preds = %2
  %15 = call %struct.wined3d_blitter* @heap_alloc(i32 16)
  store %struct.wined3d_blitter* %15, %struct.wined3d_blitter** %5, align 8
  %16 = icmp ne %struct.wined3d_blitter* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %29

18:                                               ; preds = %14
  %19 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %5, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.wined3d_blitter* %19)
  %21 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %5, align 8
  %22 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %21, i32 0, i32 1
  store i32* @raw_blitter_ops, i32** %22, align 8
  %23 = load %struct.wined3d_blitter**, %struct.wined3d_blitter*** %3, align 8
  %24 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %23, align 8
  %25 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %5, align 8
  %26 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %25, i32 0, i32 0
  store %struct.wined3d_blitter* %24, %struct.wined3d_blitter** %26, align 8
  %27 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %5, align 8
  %28 = load %struct.wined3d_blitter**, %struct.wined3d_blitter*** %3, align 8
  store %struct.wined3d_blitter* %27, %struct.wined3d_blitter** %28, align 8
  br label %29

29:                                               ; preds = %18, %17, %13
  ret void
}

declare dso_local %struct.wined3d_blitter* @heap_alloc(i32) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_blitter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
