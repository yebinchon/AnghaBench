; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_relation_by_qualified_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_relation_by_qualified_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@RelationRelationId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@RELKIND_INDEX = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_INDEX = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\22%s\22 is not an index\00", align 1
@RELKIND_SEQUENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"\22%s\22 is not a sequence\00", align 1
@RELKIND_RELATION = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"\22%s\22 is not a table\00", align 1
@RELKIND_VIEW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"\22%s\22 is not a view\00", align 1
@RELKIND_MATVIEW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"\22%s\22 is not a materialized view\00", align 1
@RELKIND_FOREIGN_TABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"\22%s\22 is not a foreign table\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"unrecognized objtype: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32*, %struct.TYPE_10__**, i32, i32)* @get_relation_by_qualified_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_relation_by_qualified_name(%struct.TYPE_11__* noalias sret %0, i32 %1, i32* %2, %struct.TYPE_10__** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 %5, i32* %11, align 4
  %13 = load i32, i32* @RelationRelationId, align 4
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @InvalidOid, align 4
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @makeRangeVarFromNameList(i32* %18)
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.TYPE_10__* @relation_openrv_extended(i32 %19, i32 %20, i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %12, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  br label %156

26:                                               ; preds = %6
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %146 [
    i32 132, label %28
    i32 130, label %53
    i32 129, label %70
    i32 128, label %95
    i32 131, label %112
    i32 133, label %129
  ]

28:                                               ; preds = %26
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RELKIND_INDEX, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %28
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RELKIND_PARTITIONED_INDEX, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i32, i32* @ERROR, align 4
  %46 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %47 = call i32 @errcode(i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %49 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %48)
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = call i32 @ereport(i32 %45, i32 %50)
  br label %52

52:                                               ; preds = %44, %36, %28
  br label %150

53:                                               ; preds = %26
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @RELKIND_SEQUENCE, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load i32, i32* @ERROR, align 4
  %63 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %66 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %65)
  %67 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = call i32 @ereport(i32 %62, i32 %67)
  br label %69

69:                                               ; preds = %61, %53
  br label %150

70:                                               ; preds = %26
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RELKIND_RELATION, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %70
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RELKIND_PARTITIONED_TABLE, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %91 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %90)
  %92 = call i32 @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = call i32 @ereport(i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %86, %78, %70
  br label %150

95:                                               ; preds = %26
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RELKIND_VIEW, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = load i32, i32* @ERROR, align 4
  %105 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %106 = call i32 @errcode(i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %108 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %107)
  %109 = call i32 @errmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = call i32 @ereport(i32 %104, i32 %109)
  br label %111

111:                                              ; preds = %103, %95
  br label %150

112:                                              ; preds = %26
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @RELKIND_MATVIEW, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = load i32, i32* @ERROR, align 4
  %122 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %123 = call i32 @errcode(i32 %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %125 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %124)
  %126 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = call i32 @ereport(i32 %121, i32 %126)
  br label %128

128:                                              ; preds = %120, %112
  br label %150

129:                                              ; preds = %26
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @RELKIND_FOREIGN_TABLE, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %129
  %138 = load i32, i32* @ERROR, align 4
  %139 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %140 = call i32 @errcode(i32 %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %142 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %141)
  %143 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  %144 = call i32 @ereport(i32 %138, i32 %143)
  br label %145

145:                                              ; preds = %137, %129
  br label %150

146:                                              ; preds = %26
  %147 = load i32, i32* @ERROR, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @elog(i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %146, %145, %128, %111, %94, %69, %52
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %152 = call i32 @RelationGetRelid(%struct.TYPE_10__* %151)
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  store i32 %152, i32* %153, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %155 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* %154, %struct.TYPE_10__** %155, align 8
  br label %156

156:                                              ; preds = %150, %25
  ret void
}

declare dso_local %struct.TYPE_10__* @relation_openrv_extended(i32, i32, i32) #1

declare dso_local i32 @makeRangeVarFromNameList(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_10__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
