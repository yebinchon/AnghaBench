; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_texture_get_texture_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_texture_get_texture_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wined3d_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_texture*, %struct.wined3d_context*, i64)* @wined3d_texture_get_texture_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_texture_get_texture_name(%struct.wined3d_texture* %0, %struct.wined3d_context* %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_texture*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca i64, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %11 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %12 = call i64 @needs_separate_srgb_gl_texture(%struct.wined3d_context* %10, %struct.wined3d_texture* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %16 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %24

19:                                               ; preds = %9, %3
  %20 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %21 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i32 [ %18, %14 ], [ %23, %19 ]
  ret i32 %25
}

declare dso_local i64 @needs_separate_srgb_gl_texture(%struct.wined3d_context*, %struct.wined3d_texture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
