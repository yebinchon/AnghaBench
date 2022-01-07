; ModuleID = '/home/carl/AnghaBench/postgres/src/test/modules/test_rbtree/extr_test_rbtree.c_create_int_rbtree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/modules/test_rbtree/extr_test_rbtree.c_create_int_rbtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@irbt_cmp = common dso_local global i32 0, align 4
@irbt_combine = common dso_local global i32 0, align 4
@irbt_alloc = common dso_local global i32 0, align 4
@irbt_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @create_int_rbtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_int_rbtree() #0 {
  %1 = load i32, i32* @irbt_cmp, align 4
  %2 = load i32, i32* @irbt_combine, align 4
  %3 = load i32, i32* @irbt_alloc, align 4
  %4 = load i32, i32* @irbt_free, align 4
  %5 = call i32* @rbt_create(i32 4, i32 %1, i32 %2, i32 %3, i32 %4, i32* null)
  ret i32* %5
}

declare dso_local i32* @rbt_create(i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
