; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_needs_separate_srgb_gl_texture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_needs_separate_srgb_gl_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.wined3d_texture = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@WINED3DFMT_FLAG_SRGB_READ = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_SRGB_WRITE = common dso_local global i32 0, align 4
@EXT_TEXTURE_SRGB_DECODE = common dso_local global i64 0, align 8
@WINED3D_SRGB_READ_WRITE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.wined3d_texture*)* @needs_separate_srgb_gl_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_separate_srgb_gl_texture(%struct.wined3d_context* %0, %struct.wined3d_texture* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_texture*, align 8
  %5 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_texture* %1, %struct.wined3d_texture** %4, align 8
  %6 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %7 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WINED3DFMT_FLAG_SRGB_READ, align 4
  %11 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @EXT_TEXTURE_SRGB_DECODE, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @WINED3DFMT_FLAG_SRGB_READ, align 4
  %29 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %30 = or i32 %28, %29
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26, %2
  %33 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %34 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @WINED3D_SRGB_READ_WRITE_CONTROL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %32, %26, %23
  %42 = phi i1 [ false, %26 ], [ false, %23 ], [ %40, %32 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
