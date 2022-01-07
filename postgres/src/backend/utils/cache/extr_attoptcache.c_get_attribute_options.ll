; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_attoptcache.c_get_attribute_options.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_attoptcache.c_get_attribute_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32* }

@AttoptCacheHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@ATTNUM = common dso_local global i32 0, align 4
@Anum_pg_attribute_attoptions = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_attribute_options(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @AttoptCacheHash, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 (...) @InitializeAttoptCache()
  br label %18

18:                                               ; preds = %16, %2
  %19 = call i32 @memset(%struct.TYPE_4__* %6, i32 0, i32 8)
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @AttoptCacheHash, align 4
  %25 = bitcast %struct.TYPE_4__* %6 to i8*
  %26 = load i32, i32* @HASH_FIND, align 4
  %27 = call i64 @hash_search(i32 %24, i8* %25, i32 %26, i32* null)
  %28 = inttoptr i64 %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %7, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %74, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* @ATTNUM, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ObjectIdGetDatum(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @Int16GetDatum(i32 %35)
  %37 = call i32 @SearchSysCache2(i32 %32, i32 %34, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @HeapTupleIsValid(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  store i32* null, i32** %10, align 8
  br label %65

42:                                               ; preds = %31
  %43 = load i32, i32* @ATTNUM, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @Anum_pg_attribute_attoptions, align 4
  %46 = call i32 @SysCacheGetAttr(i32 %43, i32 %44, i32 %45, i32* %12)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32* null, i32** %10, align 8
  br label %62

50:                                               ; preds = %42
  %51 = load i32, i32* %11, align 4
  %52 = call i32* @attribute_reloptions(i32 %51, i32 0)
  store i32* %52, i32** %13, align 8
  %53 = load i32, i32* @CacheMemoryContext, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @VARSIZE(i32* %54)
  %56 = call i32* @MemoryContextAlloc(i32 %53, i32 %55)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @VARSIZE(i32* %59)
  %61 = call i32 @memcpy(i32* %57, i32* %58, i32 %60)
  br label %62

62:                                               ; preds = %50, %49
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @ReleaseSysCache(i32 %63)
  br label %65

65:                                               ; preds = %62, %41
  %66 = load i32, i32* @AttoptCacheHash, align 4
  %67 = bitcast %struct.TYPE_4__* %6 to i8*
  %68 = load i32, i32* @HASH_ENTER, align 4
  %69 = call i64 @hash_search(i32 %66, i8* %67, i32 %68, i32* null)
  %70 = inttoptr i64 %69 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %7, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %65, %18
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32* null, i32** %3, align 8
  br label %96

80:                                               ; preds = %74
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @VARSIZE(i32* %83)
  %85 = call i32* @palloc(i32 %84)
  store i32* %85, i32** %8, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @VARSIZE(i32* %92)
  %94 = call i32 @memcpy(i32* %86, i32* %89, i32 %93)
  %95 = load i32*, i32** %8, align 8
  store i32* %95, i32** %3, align 8
  br label %96

96:                                               ; preds = %80, %79
  %97 = load i32*, i32** %3, align 8
  ret i32* %97
}

declare dso_local i32 @InitializeAttoptCache(...) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @attribute_reloptions(i32, i32) #1

declare dso_local i32* @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @VARSIZE(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32* @palloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
