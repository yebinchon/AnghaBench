; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_generate_rt_mask_no_fbo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_generate_rt_mask_no_fbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_texture = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@WINED3DFMT_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.wined3d_texture*)* @context_generate_rt_mask_no_fbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_generate_rt_mask_no_fbo(%struct.wined3d_context* %0, %struct.wined3d_texture* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_texture*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_texture* %1, %struct.wined3d_texture** %5, align 8
  %6 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %7 = icmp ne %struct.wined3d_texture* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %10 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WINED3DFMT_NULL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %31

18:                                               ; preds = %8
  %19 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %25 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %24, i32 0, i32 0
  %26 = call i32 @context_generate_rt_mask_from_resource(%struct.TYPE_4__* %25)
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %18
  %28 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %29 = call i32 @context_get_offscreen_gl_buffer(%struct.wined3d_context* %28)
  %30 = call i32 @context_generate_rt_mask(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %23, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @context_generate_rt_mask_from_resource(%struct.TYPE_4__*) #1

declare dso_local i32 @context_generate_rt_mask(i32) #1

declare dso_local i32 @context_get_offscreen_gl_buffer(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
