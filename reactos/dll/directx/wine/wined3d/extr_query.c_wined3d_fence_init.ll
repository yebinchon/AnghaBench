; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_fence_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_fence_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_fence = type { i32 }
%struct.wined3d_gl_info = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Fences not supported.\0A\00", align 1
@WINED3DERR_NOTAVAILABLE = common dso_local global i32 0, align 4
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_fence*, %struct.wined3d_gl_info*)* @wined3d_fence_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_fence_init(%struct.wined3d_fence* %0, %struct.wined3d_gl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_fence*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_fence* %0, %struct.wined3d_fence** %4, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %5, align 8
  %6 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %7 = call i32 @wined3d_fence_supported(%struct.wined3d_gl_info* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @WINED3DERR_NOTAVAILABLE, align 4
  store i32 %11, i32* %3, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @WINED3D_OK, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i32 @wined3d_fence_supported(%struct.wined3d_gl_info*) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
