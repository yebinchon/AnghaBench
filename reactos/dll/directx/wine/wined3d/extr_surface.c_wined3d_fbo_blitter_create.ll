; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_wined3d_fbo_blitter_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_wined3d_fbo_blitter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.wined3d_blitter = type { %struct.wined3d_blitter*, i32* }
%struct.wined3d_gl_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@wined3d_settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Created blitter %p.\0A\00", align 1
@fbo_blitter_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_fbo_blitter_create(%struct.wined3d_blitter** %0, %struct.wined3d_gl_info* %1) #0 {
  %3 = alloca %struct.wined3d_blitter**, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca %struct.wined3d_blitter*, align 8
  store %struct.wined3d_blitter** %0, %struct.wined3d_blitter*** %3, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %4, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 0), align 8
  %7 = load i64, i64* @ORM_FBO, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %11 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %2
  br label %31

16:                                               ; preds = %9
  %17 = call %struct.wined3d_blitter* @heap_alloc(i32 16)
  store %struct.wined3d_blitter* %17, %struct.wined3d_blitter** %5, align 8
  %18 = icmp ne %struct.wined3d_blitter* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %31

20:                                               ; preds = %16
  %21 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %5, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.wined3d_blitter* %21)
  %23 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %5, align 8
  %24 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %23, i32 0, i32 1
  store i32* @fbo_blitter_ops, i32** %24, align 8
  %25 = load %struct.wined3d_blitter**, %struct.wined3d_blitter*** %3, align 8
  %26 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %25, align 8
  %27 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %27, i32 0, i32 0
  store %struct.wined3d_blitter* %26, %struct.wined3d_blitter** %28, align 8
  %29 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %5, align 8
  %30 = load %struct.wined3d_blitter**, %struct.wined3d_blitter*** %3, align 8
  store %struct.wined3d_blitter* %29, %struct.wined3d_blitter** %30, align 8
  br label %31

31:                                               ; preds = %20, %19, %15
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
