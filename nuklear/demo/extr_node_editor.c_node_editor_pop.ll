; ModuleID = '/home/carl/AnghaBench/nuklear/demo/extr_node_editor.c_node_editor_pop.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/extr_node_editor.c_node_editor_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_editor = type { %struct.node*, %struct.node* }
%struct.node = type { %struct.node*, %struct.node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node_editor*, %struct.node*)* @node_editor_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_editor_pop(%struct.node_editor* %0, %struct.node* %1) #0 {
  %3 = alloca %struct.node_editor*, align 8
  %4 = alloca %struct.node*, align 8
  store %struct.node_editor* %0, %struct.node_editor** %3, align 8
  store %struct.node* %1, %struct.node** %4, align 8
  %5 = load %struct.node*, %struct.node** %4, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %7 = load %struct.node*, %struct.node** %6, align 8
  %8 = icmp ne %struct.node* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.node*, %struct.node** %4, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  %12 = load %struct.node*, %struct.node** %11, align 8
  %13 = load %struct.node*, %struct.node** %4, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  %15 = load %struct.node*, %struct.node** %14, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  store %struct.node* %12, %struct.node** %16, align 8
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.node*, %struct.node** %4, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 0
  %20 = load %struct.node*, %struct.node** %19, align 8
  %21 = icmp ne %struct.node* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.node*, %struct.node** %4, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 1
  %25 = load %struct.node*, %struct.node** %24, align 8
  %26 = load %struct.node*, %struct.node** %4, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 0
  %28 = load %struct.node*, %struct.node** %27, align 8
  %29 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 1
  store %struct.node* %25, %struct.node** %29, align 8
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.node_editor*, %struct.node_editor** %3, align 8
  %32 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %31, i32 0, i32 1
  %33 = load %struct.node*, %struct.node** %32, align 8
  %34 = load %struct.node*, %struct.node** %4, align 8
  %35 = icmp eq %struct.node* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.node*, %struct.node** %4, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 0
  %39 = load %struct.node*, %struct.node** %38, align 8
  %40 = load %struct.node_editor*, %struct.node_editor** %3, align 8
  %41 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %40, i32 0, i32 1
  store %struct.node* %39, %struct.node** %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.node_editor*, %struct.node_editor** %3, align 8
  %44 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %43, i32 0, i32 0
  %45 = load %struct.node*, %struct.node** %44, align 8
  %46 = load %struct.node*, %struct.node** %4, align 8
  %47 = icmp eq %struct.node* %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.node*, %struct.node** %4, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 1
  %51 = load %struct.node*, %struct.node** %50, align 8
  %52 = load %struct.node_editor*, %struct.node_editor** %3, align 8
  %53 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %52, i32 0, i32 0
  store %struct.node* %51, %struct.node** %53, align 8
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.node*, %struct.node** %4, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 1
  store %struct.node* null, %struct.node** %56, align 8
  %57 = load %struct.node*, %struct.node** %4, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 0
  store %struct.node* null, %struct.node** %58, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
