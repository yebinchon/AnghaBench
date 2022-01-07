; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-trie.c_lwan_trie_node_destroy.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-trie.c_lwan_trie_node_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_trie = type { i32 (i32)* }
%struct.lwan_trie_node = type { i64, %struct.lwan_trie_node**, %struct.lwan_trie_node*, i32, %struct.lwan_trie_node* }
%struct.lwan_trie_leaf = type { i64, %struct.lwan_trie_leaf**, %struct.lwan_trie_leaf*, i32, %struct.lwan_trie_leaf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwan_trie*, %struct.lwan_trie_node*)* @lwan_trie_node_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lwan_trie_node_destroy(%struct.lwan_trie* %0, %struct.lwan_trie_node* %1) #0 {
  %3 = alloca %struct.lwan_trie*, align 8
  %4 = alloca %struct.lwan_trie_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lwan_trie_leaf*, align 8
  %7 = alloca %struct.lwan_trie_leaf*, align 8
  %8 = alloca i64, align 8
  store %struct.lwan_trie* %0, %struct.lwan_trie** %3, align 8
  store %struct.lwan_trie_node* %1, %struct.lwan_trie_node** %4, align 8
  %9 = load %struct.lwan_trie_node*, %struct.lwan_trie_node** %4, align 8
  %10 = icmp ne %struct.lwan_trie_node* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %84

12:                                               ; preds = %2
  %13 = load %struct.lwan_trie_node*, %struct.lwan_trie_node** %4, align 8
  %14 = getelementptr inbounds %struct.lwan_trie_node, %struct.lwan_trie_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.lwan_trie_node*, %struct.lwan_trie_node** %4, align 8
  %17 = getelementptr inbounds %struct.lwan_trie_node, %struct.lwan_trie_node* %16, i32 0, i32 4
  %18 = load %struct.lwan_trie_node*, %struct.lwan_trie_node** %17, align 8
  %19 = bitcast %struct.lwan_trie_node* %18 to %struct.lwan_trie_leaf*
  store %struct.lwan_trie_leaf* %19, %struct.lwan_trie_leaf** %6, align 8
  br label %20

20:                                               ; preds = %40, %12
  %21 = load %struct.lwan_trie_leaf*, %struct.lwan_trie_leaf** %6, align 8
  %22 = icmp ne %struct.lwan_trie_leaf* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load %struct.lwan_trie_leaf*, %struct.lwan_trie_leaf** %6, align 8
  %25 = getelementptr inbounds %struct.lwan_trie_leaf, %struct.lwan_trie_leaf* %24, i32 0, i32 1
  %26 = load %struct.lwan_trie_leaf**, %struct.lwan_trie_leaf*** %25, align 8
  %27 = bitcast %struct.lwan_trie_leaf** %26 to %struct.lwan_trie_leaf*
  store %struct.lwan_trie_leaf* %27, %struct.lwan_trie_leaf** %7, align 8
  %28 = load %struct.lwan_trie*, %struct.lwan_trie** %3, align 8
  %29 = getelementptr inbounds %struct.lwan_trie, %struct.lwan_trie* %28, i32 0, i32 0
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = icmp ne i32 (i32)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load %struct.lwan_trie*, %struct.lwan_trie** %3, align 8
  %34 = getelementptr inbounds %struct.lwan_trie, %struct.lwan_trie* %33, i32 0, i32 0
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.lwan_trie_leaf*, %struct.lwan_trie_leaf** %6, align 8
  %37 = getelementptr inbounds %struct.lwan_trie_leaf, %struct.lwan_trie_leaf* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %35(i32 %38)
  br label %40

40:                                               ; preds = %32, %23
  %41 = load %struct.lwan_trie_leaf*, %struct.lwan_trie_leaf** %6, align 8
  %42 = getelementptr inbounds %struct.lwan_trie_leaf, %struct.lwan_trie_leaf* %41, i32 0, i32 2
  %43 = load %struct.lwan_trie_leaf*, %struct.lwan_trie_leaf** %42, align 8
  %44 = bitcast %struct.lwan_trie_leaf* %43 to %struct.lwan_trie_node*
  %45 = call i32 @free(%struct.lwan_trie_node* %44)
  %46 = load %struct.lwan_trie_leaf*, %struct.lwan_trie_leaf** %6, align 8
  %47 = bitcast %struct.lwan_trie_leaf* %46 to %struct.lwan_trie_node*
  %48 = call i32 @free(%struct.lwan_trie_node* %47)
  %49 = load %struct.lwan_trie_leaf*, %struct.lwan_trie_leaf** %7, align 8
  store %struct.lwan_trie_leaf* %49, %struct.lwan_trie_leaf** %6, align 8
  br label %20

50:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  br label %51

51:                                               ; preds = %78, %50
  %52 = load i64, i64* %5, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* %8, align 8
  %56 = icmp slt i64 %55, 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br i1 %58, label %59, label %81

59:                                               ; preds = %57
  %60 = load %struct.lwan_trie_node*, %struct.lwan_trie_node** %4, align 8
  %61 = getelementptr inbounds %struct.lwan_trie_node, %struct.lwan_trie_node* %60, i32 0, i32 1
  %62 = load %struct.lwan_trie_node**, %struct.lwan_trie_node*** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.lwan_trie_node*, %struct.lwan_trie_node** %62, i64 %63
  %65 = load %struct.lwan_trie_node*, %struct.lwan_trie_node** %64, align 8
  %66 = icmp ne %struct.lwan_trie_node* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load %struct.lwan_trie*, %struct.lwan_trie** %3, align 8
  %69 = load %struct.lwan_trie_node*, %struct.lwan_trie_node** %4, align 8
  %70 = getelementptr inbounds %struct.lwan_trie_node, %struct.lwan_trie_node* %69, i32 0, i32 1
  %71 = load %struct.lwan_trie_node**, %struct.lwan_trie_node*** %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds %struct.lwan_trie_node*, %struct.lwan_trie_node** %71, i64 %72
  %74 = load %struct.lwan_trie_node*, %struct.lwan_trie_node** %73, align 8
  call void @lwan_trie_node_destroy(%struct.lwan_trie* %68, %struct.lwan_trie_node* %74)
  %75 = load i64, i64* %5, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %67, %59
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %8, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %51

81:                                               ; preds = %57
  %82 = load %struct.lwan_trie_node*, %struct.lwan_trie_node** %4, align 8
  %83 = call i32 @free(%struct.lwan_trie_node* %82)
  br label %84

84:                                               ; preds = %81, %11
  ret void
}

declare dso_local i32 @free(%struct.lwan_trie_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
