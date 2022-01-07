; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/pubsub/extr_trie.c_nn_node_next.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/pubsub/extr_trie.c_nn_node_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_trie_node = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nn_trie_node** @nn_node_next(%struct.nn_trie_node* %0, i64 %1) #0 {
  %3 = alloca %struct.nn_trie_node**, align 8
  %4 = alloca %struct.nn_trie_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nn_trie_node* %0, %struct.nn_trie_node** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %8 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.nn_trie_node** null, %struct.nn_trie_node*** %3, align 8
  br label %73

12:                                               ; preds = %2
  %13 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %14 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %15, 8
  br i1 %16, label %17, label %46

17:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %21 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %26 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = call %struct.nn_trie_node** @nn_node_child(%struct.nn_trie_node* %37, i64 %39)
  store %struct.nn_trie_node** %40, %struct.nn_trie_node*** %3, align 8
  br label %73

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %18

45:                                               ; preds = %18
  store %struct.nn_trie_node** null, %struct.nn_trie_node*** %3, align 8
  br label %73

46:                                               ; preds = %12
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %49 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %47, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %57 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %55, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54, %46
  store %struct.nn_trie_node** null, %struct.nn_trie_node*** %3, align 8
  br label %73

63:                                               ; preds = %54
  %64 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %67 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %65, %70
  %72 = call %struct.nn_trie_node** @nn_node_child(%struct.nn_trie_node* %64, i64 %71)
  store %struct.nn_trie_node** %72, %struct.nn_trie_node*** %3, align 8
  br label %73

73:                                               ; preds = %63, %62, %45, %36, %11
  %74 = load %struct.nn_trie_node**, %struct.nn_trie_node*** %3, align 8
  ret %struct.nn_trie_node** %74
}

declare dso_local %struct.nn_trie_node** @nn_node_child(%struct.nn_trie_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
