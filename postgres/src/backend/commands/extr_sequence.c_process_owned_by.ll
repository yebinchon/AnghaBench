; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_process_owned_by.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_process_owned_by.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i8*, i8* }

@DEPENDENCY_INTERNAL = common dso_local global i64 0, align 8
@DEPENDENCY_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid OWNED BY option\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Specify OWNED BY table.column or OWNED BY NONE.\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_FOREIGN_TABLE = common dso_local global i64 0, align 8
@RELKIND_VIEW = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"referenced relation \22%s\22 is not a table or foreign table\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"sequence must have same owner as table it is linked to\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"sequence must be in same schema as table it is linked to\00", align 1
@InvalidAttrNumber = common dso_local global i64 0, align 8
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"cannot change ownership of identity sequence\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Sequence \22%s\22 is linked to table \22%s\22.\00", align 1
@RelationRelationId = common dso_local global i8* null, align 8
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*, i32)* @process_owned_by to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_owned_by(%struct.TYPE_13__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__, align 8
  %17 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @DEPENDENCY_INTERNAL, align 8
  br label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @DEPENDENCY_AUTO, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i64 [ %21, %20 ], [ %23, %22 ]
  store i64 %25, i64* %7, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @list_length(i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %48

34:                                               ; preds = %24
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @linitial(i32* %35)
  %37 = call i8* @strVal(i32 %36)
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @errhint(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @ereport(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %40, %34
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  store i64 0, i64* %10, align 8
  br label %150

48:                                               ; preds = %24
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @list_copy(i32* %49)
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 1
  %53 = call i32* @list_truncate(i32 %50, i32 %52)
  store i32* %53, i32** %11, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @list_tail(i32* %54)
  %56 = call i32 @lfirst(i32 %55)
  %57 = call i8* @strVal(i32 %56)
  store i8* %57, i8** %12, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32* @makeRangeVarFromNameList(i32* %58)
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* @AccessShareLock, align 4
  %62 = call %struct.TYPE_13__* @relation_openrv(i32* %60, i32 %61)
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %9, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RELKIND_RELATION, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %102, label %70

70:                                               ; preds = %48
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %102, label %78

78:                                               ; preds = %70
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @RELKIND_VIEW, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %102, label %86

86:                                               ; preds = %78
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %102, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %97 = call i32 @errcode(i32 %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = call i32 @RelationGetRelationName(%struct.TYPE_13__* %98)
  %100 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = call i32 @ereport(i32 %95, i32 %100)
  br label %102

102:                                              ; preds = %94, %86, %78, %70, %48
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %107, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %102
  %115 = load i32, i32* @ERROR, align 4
  %116 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %117 = call i32 @errcode(i32 %116)
  %118 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %119 = call i32 @ereport(i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %114, %102
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = call i64 @RelationGetNamespace(%struct.TYPE_13__* %121)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %124 = call i64 @RelationGetNamespace(%struct.TYPE_13__* %123)
  %125 = icmp ne i64 %122, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load i32, i32* @ERROR, align 4
  %128 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %129 = call i32 @errcode(i32 %128)
  %130 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %131 = call i32 @ereport(i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %126, %120
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %134 = call i8* @RelationGetRelid(%struct.TYPE_13__* %133)
  %135 = load i8*, i8** %12, align 8
  %136 = call i64 @get_attnum(i8* %134, i8* %135)
  store i64 %136, i64* %10, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* @InvalidAttrNumber, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %132
  %141 = load i32, i32* @ERROR, align 4
  %142 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %143 = call i32 @errcode(i32 %142)
  %144 = load i8*, i8** %12, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %146 = call i32 @RelationGetRelationName(%struct.TYPE_13__* %145)
  %147 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %144, i32 %146)
  %148 = call i32 @ereport(i32 %141, i32 %147)
  br label %149

149:                                              ; preds = %140, %132
  br label %150

150:                                              ; preds = %149, %47
  %151 = load i64, i64* %7, align 8
  %152 = load i64, i64* @DEPENDENCY_AUTO, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %150
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = call i8* @RelationGetRelid(%struct.TYPE_13__* %155)
  %157 = load i64, i64* @DEPENDENCY_INTERNAL, align 8
  %158 = call i64 @sequenceIsOwned(i8* %156, i64 %157, i32* %14, i32* %15)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %154
  %161 = load i32, i32* @ERROR, align 4
  %162 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %163 = call i32 @errcode(i32 %162)
  %164 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %166 = call i32 @RelationGetRelationName(%struct.TYPE_13__* %165)
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @get_rel_name(i32 %167)
  %169 = call i32 @errdetail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %166, i32 %168)
  %170 = call i32 @ereport(i32 %161, i32 %169)
  br label %171

171:                                              ; preds = %160, %154
  br label %172

172:                                              ; preds = %171, %150
  %173 = load i8*, i8** @RelationRelationId, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %175 = call i8* @RelationGetRelid(%struct.TYPE_13__* %174)
  %176 = load i8*, i8** @RelationRelationId, align 8
  %177 = load i64, i64* %7, align 8
  %178 = call i32 @deleteDependencyRecordsForClass(i8* %173, i8* %175, i8* %176, i64 %177)
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %180 = icmp ne %struct.TYPE_13__* %179, null
  br i1 %180, label %181, label %197

181:                                              ; preds = %172
  %182 = load i8*, i8** @RelationRelationId, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  store i8* %182, i8** %183, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %185 = call i8* @RelationGetRelid(%struct.TYPE_13__* %184)
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  store i8* %185, i8** %186, align 8
  %187 = load i64, i64* %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i64 %187, i64* %188, align 8
  %189 = load i8*, i8** @RelationRelationId, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  store i8* %189, i8** %190, align 8
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %192 = call i8* @RelationGetRelid(%struct.TYPE_13__* %191)
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i8* %192, i8** %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i64 0, i64* %194, align 8
  %195 = load i64, i64* %7, align 8
  %196 = call i32 @recordDependencyOn(%struct.TYPE_14__* %17, %struct.TYPE_14__* %16, i64 %195)
  br label %197

197:                                              ; preds = %181, %172
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %199 = icmp ne %struct.TYPE_13__* %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %202 = load i32, i32* @NoLock, align 4
  %203 = call i32 @relation_close(%struct.TYPE_13__* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %197
  ret void
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @linitial(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32* @list_truncate(i32, i32) #1

declare dso_local i32 @list_copy(i32*) #1

declare dso_local i32 @lfirst(i32) #1

declare dso_local i32 @list_tail(i32*) #1

declare dso_local i32* @makeRangeVarFromNameList(i32*) #1

declare dso_local %struct.TYPE_13__* @relation_openrv(i32*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_13__*) #1

declare dso_local i64 @RelationGetNamespace(%struct.TYPE_13__*) #1

declare dso_local i64 @get_attnum(i8*, i8*) #1

declare dso_local i8* @RelationGetRelid(%struct.TYPE_13__*) #1

declare dso_local i64 @sequenceIsOwned(i8*, i64, i32*, i32*) #1

declare dso_local i32 @errdetail(i8*, i32, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @deleteDependencyRecordsForClass(i8*, i8*, i8*, i64) #1

declare dso_local i32 @recordDependencyOn(%struct.TYPE_14__*, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @relation_close(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
