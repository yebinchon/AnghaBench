; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_..srcprotocolspubsubtrie.c_nn_node_term.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_..srcprotocolspubsubtrie.c_nn_node_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_trie_node = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@NN_TRIE_SPARSE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_node_term(%struct.nn_trie_node* %0) #0 {
  %2 = alloca %struct.nn_trie_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nn_trie_node* %0, %struct.nn_trie_node** %2, align 8
  %5 = load %struct.nn_trie_node*, %struct.nn_trie_node** %2, align 8
  %6 = icmp ne %struct.nn_trie_node* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %48

8:                                                ; preds = %1
  %9 = load %struct.nn_trie_node*, %struct.nn_trie_node** %2, align 8
  %10 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NN_TRIE_SPARSE_MAX, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct.nn_trie_node*, %struct.nn_trie_node** %2, align 8
  %16 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %31

18:                                               ; preds = %8
  %19 = load %struct.nn_trie_node*, %struct.nn_trie_node** %2, align 8
  %20 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nn_trie_node*, %struct.nn_trie_node** %2, align 8
  %25 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %23, %28
  %30 = add nsw i32 %29, 1
  br label %31

31:                                               ; preds = %18, %14
  %32 = phi i32 [ %17, %14 ], [ %30, %18 ]
  store i32 %32, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %42, %31
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.nn_trie_node*, %struct.nn_trie_node** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call %struct.nn_trie_node** @nn_node_child(%struct.nn_trie_node* %38, i32 %39)
  %41 = load %struct.nn_trie_node*, %struct.nn_trie_node** %40, align 8
  call void @nn_node_term(%struct.nn_trie_node* %41)
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %33

45:                                               ; preds = %33
  %46 = load %struct.nn_trie_node*, %struct.nn_trie_node** %2, align 8
  %47 = call i32 @nn_free(%struct.nn_trie_node* %46)
  br label %48

48:                                               ; preds = %45, %7
  ret void
}

declare dso_local %struct.nn_trie_node** @nn_node_child(%struct.nn_trie_node*, i32) #1

declare dso_local i32 @nn_free(%struct.nn_trie_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
