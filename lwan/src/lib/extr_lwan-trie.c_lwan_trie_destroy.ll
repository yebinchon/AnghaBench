; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-trie.c_lwan_trie_destroy.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-trie.c_lwan_trie_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_trie = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_trie_destroy(%struct.lwan_trie* %0) #0 {
  %2 = alloca %struct.lwan_trie*, align 8
  store %struct.lwan_trie* %0, %struct.lwan_trie** %2, align 8
  %3 = load %struct.lwan_trie*, %struct.lwan_trie** %2, align 8
  %4 = icmp ne %struct.lwan_trie* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.lwan_trie*, %struct.lwan_trie** %2, align 8
  %7 = getelementptr inbounds %struct.lwan_trie, %struct.lwan_trie* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  br label %17

11:                                               ; preds = %5
  %12 = load %struct.lwan_trie*, %struct.lwan_trie** %2, align 8
  %13 = load %struct.lwan_trie*, %struct.lwan_trie** %2, align 8
  %14 = getelementptr inbounds %struct.lwan_trie, %struct.lwan_trie* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lwan_trie_node_destroy(%struct.lwan_trie* %12, i32 %15)
  br label %17

17:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @lwan_trie_node_destroy(%struct.lwan_trie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
