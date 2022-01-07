; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tsearchcmds.c_AlterTSConfiguration.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tsearchcmds.c_AlterTSConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"text search configuration \22%s\22 does not exist\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_TSCONFIGURATION = common dso_local global i32 0, align 4
@TSConfigMapRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@TSConfigRelationId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterTSConfiguration(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @GetTSConfigTuple(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @HeapTupleIsValid(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @NameListToString(i32 %20)
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @ereport(i32 %15, i32 %22)
  br label %24

24:                                               ; preds = %14, %1
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @GETSTRUCT(i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (...) @GetUserId()
  %32 = call i32 @pg_ts_config_ownercheck(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %36 = load i32, i32* @OBJECT_TSCONFIGURATION, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @NameListToString(i32 %39)
  %41 = call i32 @aclcheck_error(i32 %35, i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %34, %24
  %43 = load i32, i32* @TSConfigMapRelationId, align 4
  %44 = load i32, i32* @RowExclusiveLock, align 4
  %45 = call i32 @table_open(i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @MakeConfigurationMapping(%struct.TYPE_7__* %51, i32 %52, i32 %53)
  br label %66

55:                                               ; preds = %42
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @DropConfigurationMapping(%struct.TYPE_7__* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %50
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @makeConfigurationDependencies(i32 %67, i32 1, i32 %68)
  %70 = load i32, i32* @TSConfigRelationId, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @InvokeObjectPostAlterHook(i32 %70, i32 %71, i32 0)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @TSConfigRelationId, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @ObjectAddressSet(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @RowExclusiveLock, align 4
  %79 = call i32 @table_close(i32 %77, i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @ReleaseSysCache(i32 %80)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @GetTSConfigTuple(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @NameListToString(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @pg_ts_config_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @MakeConfigurationMapping(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @DropConfigurationMapping(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @makeConfigurationDependencies(i32, i32, i32) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
