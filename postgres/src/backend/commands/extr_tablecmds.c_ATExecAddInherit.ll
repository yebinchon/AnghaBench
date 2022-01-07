; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecAddInherit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecAddInherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i32 }

@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@ATT_TABLE = common dso_local global i32 0, align 4
@ATT_FOREIGN_TABLE = common dso_local global i32 0, align 4
@RELPERSISTENCE_TEMP = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot inherit from temporary relation \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"cannot inherit from temporary relation of another session\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"cannot inherit to temporary relation of another session\00", align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"cannot inherit from partitioned table \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"cannot inherit from a partition\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_TABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"circular inheritance not allowed\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\22%s\22 is already a child of \22%s\22.\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [68 x i8] c"trigger \22%s\22 prevents table \22%s\22 from becoming an inheritance child\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"ROW triggers with transition tables are not supported in inheritance hierarchies.\00", align 1
@RelationRelationId = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i32)* @ATExecAddInherit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ATExecAddInherit(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  %13 = call %struct.TYPE_15__* @table_openrv(%struct.TYPE_16__* %11, i32 %12)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = load i32, i32* @ATT_TABLE, align 4
  %16 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @ATSimplePermissions(%struct.TYPE_15__* %14, i32 %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RELPERSISTENCE_TEMP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RELPERSISTENCE_TEMP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %38)
  %40 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = call i32 @ereport(i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %34, %26, %3
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RELPERSISTENCE_TEMP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @ereport(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %50, %42
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RELPERSISTENCE_TEMP, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ERROR, align 4
  %76 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %77 = call i32 @errcode(i32 %76)
  %78 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %79 = call i32 @ereport(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %69, %61
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %80
  %89 = load i32, i32* @ERROR, align 4
  %90 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %91 = call i32 @errcode(i32 %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = call i32 @ereport(i32 %89, i32 %95)
  br label %97

97:                                               ; preds = %88, %80
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32, i32* @ERROR, align 4
  %106 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %107 = call i32 @errcode(i32 %106)
  %108 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %109 = call i32 @ereport(i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %104, %97
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = call i32 @RelationGetRelid(%struct.TYPE_15__* %111)
  %113 = load i32, i32* @AccessShareLock, align 4
  %114 = call i32* @find_all_inheritors(i32 %112, i32 %113, i32* null)
  store i32* %114, i32** %8, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %117 = call i32 @RelationGetRelid(%struct.TYPE_15__* %116)
  %118 = call i64 @list_member_oid(i32* %115, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %110
  %121 = load i32, i32* @ERROR, align 4
  %122 = load i32, i32* @ERRCODE_DUPLICATE_TABLE, align 4
  %123 = call i32 @errcode(i32 %122)
  %124 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %128)
  %130 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %127, i32 %129)
  %131 = call i32 @ereport(i32 %121, i32 %130)
  br label %132

132:                                              ; preds = %120, %110
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i8* @FindTriggerIncompatibleWithInheritance(i32 %135)
  store i8* %136, i8** %10, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %149

139:                                              ; preds = %132
  %140 = load i32, i32* @ERROR, align 4
  %141 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %142 = call i32 @errcode(i32 %141)
  %143 = load i8*, i8** %10, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %144)
  %146 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i8* %143, i32 %145)
  %147 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0))
  %148 = call i32 @ereport(i32 %140, i32 %147)
  br label %149

149:                                              ; preds = %139, %132
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %152 = call i32 @CreateInheritance(%struct.TYPE_15__* %150, %struct.TYPE_15__* %151)
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @RelationRelationId, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %156 = call i32 @RelationGetRelid(%struct.TYPE_15__* %155)
  %157 = call i32 @ObjectAddressSet(i32 %153, i32 %154, i32 %156)
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %159 = load i32, i32* @NoLock, align 4
  %160 = call i32 @table_close(%struct.TYPE_15__* %158, i32 %159)
  %161 = load i32, i32* %9, align 4
  ret i32 %161
}

declare dso_local %struct.TYPE_15__* @table_openrv(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ATSimplePermissions(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_15__*) #1

declare dso_local i32* @find_all_inheritors(i32, i32, i32*) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_15__*) #1

declare dso_local i64 @list_member_oid(i32*, i32) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i8* @FindTriggerIncompatibleWithInheritance(i32) #1

declare dso_local i32 @CreateInheritance(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @table_close(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
