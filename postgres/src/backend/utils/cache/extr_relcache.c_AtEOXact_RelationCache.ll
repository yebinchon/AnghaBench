; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_AtEOXact_RelationCache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_AtEOXact_RelationCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@eoxact_list_overflowed = common dso_local global i32 0, align 4
@RelationIdCache = common dso_local global i32 0, align 4
@eoxact_list_len = common dso_local global i32 0, align 4
@eoxact_list = common dso_local global i32* null, align 8
@HASH_FIND = common dso_local global i32 0, align 4
@EOXactTupleDescArrayLen = common dso_local global i64 0, align 8
@EOXactTupleDescArray = common dso_local global i32* null, align 8
@NextEOXactTupleDescNum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtEOXact_RelationCache(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @eoxact_list_overflowed, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load i32, i32* @RelationIdCache, align 4
  %10 = call i32 @hash_seq_init(i32* %3, i32 %9)
  br label %11

11:                                               ; preds = %15, %8
  %12 = call i64 @hash_seq_search(i32* %3)
  %13 = inttoptr i64 %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %4, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @AtEOXact_cleanup(i32 %18, i32 %19)
  br label %11

21:                                               ; preds = %11
  br label %50

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @eoxact_list_len, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i32, i32* @RelationIdCache, align 4
  %29 = load i32*, i32** @eoxact_list, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* @HASH_FIND, align 4
  %35 = call i64 @hash_search(i32 %28, i8* %33, i32 %34, i32* null)
  %36 = inttoptr i64 %35 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %4, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @AtEOXact_cleanup(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %23

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49, %21
  %51 = load i64, i64* @EOXactTupleDescArrayLen, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %50
  %54 = load i32*, i32** @EOXactTupleDescArray, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @Assert(i32 %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %69, %53
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @NextEOXactTupleDescNum, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32*, i32** @EOXactTupleDescArray, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @FreeTupleDesc(i32 %67)
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %58

72:                                               ; preds = %58
  %73 = load i32*, i32** @EOXactTupleDescArray, align 8
  %74 = call i32 @pfree(i32* %73)
  store i32* null, i32** @EOXactTupleDescArray, align 8
  br label %75

75:                                               ; preds = %72, %50
  store i32 0, i32* @eoxact_list_len, align 4
  store i32 0, i32* @eoxact_list_overflowed, align 4
  store i32 0, i32* @NextEOXactTupleDescNum, align 4
  store i64 0, i64* @EOXactTupleDescArrayLen, align 8
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @AtEOXact_cleanup(i32, i32) #1

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FreeTupleDesc(i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
