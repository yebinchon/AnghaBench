; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_delete_fbo_attachment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_delete_fbo_attachment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (i32, i32*)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, i32, i32)* @delete_fbo_attachment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_fbo_attachment(%struct.wined3d_gl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %22 [
    i32 132, label %8
    i32 131, label %8
    i32 128, label %8
    i32 130, label %8
    i32 129, label %8
    i32 133, label %15
    i32 135, label %21
    i32 134, label %21
  ]

8:                                                ; preds = %3, %3, %3, %3, %3
  %9 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32*)*, i32 (i32, i32*)** %12, align 8
  %14 = call i32 %13(i32 1, i32* %6)
  br label %22

15:                                               ; preds = %3
  %16 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32*)*, i32 (i32, i32*)** %18, align 8
  %20 = call i32 %19(i32 1, i32* %6)
  br label %22

21:                                               ; preds = %3, %3
  br label %22

22:                                               ; preds = %3, %21, %15, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
