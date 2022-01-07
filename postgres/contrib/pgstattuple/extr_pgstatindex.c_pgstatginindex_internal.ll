; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstatindex.c_pgstatginindex_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstatindex.c_pgstatginindex_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@AccessShareLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"relation \22%s\22 is not a GIN index\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot access temporary indexes of other sessions\00", align 1
@GIN_METAPAGE_BLKNO = common dso_local global i32 0, align 4
@GIN_SHARE = common dso_local global i32 0, align 4
@TYPEFUNC_COMPOSITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"return type must be a row type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgstatginindex_internal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 12, i1 false)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @AccessShareLock, align 4
  %18 = call i32 @relation_open(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @IS_INDEX(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @IS_GIN(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @RelationGetRelationName(i32 %30)
  %32 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @ereport(i32 %27, i32 %32)
  br label %34

34:                                               ; preds = %26, %22
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @RELATION_IS_OTHER_TEMP(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @GIN_METAPAGE_BLKNO, align 4
  %47 = call i32 @ReadBuffer(i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @GIN_SHARE, align 4
  %50 = call i32 @LockBuffer(i32 %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @BufferGetPage(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call %struct.TYPE_4__* @GinPageGetMeta(i32 %53)
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %8, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @UnlockReleaseBuffer(i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @AccessShareLock, align 4
  %71 = call i32 @relation_close(i32 %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @get_call_result_type(i32 %72, i32* null, i32* %11)
  %74 = load i64, i64* @TYPEFUNC_COMPOSITE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %44
  %77 = load i32, i32* @ERROR, align 4
  %78 = call i32 @elog(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %44
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @Int32GetDatum(i32 %81)
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @UInt32GetDatum(i32 %85)
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @Int64GetDatum(i32 %89)
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %11, align 4
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %95 = call i32 @heap_form_tuple(i32 %92, i32* %93, i32* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @HeapTupleGetDatum(i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @relation_open(i32, i32) #2

declare dso_local i32 @IS_INDEX(i32) #2

declare dso_local i32 @IS_GIN(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @RelationGetRelationName(i32) #2

declare dso_local i64 @RELATION_IS_OTHER_TEMP(i32) #2

declare dso_local i32 @ReadBuffer(i32, i32) #2

declare dso_local i32 @LockBuffer(i32, i32) #2

declare dso_local i32 @BufferGetPage(i32) #2

declare dso_local %struct.TYPE_4__* @GinPageGetMeta(i32) #2

declare dso_local i32 @UnlockReleaseBuffer(i32) #2

declare dso_local i32 @relation_close(i32, i32) #2

declare dso_local i64 @get_call_result_type(i32, i32*, i32*) #2

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32 @UInt32GetDatum(i32) #2

declare dso_local i32 @Int64GetDatum(i32) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @HeapTupleGetDatum(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
