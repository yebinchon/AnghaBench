; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_op_hashjoinable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_op_hashjoinable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@ARRAY_EQ_OP = common dso_local global i64 0, align 8
@TYPECACHE_HASH_PROC = common dso_local global i32 0, align 4
@F_HASH_ARRAY = common dso_local global i64 0, align 8
@OPEROID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @op_hashjoinable(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @ARRAY_EQ_OP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @TYPECACHE_HASH_PROC, align 4
  %15 = call %struct.TYPE_4__* @lookup_type_cache(i64 %13, i32 %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @F_HASH_ARRAY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %12
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* @OPEROID, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @ObjectIdGetDatum(i64 %25)
  %27 = call i32 @SearchSysCache1(i32 %24, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @HeapTupleIsValid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @GETSTRUCT(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ReleaseSysCache(i32 %39)
  br label %41

41:                                               ; preds = %31, %23
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_4__* @lookup_type_cache(i64, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
