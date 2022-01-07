; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_spccache.c_get_tablespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_spccache.c_get_tablespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@InvalidOid = common dso_local global i64 0, align 8
@MyDatabaseTableSpace = common dso_local global i64 0, align 8
@TableSpaceCacheHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@TABLESPACEOID = common dso_local global i32 0, align 4
@Anum_pg_tablespace_spcoptions = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i64)* @get_tablespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @get_tablespace(i64 %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @InvalidOid, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @MyDatabaseTableSpace, align 8
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* @TableSpaceCacheHash, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 (...) @InitializeTableSpaceCache()
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* @TableSpaceCacheHash, align 4
  %22 = bitcast i64* %3 to i8*
  %23 = load i32, i32* @HASH_FIND, align 4
  %24 = call i64 @hash_search(i32 %21, i8* %22, i32 %23, i32* null)
  %25 = inttoptr i64 %24 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %2, align 8
  br label %72

30:                                               ; preds = %20
  %31 = load i32, i32* @TABLESPACEOID, align 4
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @ObjectIdGetDatum(i64 %32)
  %34 = call i32 @SearchSysCache1(i32 %31, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @HeapTupleIsValid(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32* null, i32** %6, align 8
  br label %62

39:                                               ; preds = %30
  %40 = load i32, i32* @TABLESPACEOID, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @Anum_pg_tablespace_spcoptions, align 4
  %43 = call i32 @SysCacheGetAttr(i32 %40, i32 %41, i32 %42, i32* %8)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32* null, i32** %6, align 8
  br label %59

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = call i32* @tablespace_reloptions(i32 %48, i32 0)
  store i32* %49, i32** %9, align 8
  %50 = load i32, i32* @CacheMemoryContext, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @VARSIZE(i32* %51)
  %53 = call i32* @MemoryContextAlloc(i32 %50, i32 %52)
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @VARSIZE(i32* %56)
  %58 = call i32 @memcpy(i32* %54, i32* %55, i32 %57)
  br label %59

59:                                               ; preds = %47, %46
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ReleaseSysCache(i32 %60)
  br label %62

62:                                               ; preds = %59, %38
  %63 = load i32, i32* @TableSpaceCacheHash, align 4
  %64 = bitcast i64* %3 to i8*
  %65 = load i32, i32* @HASH_ENTER, align 4
  %66 = call i64 @hash_search(i32 %63, i8* %64, i32 %65, i32* null)
  %67 = inttoptr i64 %66 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %67, %struct.TYPE_3__** %4, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %71, %struct.TYPE_3__** %2, align 8
  br label %72

72:                                               ; preds = %62, %28
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %73
}

declare dso_local i32 @InitializeTableSpaceCache(...) #1

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @tablespace_reloptions(i32, i32) #1

declare dso_local i32* @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @VARSIZE(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
