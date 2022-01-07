; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_MaxPredicateChildLocks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_MaxPredicateChildLocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_predicate_locks_per_relation = common dso_local global i32 0, align 4
@max_predicate_locks_per_xact = common dso_local global i32 0, align 4
@max_predicate_locks_per_page = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @MaxPredicateChildLocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MaxPredicateChildLocks(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @GET_PREDICATELOCKTARGETTAG_TYPE(i32 %5)
  switch i32 %6, label %24 [
    i32 129, label %7
    i32 130, label %20
    i32 128, label %22
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @max_predicate_locks_per_relation, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, i32* @max_predicate_locks_per_xact, align 4
  %12 = load i32, i32* @max_predicate_locks_per_relation, align 4
  %13 = sub nsw i32 0, %12
  %14 = sdiv i32 %11, %13
  %15 = sub nsw i32 %14, 1
  br label %18

16:                                               ; preds = %7
  %17 = load i32, i32* @max_predicate_locks_per_relation, align 4
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i32 [ %15, %10 ], [ %17, %16 ]
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @max_predicate_locks_per_page, align 4
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  %23 = call i32 @Assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %26

24:                                               ; preds = %1
  %25 = call i32 @Assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %22, %20, %18
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @GET_PREDICATELOCKTARGETTAG_TYPE(i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
