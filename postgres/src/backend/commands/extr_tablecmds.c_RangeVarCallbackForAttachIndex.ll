; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_RangeVarCallbackForAttachIndex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_RangeVarCallbackForAttachIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.AttachIndexCallbackState = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@AccessShareLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@RELOID = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@RELKIND_INDEX = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\22%s\22 is not an index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, i64, i8*)* @RangeVarCallbackForAttachIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeVarCallbackForAttachIndex(%struct.TYPE_4__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.AttachIndexCallbackState*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.AttachIndexCallbackState*
  store %struct.AttachIndexCallbackState* %13, %struct.AttachIndexCallbackState** %9, align 8
  %14 = load %struct.AttachIndexCallbackState*, %struct.AttachIndexCallbackState** %9, align 8
  %15 = getelementptr inbounds %struct.AttachIndexCallbackState, %struct.AttachIndexCallbackState* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %4
  %19 = load %struct.AttachIndexCallbackState*, %struct.AttachIndexCallbackState** %9, align 8
  %20 = getelementptr inbounds %struct.AttachIndexCallbackState, %struct.AttachIndexCallbackState* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @AccessShareLock, align 4
  %23 = call i32 @LockRelationOid(i64 %21, i32 %22)
  %24 = load %struct.AttachIndexCallbackState*, %struct.AttachIndexCallbackState** %9, align 8
  %25 = getelementptr inbounds %struct.AttachIndexCallbackState, %struct.AttachIndexCallbackState* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %18, %4
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.AttachIndexCallbackState*, %struct.AttachIndexCallbackState** %9, align 8
  %32 = getelementptr inbounds %struct.AttachIndexCallbackState, %struct.AttachIndexCallbackState* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @OidIsValid(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.AttachIndexCallbackState*, %struct.AttachIndexCallbackState** %9, align 8
  %38 = getelementptr inbounds %struct.AttachIndexCallbackState, %struct.AttachIndexCallbackState* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @AccessShareLock, align 4
  %41 = call i32 @UnlockRelationOid(i64 %39, i32 %40)
  %42 = load i64, i64* @InvalidOid, align 8
  %43 = load %struct.AttachIndexCallbackState*, %struct.AttachIndexCallbackState** %9, align 8
  %44 = getelementptr inbounds %struct.AttachIndexCallbackState, %struct.AttachIndexCallbackState* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %36, %30, %26
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @OidIsValid(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %95

50:                                               ; preds = %45
  %51 = load i32, i32* @RELOID, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @ObjectIdGetDatum(i64 %52)
  %54 = call i32 @SearchSysCache1(i32 %51, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @HeapTupleIsValid(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %95

59:                                               ; preds = %50
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @GETSTRUCT(i32 %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %10, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %59
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RELKIND_INDEX, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i32, i32* @ERROR, align 4
  %76 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %77 = call i32 @errcode(i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = call i32 @ereport(i32 %75, i32 %81)
  br label %83

83:                                               ; preds = %74, %68, %59
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ReleaseSysCache(i32 %84)
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @IndexGetRelation(i64 %86, i32 0)
  %88 = load %struct.AttachIndexCallbackState*, %struct.AttachIndexCallbackState** %9, align 8
  %89 = getelementptr inbounds %struct.AttachIndexCallbackState, %struct.AttachIndexCallbackState* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load %struct.AttachIndexCallbackState*, %struct.AttachIndexCallbackState** %9, align 8
  %91 = getelementptr inbounds %struct.AttachIndexCallbackState, %struct.AttachIndexCallbackState* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @AccessShareLock, align 4
  %94 = call i32 @LockRelationOid(i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %83, %58, %49
  ret void
}

declare dso_local i32 @LockRelationOid(i64, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @UnlockRelationOid(i64, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @IndexGetRelation(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
