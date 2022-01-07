; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationBuildRuleLock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationBuildRuleLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32*, i32*, i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i64, i32 }

@CacheMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"relation rules\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4
@Anum_pg_rewrite_ev_class = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@RewriteRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@RewriteRelRulenameIndexId = common dso_local global i32 0, align 4
@Anum_pg_rewrite_ev_action = common dso_local global i32 0, align 4
@Anum_pg_rewrite_ev_qual = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @RelationBuildRuleLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RelationBuildRuleLock(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %19 = load i32, i32* @CacheMemoryContext, align 4
  %20 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %21 = call i32* @AllocSetContextCreate(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %27 = call i32 @RelationGetRelationName(%struct.TYPE_17__* %26)
  %28 = call i32 @MemoryContextCopyAndSetIdentifier(i32* %25, i32 %27)
  store i32 4, i32* %13, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 8, %31
  %33 = trunc i64 %32 to i32
  %34 = call i64 @MemoryContextAlloc(i32* %29, i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_16__**
  store %struct.TYPE_16__** %35, %struct.TYPE_16__*** %12, align 8
  store i32 0, i32* %11, align 4
  %36 = load i32, i32* @Anum_pg_rewrite_ev_class, align 4
  %37 = load i32, i32* @BTEqualStrategyNumber, align 4
  %38 = load i32, i32* @F_OIDEQ, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = call i32 @RelationGetRelid(%struct.TYPE_17__* %39)
  %41 = call i32 @ObjectIdGetDatum(i32 %40)
  %42 = call i32 @ScanKeyInit(i32* %9, i32 %36, i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* @RewriteRelationId, align 4
  %44 = load i32, i32* @AccessShareLock, align 4
  %45 = call %struct.TYPE_17__* @table_open(i32 %43, i32 %44)
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %6, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = call i32 @RelationGetDescr(%struct.TYPE_17__* %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = load i32, i32* @RewriteRelRulenameIndexId, align 4
  %50 = call i32 @systable_beginscan(%struct.TYPE_17__* %48, i32 %49, i32 1, i32* null, i32 1, i32* %9)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %160, %1
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @systable_getnext(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = call i64 @HeapTupleIsValid(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %167

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @GETSTRUCT(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %14, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @MemoryContextAlloc(i32* %61, i32 40)
  %63 = inttoptr i64 %62 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %18, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 48
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @Anum_pg_rewrite_ev_action, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @heap_getattr(i32 %85, i32 %86, i32 %87, i32* %15)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @Assert(i32 %92)
  %94 = load i32, i32* %16, align 4
  %95 = call i8* @TextDatumGetCString(i32 %94)
  store i8* %95, i8** %17, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = call i32* @MemoryContextSwitchTo(i32* %96)
  store i32* %97, i32** %4, align 8
  %98 = load i8*, i8** %17, align 8
  %99 = call i64 @stringToNode(i8* %98)
  %100 = inttoptr i64 %99 to i32*
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  store i32* %100, i32** %102, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = call i32* @MemoryContextSwitchTo(i32* %103)
  %105 = load i8*, i8** %17, align 8
  %106 = call i32 @pfree(i8* %105)
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @Anum_pg_rewrite_ev_qual, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @heap_getattr(i32 %107, i32 %108, i32 %109, i32* %15)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @Assert(i32 %114)
  %116 = load i32, i32* %16, align 4
  %117 = call i8* @TextDatumGetCString(i32 %116)
  store i8* %117, i8** %17, align 8
  %118 = load i32*, i32** %3, align 8
  %119 = call i32* @MemoryContextSwitchTo(i32* %118)
  store i32* %119, i32** %4, align 8
  %120 = load i8*, i8** %17, align 8
  %121 = call i64 @stringToNode(i8* %120)
  %122 = inttoptr i64 %121 to i32*
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  store i32* %122, i32** %124, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = call i32* @MemoryContextSwitchTo(i32* %125)
  %127 = load i8*, i8** %17, align 8
  %128 = call i32 @pfree(i8* %127)
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @setRuleCheckAsUser(i32* %131, i32 %136)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @setRuleCheckAsUser(i32* %140, i32 %145)
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %56
  %151 = load i32, i32* %13, align 4
  %152 = mul nsw i32 %151, 2
  store i32 %152, i32* %13, align 4
  %153 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 8, %155
  %157 = trunc i64 %156 to i32
  %158 = call i64 @repalloc(%struct.TYPE_16__** %153, i32 %157)
  %159 = inttoptr i64 %158 to %struct.TYPE_16__**
  store %struct.TYPE_16__** %159, %struct.TYPE_16__*** %12, align 8
  br label %160

160:                                              ; preds = %150, %56
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %162 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %162, i64 %165
  store %struct.TYPE_16__* %161, %struct.TYPE_16__** %166, align 8
  br label %51

167:                                              ; preds = %51
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @systable_endscan(i32 %168)
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %171 = load i32, i32* @AccessShareLock, align 4
  %172 = call i32 @table_close(%struct.TYPE_17__* %170, i32 %171)
  %173 = load i32, i32* %11, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %167
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %177, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  store i32* null, i32** %179, align 8
  %180 = load i32*, i32** %3, align 8
  %181 = call i32 @MemoryContextDelete(i32* %180)
  br label %195

182:                                              ; preds = %167
  %183 = load i32*, i32** %3, align 8
  %184 = call i64 @MemoryContextAlloc(i32* %183, i32 16)
  %185 = inttoptr i64 %184 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %185, %struct.TYPE_15__** %10, align 8
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  store %struct.TYPE_16__** %189, %struct.TYPE_16__*** %191, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  store %struct.TYPE_15__* %192, %struct.TYPE_15__** %194, align 8
  br label %195

195:                                              ; preds = %182, %175
  ret void
}

declare dso_local i32* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextCopyAndSetIdentifier(i32*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_17__*) #1

declare dso_local i64 @MemoryContextAlloc(i32*, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @table_open(i32, i32) #1

declare dso_local i32 @RelationGetDescr(%struct.TYPE_17__*) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_17__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i64 @stringToNode(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @setRuleCheckAsUser(i32*, i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_16__**, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
