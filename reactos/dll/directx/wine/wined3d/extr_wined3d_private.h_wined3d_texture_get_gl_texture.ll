; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_texture_get_gl_texture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_texture_get_gl_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_texture = type { i32 }
%struct.wined3d_texture = type { %struct.gl_texture, %struct.gl_texture }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gl_texture* (%struct.wined3d_texture*, i64)* @wined3d_texture_get_gl_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gl_texture* @wined3d_texture_get_gl_texture(%struct.wined3d_texture* %0, i64 %1) #0 {
  %3 = alloca %struct.wined3d_texture*, align 8
  %4 = alloca i64, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %8, i32 0, i32 1
  br label %13

10:                                               ; preds = %2
  %11 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %11, i32 0, i32 0
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi %struct.gl_texture* [ %9, %7 ], [ %12, %10 ]
  ret %struct.gl_texture* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
