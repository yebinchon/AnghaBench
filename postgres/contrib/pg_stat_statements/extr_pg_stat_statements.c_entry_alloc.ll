; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_entry_alloc.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_entry_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@pgss_hash = common dso_local global i32 0, align 4
@pgss_max = common dso_local global i64 0, align 8
@HASH_ENTER = common dso_local global i32 0, align 4
@pgss = common dso_local global %struct.TYPE_6__* null, align 8
@USAGE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*, i32, i32, i32, i32)* @entry_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @entry_alloc(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  br label %13

13:                                               ; preds = %18, %5
  %14 = load i32, i32* @pgss_hash, align 4
  %15 = call i64 @hash_get_num_entries(i32 %14)
  %16 = load i64, i64* @pgss_max, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 (...) @entry_dealloc()
  br label %13

20:                                               ; preds = %13
  %21 = load i32, i32* @pgss_hash, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @HASH_ENTER, align 4
  %24 = call i64 @hash_search(i32 %21, i32* %22, i32 %23, i32* %12)
  %25 = inttoptr i64 %24 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = call i32 @memset(%struct.TYPE_7__* %30, i32 0, i32 4)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pgss, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @USAGE_INIT, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %37, %34 ], [ %39, %38 ]
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = call i32 @SpinLockInit(i32* %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @Assert(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %40, %20
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  ret %struct.TYPE_5__* %62
}

declare dso_local i64 @hash_get_num_entries(i32) #1

declare dso_local i32 @entry_dealloc(...) #1

declare dso_local i64 @hash_search(i32, i32*, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @SpinLockInit(i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
