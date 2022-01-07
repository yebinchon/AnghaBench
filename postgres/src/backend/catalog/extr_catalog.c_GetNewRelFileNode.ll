; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_catalog.c_GetNewRelFileNode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_catalog.c_GetNewRelFileNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i8*, i8* }

@IsBinaryUpgrade = common dso_local global i32 0, align 4
@InvalidBackendId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid relpersistence: %c\00", align 1
@InvalidOid = common dso_local global i8* null, align 8
@MyDatabaseTableSpace = common dso_local global i8* null, align 8
@GLOBALTABLESPACE_OID = common dso_local global i64 0, align 8
@MyDatabaseId = common dso_local global i8* null, align 8
@ClassOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_class_oid = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@F_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetNewRelFileNode(i8* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  %12 = load i32, i32* @IsBinaryUpgrade, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i8, i8* %7, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %23 [
    i32 129, label %19
    i32 128, label %21
    i32 130, label %21
  ]

19:                                               ; preds = %3
  %20 = call i32 (...) @BackendIdForTempRelations()
  store i32 %20, i32* %11, align 4
  br label %28

21:                                               ; preds = %3, %3
  %22 = load i32, i32* @InvalidBackendId, align 4
  store i32 %22, i32* %11, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i8, i8* %7, align 1
  %26 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 signext %25)
  %27 = load i8*, i8** @InvalidOid, align 8
  store i8* %27, i8** %4, align 8
  br label %89

28:                                               ; preds = %21, %19
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  br label %35

33:                                               ; preds = %28
  %34 = load i8*, i8** @MyDatabaseTableSpace, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i8* [ %32, %31 ], [ %34, %33 ]
  %37 = ptrtoint i8* %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GLOBALTABLESPACE_OID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i8*, i8** @InvalidOid, align 8
  br label %49

47:                                               ; preds = %35
  %48 = load i8*, i8** @MyDatabaseId, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i8* [ %46, %45 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  br label %55

55:                                               ; preds = %82, %49
  %56 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @ClassOidIndexId, align 4
  %62 = load i32, i32* @Anum_pg_class_oid, align 4
  %63 = call i8* @GetNewOidWithIndex(i64 %60, i32 %61, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %70

66:                                               ; preds = %55
  %67 = call i8* (...) @GetNewObjectId()
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %59
  %71 = load i32, i32* @MAIN_FORKNUM, align 4
  %72 = call i8* @relpath(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %8, i32 %71)
  store i8* %72, i8** %9, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* @F_OK, align 4
  %75 = call i64 @access(i8* %73, i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 1, i32* %10, align 4
  br label %79

78:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @pfree(i8* %80)
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %55, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %4, align 8
  br label %89

89:                                               ; preds = %85, %23
  %90 = load i8*, i8** %4, align 8
  ret i8* %90
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BackendIdForTempRelations(...) #1

declare dso_local i32 @elog(i32, i8*, i8 signext) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i8* @GetNewOidWithIndex(i64, i32, i32) #1

declare dso_local i8* @GetNewObjectId(...) #1

declare dso_local i8* @relpath(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8, i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
