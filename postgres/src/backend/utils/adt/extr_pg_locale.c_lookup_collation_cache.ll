; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_lookup_collation_cache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_lookup_collation_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@collation_cache = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"Collation cache\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@COLLOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cache lookup failed for collation %u\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i64, i32)* @lookup_collation_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @lookup_collation_cache(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @OidIsValid(i64 %12)
  %14 = call i32 @Assert(i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32*, i32** @collation_cache, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = call i32 @memset(%struct.TYPE_9__* %7, i32 0, i32 8)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 8, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 24, i32* %25, align 4
  %26 = load i32, i32* @HASH_ELEM, align 4
  %27 = load i32, i32* @HASH_BLOBS, align 4
  %28 = or i32 %26, %27
  %29 = call i32* @hash_create(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 100, %struct.TYPE_9__* %7, i32 %28)
  store i32* %29, i32** @collation_cache, align 8
  br label %30

30:                                               ; preds = %22, %2
  %31 = load i32*, i32** @collation_cache, align 8
  %32 = load i32, i32* @HASH_ENTER, align 4
  %33 = call %struct.TYPE_8__* @hash_search(i32* %31, i64* %3, i32 %32, i32* %6)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %101

44:                                               ; preds = %41
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %101, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @COLLOID, align 4
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @ObjectIdGetDatum(i64 %51)
  %53 = call i32 @SearchSysCache1(i32 %50, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @HeapTupleIsValid(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @ERROR, align 4
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @elog(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %57, %49
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @GETSTRUCT(i32 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %9, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @NameStr(i32 %67)
  store i8* %68, i8** %10, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @NameStr(i32 %71)
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %61
  %77 = load i8*, i8** %10, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br label %80

80:                                               ; preds = %76, %61
  %81 = phi i1 [ true, %61 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = load i8*, i8** %11, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br label %92

92:                                               ; preds = %88, %80
  %93 = phi i1 [ true, %80 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ReleaseSysCache(i32 %99)
  br label %101

101:                                              ; preds = %92, %44, %41
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %102
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_8__* @hash_search(i32*, i64*, i32, i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
