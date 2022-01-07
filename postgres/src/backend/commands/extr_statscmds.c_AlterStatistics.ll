; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_statscmds.c_AlterStatistics.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_statscmds.c_AlterStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@Natts_pg_statistic_ext = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"statistics target %d is too low\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"lowering statistics target to %d\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"statistics object \22%s.%s\22 does not exist, skipping\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"statistics object \22%s\22 does not exist, skipping\00", align 1
@InvalidObjectAddress = common dso_local global i32 0, align 4
@StatisticExtRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@STATEXTOID = common dso_local global i32 0, align 4
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_STATISTIC_EXT = common dso_local global i32 0, align 4
@Anum_pg_statistic_ext_stxstattarget = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterStatistics(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %17 = load i32, i32* @Natts_pg_statistic_ext, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @Natts_pg_statistic_ext, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = load i32, i32* @Natts_pg_statistic_ext, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, -1
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i32 @ereport(i32 %33, i32 %37)
  br label %50

39:                                               ; preds = %1
  %40 = load i32, i32* %13, align 4
  %41 = icmp sgt i32 %40, 10000
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  store i32 10000, i32* %13, align 4
  %43 = load i32, i32* @WARNING, align 4
  %44 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = call i32 @ereport(i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %42, %39
  br label %50

50:                                               ; preds = %49, %32
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @get_statistics_object_oid(i32 %53, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @OidIsValid(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %50
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @Assert(i32 %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DeconstructQualifiedName(i32 %68, i8** %14, i8** %15)
  %70 = load i8*, i8** %14, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load i32, i32* @NOTICE, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %74, i8* %75)
  %77 = call i32 @ereport(i32 %73, i32 %76)
  br label %83

78:                                               ; preds = %61
  %79 = load i32, i32* @NOTICE, align 4
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  %82 = call i32 @ereport(i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %78, %72
  %84 = load i32, i32* @InvalidObjectAddress, align 4
  store i32 %84, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %149

85:                                               ; preds = %50
  %86 = load i32, i32* @StatisticExtRelationId, align 4
  %87 = load i32, i32* @RowExclusiveLock, align 4
  %88 = call i32 @table_open(i32 %86, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @STATEXTOID, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @ObjectIdGetDatum(i32 %90)
  %92 = call %struct.TYPE_10__* @SearchSysCache1(i32 %89, i32 %91)
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %6, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 (...) @GetUserId()
  %95 = call i32 @pg_statistics_object_ownercheck(i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %85
  %98 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %99 = load i32, i32* @OBJECT_STATISTIC_EXT, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @NameListToString(i32 %102)
  %104 = call i32 @aclcheck_error(i32 %98, i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %97, %85
  %106 = mul nuw i64 4, %18
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memset(i32* %20, i32 0, i32 %107)
  %109 = mul nuw i64 4, %22
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memset(i32* %23, i32 0, i32 %110)
  %112 = mul nuw i64 4, %25
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memset(i32* %26, i32 0, i32 %113)
  %115 = load i32, i32* @Anum_pg_statistic_ext_stxstattarget, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %26, i64 %117
  store i32 1, i32* %118, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @Int32GetDatum(i32 %119)
  %121 = load i32, i32* @Anum_pg_statistic_ext_stxstattarget, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %20, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @RelationGetDescr(i32 %126)
  %128 = call %struct.TYPE_10__* @heap_modify_tuple(%struct.TYPE_10__* %125, i32 %127, i32* %20, i32* %23, i32* %26)
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %7, align 8
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %133 = call i32 @CatalogTupleUpdate(i32 %129, i32* %131, %struct.TYPE_10__* %132)
  %134 = load i32, i32* @StatisticExtRelationId, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @InvokeObjectPostAlterHook(i32 %134, i32 %135, i32 0)
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @StatisticExtRelationId, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @ObjectAddressSet(i32 %137, i32 %138, i32 %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %142 = call i32 @heap_freetuple(%struct.TYPE_10__* %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %144 = call i32 @ReleaseSysCache(%struct.TYPE_10__* %143)
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @RowExclusiveLock, align 4
  %147 = call i32 @table_close(i32 %145, i32 %146)
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %149

149:                                              ; preds = %105, %83
  %150 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @get_statistics_object_oid(i32, i32) #2

declare dso_local i32 @OidIsValid(i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @DeconstructQualifiedName(i32, i8**, i8**) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_10__* @SearchSysCache1(i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @pg_statistics_object_ownercheck(i32, i32) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i32 @aclcheck_error(i32, i32, i32) #2

declare dso_local i32 @NameListToString(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local %struct.TYPE_10__* @heap_modify_tuple(%struct.TYPE_10__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #2

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_10__*) #2

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_10__*) #2

declare dso_local i32 @table_close(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
