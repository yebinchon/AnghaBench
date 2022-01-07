; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_is_stencil_view_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_is_stencil_view_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_format = type { i64 }

@WINED3DFMT_X24_TYPELESS_G8_UINT = common dso_local global i64 0, align 8
@WINED3DFMT_X32_TYPELESS_G8X24_UINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_format*)* @is_stencil_view_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_stencil_view_format(%struct.wined3d_format* %0) #0 {
  %2 = alloca %struct.wined3d_format*, align 8
  store %struct.wined3d_format* %0, %struct.wined3d_format** %2, align 8
  %3 = load %struct.wined3d_format*, %struct.wined3d_format** %2, align 8
  %4 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @WINED3DFMT_X24_TYPELESS_G8_UINT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.wined3d_format*, %struct.wined3d_format** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WINED3DFMT_X32_TYPELESS_G8X24_UINT, align 8
  %13 = icmp eq i64 %11, %12
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
