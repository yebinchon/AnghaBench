; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_is_fully_dirty.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_is_fully_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_buffer = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_buffer*)* @buffer_is_fully_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_is_fully_dirty(%struct.wined3d_buffer* %0) #0 {
  %2 = alloca %struct.wined3d_buffer*, align 8
  store %struct.wined3d_buffer* %0, %struct.wined3d_buffer** %2, align 8
  %3 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %2, align 8
  %4 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %7
  %15 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %2, align 8
  %21 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %19, %23
  br label %25

25:                                               ; preds = %14, %7, %1
  %26 = phi i1 [ false, %7 ], [ false, %1 ], [ %24, %14 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
