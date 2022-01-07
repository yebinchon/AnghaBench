; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/index/extr_genam.c_index_compute_xid_horizon_for_tuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/index/extr_genam.c_index_compute_xid_horizon_for_tuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@InvalidTransactionId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_compute_xid_horizon_for_tuples(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call i64 @palloc(i32 %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %11, align 8
  %23 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @BufferGetPage(i32 %24)
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %49, %5
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PageGetItemId(i32 %31, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i64 @PageGetItem(i32 %38, i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %14, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @ItemPointerCopy(i32* %43, i32* %47)
  br label %49

49:                                               ; preds = %30
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %26

52:                                               ; preds = %26
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @table_compute_xid_horizon_for_tuples(i32 %53, i32* %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @pfree(i32* %57)
  %59 = load i32, i32* %12, align 4
  ret i32 %59
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @ItemPointerCopy(i32*, i32*) #1

declare dso_local i32 @table_compute_xid_horizon_for_tuples(i32, i32*, i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
