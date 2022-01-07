; ModuleID = '/home/carl/AnghaBench/nuklear/demo/extr_node_editor.c_node_editor_find.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/extr_node_editor.c_node_editor_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }
%struct.node_editor = type { %struct.node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (%struct.node_editor*, i32)* @node_editor_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @node_editor_find(%struct.node_editor* %0, i32 %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node_editor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  store %struct.node_editor* %0, %struct.node_editor** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.node_editor*, %struct.node_editor** %4, align 8
  %8 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %7, i32 0, i32 0
  %9 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %9, %struct.node** %6, align 8
  br label %10

10:                                               ; preds = %21, %2
  %11 = load %struct.node*, %struct.node** %6, align 8
  %12 = icmp ne %struct.node* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.node*, %struct.node** %6, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.node*, %struct.node** %6, align 8
  store %struct.node* %20, %struct.node** %3, align 8
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.node*, %struct.node** %6, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 1
  %24 = load %struct.node*, %struct.node** %23, align 8
  store %struct.node* %24, %struct.node** %6, align 8
  br label %10

25:                                               ; preds = %10
  store %struct.node* null, %struct.node** %3, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = load %struct.node*, %struct.node** %3, align 8
  ret %struct.node* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
