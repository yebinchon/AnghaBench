; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_RangeVarCallbackForReindexIndex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_RangeVarCallbackForReindexIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ReindexIndexCallbackState = type { i64, i64 }

@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@ShareLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@RELKIND_INDEX = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_INDEX = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\22%s\22 is not an index\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i64, i8*)* @RangeVarCallbackForReindexIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeVarCallbackForReindexIndex(%struct.TYPE_3__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.ReindexIndexCallbackState*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.ReindexIndexCallbackState*
  store %struct.ReindexIndexCallbackState* %14, %struct.ReindexIndexCallbackState** %10, align 8
  %15 = load %struct.ReindexIndexCallbackState*, %struct.ReindexIndexCallbackState** %10, align 8
  %16 = getelementptr inbounds %struct.ReindexIndexCallbackState, %struct.ReindexIndexCallbackState* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @ShareLock, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @OidIsValid(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.ReindexIndexCallbackState*, %struct.ReindexIndexCallbackState** %10, align 8
  %34 = getelementptr inbounds %struct.ReindexIndexCallbackState, %struct.ReindexIndexCallbackState* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @UnlockRelationOid(i64 %35, i32 %36)
  %38 = load i64, i64* @InvalidOid, align 8
  %39 = load %struct.ReindexIndexCallbackState*, %struct.ReindexIndexCallbackState** %10, align 8
  %40 = getelementptr inbounds %struct.ReindexIndexCallbackState, %struct.ReindexIndexCallbackState* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %32, %28, %23
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @OidIsValid(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %103

46:                                               ; preds = %41
  %47 = load i64, i64* %6, align 8
  %48 = call signext i8 @get_rel_relkind(i64 %47)
  store i8 %48, i8* %9, align 1
  %49 = load i8, i8* %9, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %103

52:                                               ; preds = %46
  %53 = load i8, i8* %9, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @RELKIND_INDEX, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load i8, i8* %9, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @RELKIND_PARTITIONED_INDEX, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load i32, i32* @ERROR, align 4
  %66 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %67 = call i32 @errcode(i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = call i32 @ereport(i32 %65, i32 %71)
  br label %73

73:                                               ; preds = %64, %58, %52
  %74 = load i64, i64* %6, align 8
  %75 = call i32 (...) @GetUserId()
  %76 = call i32 @pg_class_ownercheck(i64 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %80 = load i32, i32* @OBJECT_INDEX, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @aclcheck_error(i32 %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %78, %73
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @IndexGetRelation(i64 %90, i32 1)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i64 @OidIsValid(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i64, i64* %12, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @LockRelationOid(i64 %96, i32 %97)
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.ReindexIndexCallbackState*, %struct.ReindexIndexCallbackState** %10, align 8
  %101 = getelementptr inbounds %struct.ReindexIndexCallbackState, %struct.ReindexIndexCallbackState* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %95, %89
  br label %103

103:                                              ; preds = %45, %51, %102, %85
  ret void
}

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @UnlockRelationOid(i64, i32) #1

declare dso_local signext i8 @get_rel_relkind(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @pg_class_ownercheck(i64, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i64 @IndexGetRelation(i64, i32) #1

declare dso_local i32 @LockRelationOid(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
