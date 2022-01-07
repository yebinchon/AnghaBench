; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_get_pkey_attnames.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_get_pkey_attnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32* }

@IndexRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_index_indrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@IndexIndrelidIndexId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.TYPE_10__*, i32*)* @get_pkey_attnames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @get_pkey_attnames(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8** null, i8*** %10, align 8
  %13 = load i32*, i32** %4, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @IndexRelationId, align 4
  %18 = load i32, i32* @AccessShareLock, align 4
  %19 = call %struct.TYPE_10__* @table_open(i32 %17, i32 %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %5, align 8
  %20 = load i32, i32* @Anum_pg_index_indrelid, align 4
  %21 = load i32, i32* @BTEqualStrategyNumber, align 4
  %22 = load i32, i32* @F_OIDEQ, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = call i32 @RelationGetRelid(%struct.TYPE_10__* %23)
  %25 = call i32 @ObjectIdGetDatum(i32 %24)
  %26 = call i32 @ScanKeyInit(i32* %6, i32 %20, i32 %21, i32 %22, i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = load i32, i32* @IndexIndrelidIndexId, align 4
  %29 = call i32 @systable_beginscan(%struct.TYPE_10__* %27, i32 %28, i32 1, i32* null, i32 1, i32* %6)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %85, %2
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @systable_getnext(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = call i64 @HeapTupleIsValid(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @GETSTRUCT(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %12, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %85

44:                                               ; preds = %35
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %44
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = call i64 @palloc(i32 %57)
  %59 = inttoptr i64 %58 to i8**
  store i8** %59, i8*** %10, align 8
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %80, %52
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @SPI_fname(i32 %66, i32 %74)
  %76 = load i8**, i8*** %10, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  store i8* %75, i8** %79, align 8
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %60

83:                                               ; preds = %60
  br label %84

84:                                               ; preds = %83, %44
  br label %86

85:                                               ; preds = %35
  br label %30

86:                                               ; preds = %84, %30
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @systable_endscan(i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = load i32, i32* @AccessShareLock, align 4
  %91 = call i32 @table_close(%struct.TYPE_10__* %89, i32 %90)
  %92 = load i8**, i8*** %10, align 8
  ret i8** %92
}

declare dso_local %struct.TYPE_10__* @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_10__*) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_10__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @SPI_fname(i32, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
