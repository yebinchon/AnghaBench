; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_queue_frame_node.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_queue_frame_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.frame_node = type { i32, %struct.TYPE_3__* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list*, %struct.TYPE_3__*)* @queue_frame_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_frame_node(%struct.list* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.frame_node*, align 8
  store %struct.list* %0, %struct.list** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = call i32 (...) @GetProcessHeap()
  %15 = call %struct.frame_node* @HeapAlloc(i32 %14, i32 0, i32 16)
  store %struct.frame_node* %15, %struct.frame_node** %6, align 8
  %16 = load %struct.frame_node*, %struct.frame_node** %6, align 8
  %17 = icmp ne %struct.frame_node* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %29

20:                                               ; preds = %13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = load %struct.frame_node*, %struct.frame_node** %6, align 8
  %23 = getelementptr inbounds %struct.frame_node, %struct.frame_node* %22, i32 0, i32 1
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %23, align 8
  %24 = load %struct.list*, %struct.list** %4, align 8
  %25 = load %struct.frame_node*, %struct.frame_node** %6, align 8
  %26 = getelementptr inbounds %struct.frame_node, %struct.frame_node* %25, i32 0, i32 0
  %27 = call i32 @list_add_tail(%struct.list* %24, i32* %26)
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %20, %18, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.frame_node* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @list_add_tail(%struct.list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
