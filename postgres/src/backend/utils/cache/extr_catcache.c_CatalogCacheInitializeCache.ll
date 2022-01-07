; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_catcache.c_CatalogCacheInitializeCache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_catcache.c_CatalogCacheInitializeCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64*, i32, i32, %struct.TYPE_7__*, i32*, i32*, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@CatalogCacheInitializeCache_DEBUG1 = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32* null, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"CatalogCacheInitializeCache: %s, %d keys\00", align 1
@CatalogCacheInitializeCache_DEBUG2 = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"sys attributes are not supported in caches\00", align 1
@OIDOID = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@C_COLLATION_OID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"CatalogCacheInitializeCache %s %d %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @CatalogCacheInitializeCache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CatalogCacheInitializeCache(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %10 = load i32, i32* @CatalogCacheInitializeCache_DEBUG1, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AccessShareLock, align 4
  %15 = call i32 @table_open(i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32*, i32** @CacheMemoryContext, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32*, i32** @CacheMemoryContext, align 8
  %21 = call i32* @MemoryContextSwitchTo(i32* %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @RelationGetDescr(i32 %22)
  %24 = call i32 @CreateTupleDescCopyConstr(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @RelationGetRelationName(i32 %25)
  %27 = call i32 @pstrdup(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call %struct.TYPE_10__* @RelationGetForm(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32* @MemoryContextSwitchTo(i32* %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @AccessShareLock, align 4
  %40 = call i32 @table_close(i32 %38, i32 %39)
  %41 = load i32, i32* @DEBUG2, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, i32, i32, ...) @CACHE_elog(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %167, %1
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %170

55:                                               ; preds = %49
  %56 = load i32, i32* @CatalogCacheInitializeCache_DEBUG2, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, 1
  %75 = call %struct.TYPE_8__* @TupleDescAttr(i32 %66, i64 %74)
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %9, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @Assert(i32 %81)
  br label %97

83:                                               ; preds = %55
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @FATAL, align 4
  %94 = call i32 @elog(i32 %93, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %83
  %96 = load i32, i32* @OIDOID, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %65
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = call i32 @GetCCHashEqFuncs(i32 %98, i32* %104, i32* %8, i32* %110)
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load i32*, i32** @CacheMemoryContext, align 8
  %121 = call i32 @fmgr_info_cxt(i32 %112, i32* %119, i32* %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i64 %128, i64* %135, align 8
  %136 = load i32, i32* @BTEqualStrategyNumber, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 3
  store i32 %136, i32* %143, align 8
  %144 = load i32, i32* @InvalidOid, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  store i32 %144, i32* %151, align 4
  %152 = load i32, i32* @C_COLLATION_OID, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  store i32 %152, i32* %159, align 8
  %160 = load i32, i32* @DEBUG2, align 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %166 = call i32 (i32, i8*, i32, i32, ...) @CACHE_elog(i32 %160, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %163, i32 %164, %struct.TYPE_9__* %165)
  br label %167

167:                                              ; preds = %97
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %49

170:                                              ; preds = %49
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i32 @CreateTupleDescCopyConstr(i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local %struct.TYPE_10__* @RelationGetForm(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @CACHE_elog(i32, i8*, i32, i32, ...) #1

declare dso_local %struct.TYPE_8__* @TupleDescAttr(i32, i64) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @GetCCHashEqFuncs(i32, i32*, i32*, i32*) #1

declare dso_local i32 @fmgr_info_cxt(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
