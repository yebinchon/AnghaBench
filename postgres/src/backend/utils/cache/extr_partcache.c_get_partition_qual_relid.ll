; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_partcache.c_get_partition_qual_relid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_partcache.c_get_partition_qual_relid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AccessShareLock = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@AND_EXPR = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_partition_qual_relid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @get_rel_relispartition(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @AccessShareLock, align 4
  %12 = call i32 @relation_open(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32* @generate_partition_qual(i32 %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** @NIL, align 8
  %17 = icmp eq i32* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32* null, i32** %3, align 8
  br label %31

19:                                               ; preds = %9
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @list_length(i32* %20)
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @AND_EXPR, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @makeBoolExpr(i32 %24, i32* %25, i32 -1)
  store i32* %26, i32** %3, align 8
  br label %30

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @linitial(i32* %28)
  store i32* %29, i32** %3, align 8
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @NoLock, align 4
  %34 = call i32 @relation_close(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %1
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i64 @get_rel_relispartition(i32) #1

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local i32* @generate_partition_qual(i32) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32* @makeBoolExpr(i32, i32*, i32) #1

declare dso_local i32* @linitial(i32*) #1

declare dso_local i32 @relation_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
