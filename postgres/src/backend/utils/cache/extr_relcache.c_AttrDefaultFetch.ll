; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_AttrDefaultFetch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_AttrDefaultFetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@Anum_pg_attrdef_adrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@AttrDefaultRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@AttrDefaultIndexId = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"multiple attrdef records found for attr %s of rel %s\00", align 1
@Anum_pg_attrdef_adbin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"null adbin for attr %s of rel %s\00", align 1
@CacheMemoryContext = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"unexpected attrdef record found for attr %d of rel %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @AttrDefaultFetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AttrDefaultFetch(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %3, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @Anum_pg_attrdef_adrelid, align 4
  %31 = load i32, i32* @BTEqualStrategyNumber, align 4
  %32 = load i32, i32* @F_OIDEQ, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = call i32 @RelationGetRelid(%struct.TYPE_16__* %33)
  %35 = call i32 @ObjectIdGetDatum(i32 %34)
  %36 = call i32 @ScanKeyInit(i32* %7, i32 %30, i32 %31, i32 %32, i32 %35)
  %37 = load i32, i32* @AttrDefaultRelationId, align 4
  %38 = load i32, i32* @AccessShareLock, align 4
  %39 = call %struct.TYPE_16__* @table_open(i32 %37, i32 %38)
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %5, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = load i32, i32* @AttrDefaultIndexId, align 4
  %42 = call i32 @systable_beginscan(%struct.TYPE_16__* %40, i32 %41, i32 1, i32* null, i32 1, i32* %7)
  store i32 %42, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %144, %1
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @systable_getnext(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = call i64 @HeapTupleIsValid(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %145

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @GETSTRUCT(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %13, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %54, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 1
  %60 = call %struct.TYPE_17__* @TupleDescAttr(%struct.TYPE_20__* %55, i64 %59)
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %14, align 8
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %129, %48
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %132

65:                                               ; preds = %61
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %68, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %129

77:                                               ; preds = %65
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load i32, i32* @WARNING, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @NameStr(i32 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %92 = call i32 @RelationGetRelationName(%struct.TYPE_16__* %91)
  %93 = call i32 @elog(i32 %86, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %90, i32 %92)
  br label %97

94:                                               ; preds = %77
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %85
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @Anum_pg_attrdef_adbin, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %101, align 8
  %103 = call i32 @fastgetattr(i32 %98, i32 %99, %struct.TYPE_20__* %102, i32* %10)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load i32, i32* @WARNING, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @NameStr(i32 %110)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %113 = call i32 @RelationGetRelationName(%struct.TYPE_16__* %112)
  %114 = call i32 @elog(i32 %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %111, i32 %113)
  br label %128

115:                                              ; preds = %97
  %116 = load i32, i32* %9, align 4
  %117 = call i8* @TextDatumGetCString(i32 %116)
  store i8* %117, i8** %15, align 8
  %118 = load i32, i32* @CacheMemoryContext, align 4
  %119 = load i8*, i8** %15, align 8
  %120 = call i32* @MemoryContextStrdup(i32 %118, i8* %119)
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  store i32* %120, i32** %125, align 8
  %126 = load i8*, i8** %15, align 8
  %127 = call i32 @pfree(i8* %126)
  br label %128

128:                                              ; preds = %115, %106
  br label %132

129:                                              ; preds = %76
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %61

132:                                              ; preds = %128, %61
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load i32, i32* @WARNING, align 4
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %142 = call i32 @RelationGetRelationName(%struct.TYPE_16__* %141)
  %143 = call i32 @elog(i32 %137, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %140, i32 %142)
  br label %144

144:                                              ; preds = %136, %132
  br label %43

145:                                              ; preds = %43
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @systable_endscan(i32 %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %149 = load i32, i32* @AccessShareLock, align 4
  %150 = call i32 @table_close(%struct.TYPE_16__* %148, i32 %149)
  ret void
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_16__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local %struct.TYPE_17__* @TupleDescAttr(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @elog(i32, i8*, i64, i32) #1

declare dso_local i64 @NameStr(i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_16__*) #1

declare dso_local i32 @fastgetattr(i32, i32, %struct.TYPE_20__*, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32* @MemoryContextStrdup(i32, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
