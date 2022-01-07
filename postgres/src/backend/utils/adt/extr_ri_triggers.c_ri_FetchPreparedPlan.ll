; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_FetchPreparedPlan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_FetchPreparedPlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@ri_query_cache = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @ri_FetchPreparedPlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ri_FetchPreparedPlan(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @ri_query_cache, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 (...) @ri_InitHashTables()
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* @ri_query_cache, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load i32, i32* @HASH_FIND, align 4
  %15 = call i64 @hash_search(i32 %11, i8* %13, i32 %14, i32* null)
  %16 = inttoptr i64 %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %4, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %18 = icmp eq %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32* null, i32** %2, align 8
  br label %41

20:                                               ; preds = %10
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @SPI_plan_is_valid(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  store i32* %31, i32** %2, align 8
  br label %41

32:                                               ; preds = %26, %20
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @SPI_freeplan(i32* %38)
  br label %40

40:                                               ; preds = %37, %32
  store i32* null, i32** %2, align 8
  br label %41

41:                                               ; preds = %40, %30, %19
  %42 = load i32*, i32** %2, align 8
  ret i32* %42
}

declare dso_local i32 @ri_InitHashTables(...) #1

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i64 @SPI_plan_is_valid(i32*) #1

declare dso_local i32 @SPI_freeplan(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
