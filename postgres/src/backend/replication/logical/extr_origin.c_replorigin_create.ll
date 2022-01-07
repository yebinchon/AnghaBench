; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_create.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ReplicationOriginRelationId = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@PG_UINT16_MAX = common dso_local global i64 0, align 8
@Natts_pg_replication_origin = common dso_local global i32 0, align 4
@Anum_pg_replication_origin_roident = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ReplicationOriginIdentIndex = common dso_local global i32 0, align 4
@Anum_pg_replication_origin_roname = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not find free replication origin OID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @replorigin_create(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %4, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @CStringGetTextDatum(i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = call i32 (...) @IsTransactionState()
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @InitDirtySnapshot(i32 %19)
  %21 = load i32, i32* @ReplicationOriginRelationId, align 4
  %22 = load i32, i32* @ExclusiveLock, align 4
  %23 = call i32 @table_open(i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i64, i64* @InvalidOid, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %83, %1
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @PG_UINT16_MAX, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %26
  %31 = load i32, i32* @Natts_pg_replication_origin, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %10, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %11, align 8
  %35 = load i32, i32* @Natts_pg_replication_origin, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %12, align 8
  %38 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %39 = load i32, i32* @Anum_pg_replication_origin_roident, align 4
  %40 = load i32, i32* @BTEqualStrategyNumber, align 4
  %41 = load i32, i32* @F_OIDEQ, align 4
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @ObjectIdGetDatum(i64 %42)
  %44 = call i32 @ScanKeyInit(i32* %9, i32 %39, i32 %40, i32 %41, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @ReplicationOriginIdentIndex, align 4
  %47 = call i32 @systable_beginscan(i32 %45, i32 %46, i32 1, i32* %7, i32 1, i32* %9)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @systable_getnext(i32 %48)
  %50 = call i32 @HeapTupleIsValid(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @systable_endscan(i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %30
  %56 = bitcast i32* %34 to i32**
  %57 = mul nuw i64 4, %32
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(i32** %56, i32 0, i32 %58)
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @ObjectIdGetDatum(i64 %60)
  %62 = load i32, i32* @Anum_pg_replication_origin_roident, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %37, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @Anum_pg_replication_origin_roname, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %37, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @RelationGetDescr(i32 %71)
  %73 = call i32* @heap_form_tuple(i32 %72, i32* %37, i32* %34)
  store i32* %73, i32** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @CatalogTupleInsert(i32 %74, i32* %75)
  %77 = call i32 (...) @CommandCounterIncrement()
  store i32 2, i32* %14, align 4
  br label %79

78:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %14, align 4
  switch i32 %81, label %102 [
    i32 0, label %82
    i32 2, label %86
  ]

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %3, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %3, align 8
  br label %26

86:                                               ; preds = %79, %26
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @ExclusiveLock, align 4
  %89 = call i32 @table_close(i32 %87, i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %97 = call i32 @ereport(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %92, %86
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @heap_freetuple(i32* %99)
  %101 = load i64, i64* %3, align 8
  ret i64 %101

102:                                              ; preds = %79
  unreachable
}

declare dso_local i32 @CStringGetTextDatum(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsTransactionState(...) #1

declare dso_local i32 @InitDirtySnapshot(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32* @heap_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @CatalogTupleInsert(i32, i32*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @heap_freetuple(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
