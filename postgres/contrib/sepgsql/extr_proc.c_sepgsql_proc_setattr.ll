; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_proc.c_sepgsql_proc_setattr.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_proc.c_sepgsql_proc_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@ProcedureRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_proc_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ProcedureOidIndexId = common dso_local global i32 0, align 4
@SnapshotSelf = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not find tuple for function %u\00", align 1
@PROCOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@SEPG_DB_PROCEDURE__SETATTR = common dso_local global i32 0, align 4
@SEPG_DB_PROCEDURE__INSTALL = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_PROCEDURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_proc_setattr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* @ProcedureRelationId, align 4
  %14 = load i32, i32* @AccessShareLock, align 4
  %15 = call i32 @table_open(i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @Anum_pg_proc_oid, align 4
  %17 = load i32, i32* @BTEqualStrategyNumber, align 4
  %18 = load i32, i32* @F_OIDEQ, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @ObjectIdGetDatum(i32 %19)
  %21 = call i32 @ScanKeyInit(i32* %4, i32 %16, i32 %17, i32 %18, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ProcedureOidIndexId, align 4
  %24 = load i32, i32* @SnapshotSelf, align 4
  %25 = call i32 @systable_beginscan(i32 %22, i32 %23, i32 1, i32 %24, i32 1, i32* %4)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @systable_getnext(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @HeapTupleIsValid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @elog(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %1
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @GETSTRUCT(i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %9, align 8
  %39 = load i32, i32* @PROCOID, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @ObjectIdGetDatum(i32 %40)
  %42 = call i32 @SearchSysCache1(i32 %39, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @HeapTupleIsValid(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @elog(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %35
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @GETSTRUCT(i32 %51)
  %53 = inttoptr i64 %52 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %8, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @sepgsql_schema_remove_name(i64 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @sepgsql_schema_add_name(i64 %68)
  br label %70

70:                                               ; preds = %61, %50
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @NameStr(i32 %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @NameStr(i32 %77)
  %79 = call i64 @strcmp(i32 %74, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %70
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @sepgsql_schema_rename(i64 %84)
  br label %86

86:                                               ; preds = %81, %70
  %87 = load i32, i32* @SEPG_DB_PROCEDURE__SETATTR, align 4
  store i32 %87, i32* %10, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @SEPG_DB_PROCEDURE__INSTALL, align 4
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %97, %92, %86
  %102 = load i32, i32* @ProcedureRelationId, align 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %2, align 4
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 %104, i32* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = call i8* @getObjectIdentity(%struct.TYPE_5__* %11)
  store i8* %107, i8** %12, align 8
  %108 = load i32, i32* @SEPG_CLASS_DB_PROCEDURE, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_5__* %11, i32 %108, i32 %109, i8* %110, i32 1)
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @pfree(i8* %112)
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @ReleaseSysCache(i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @systable_endscan(i32 %116)
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @AccessShareLock, align 4
  %120 = call i32 @table_close(i32 %118, i32 %119)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @sepgsql_schema_remove_name(i64) #1

declare dso_local i32 @sepgsql_schema_add_name(i64) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @sepgsql_schema_rename(i64) #1

declare dso_local i8* @getObjectIdentity(%struct.TYPE_5__*) #1

declare dso_local i32 @sepgsql_avc_check_perms(%struct.TYPE_5__*, i32, i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
