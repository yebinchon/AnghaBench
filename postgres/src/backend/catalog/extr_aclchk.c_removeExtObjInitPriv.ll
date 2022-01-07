; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_removeExtObjInitPriv.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_removeExtObjInitPriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@RelationRelationId = common dso_local global i64 0, align 8
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@RELKIND_INDEX = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@RELKIND_COMPOSITE_TYPE = common dso_local global i64 0, align 8
@RELKIND_SEQUENCE = common dso_local global i64 0, align 8
@ATTNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @removeExtObjInitPriv(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @RelationRelationId, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %87

13:                                               ; preds = %2
  %14 = load i32, i32* @RELOID, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @ObjectIdGetDatum(i64 %15)
  %17 = call i32 @SearchSysCache1(i32 %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @HeapTupleIsValid(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %21, %13
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @GETSTRUCT(i32 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %5, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RELKIND_INDEX, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %25
  br label %91

41:                                               ; preds = %34
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RELKIND_COMPOSITE_TYPE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %91

48:                                               ; preds = %41
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RELKIND_SEQUENCE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %48
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %58

58:                                               ; preds = %80, %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = load i32, i32* @ATTNUM, align 4
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @ObjectIdGetDatum(i64 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @Int16GetDatum(i32 %66)
  %68 = call i32 @SearchSysCache2(i32 %63, i32 %65, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @HeapTupleIsValid(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  br label %80

73:                                               ; preds = %62
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @recordExtensionInitPrivWorker(i64 %74, i64 %75, i32 %76, i32* null)
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @ReleaseSysCache(i32 %78)
  br label %80

80:                                               ; preds = %73, %72
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %58

83:                                               ; preds = %58
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @ReleaseSysCache(i32 %85)
  br label %87

87:                                               ; preds = %84, %2
  %88 = load i64, i64* %3, align 8
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @recordExtensionInitPrivWorker(i64 %88, i64 %89, i32 0, i32* null)
  br label %91

91:                                               ; preds = %87, %47, %40
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @recordExtensionInitPrivWorker(i64, i64, i32, i32*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
