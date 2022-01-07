; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_..srcprotocolspubsubtrie.c_nn_node_compact.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_..srcprotocolspubsubtrie.c_nn_node_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_trie_node = type { i32, i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@NN_TRIE_PREFIX_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nn_trie_node* @nn_node_compact(%struct.nn_trie_node* %0) #0 {
  %2 = alloca %struct.nn_trie_node*, align 8
  %3 = alloca %struct.nn_trie_node*, align 8
  %4 = alloca %struct.nn_trie_node*, align 8
  store %struct.nn_trie_node* %0, %struct.nn_trie_node** %3, align 8
  %5 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %6 = call i64 @nn_node_has_subscribers(%struct.nn_trie_node* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  store %struct.nn_trie_node* %9, %struct.nn_trie_node** %2, align 8
  br label %86

10:                                               ; preds = %1
  %11 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %12 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  store %struct.nn_trie_node* %16, %struct.nn_trie_node** %2, align 8
  br label %86

17:                                               ; preds = %10
  %18 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %19 = call %struct.nn_trie_node** @nn_node_child(%struct.nn_trie_node* %18, i32 0)
  %20 = load %struct.nn_trie_node*, %struct.nn_trie_node** %19, align 8
  store %struct.nn_trie_node* %20, %struct.nn_trie_node** %4, align 8
  %21 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %22 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %25 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = add nsw i64 %27, 1
  %29 = load i64, i64* @NN_TRIE_PREFIX_MAX, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  store %struct.nn_trie_node* %32, %struct.nn_trie_node** %2, align 8
  br label %86

33:                                               ; preds = %17
  %34 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %35 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %38 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %43 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %46 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memmove(i32* %41, i32* %44, i32 %48)
  %50 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %51 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %54 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %57 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memcpy(i32* %52, i32* %55, i32 %59)
  %61 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %62 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %69 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %72 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %67, i32* %74, align 4
  %75 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %76 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  %79 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  %80 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %84 = call i32 @nn_free(%struct.nn_trie_node* %83)
  %85 = load %struct.nn_trie_node*, %struct.nn_trie_node** %4, align 8
  store %struct.nn_trie_node* %85, %struct.nn_trie_node** %2, align 8
  br label %86

86:                                               ; preds = %33, %31, %15, %8
  %87 = load %struct.nn_trie_node*, %struct.nn_trie_node** %2, align 8
  ret %struct.nn_trie_node* %87
}

declare dso_local i64 @nn_node_has_subscribers(%struct.nn_trie_node*) #1

declare dso_local %struct.nn_trie_node** @nn_node_child(%struct.nn_trie_node*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nn_free(%struct.nn_trie_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
