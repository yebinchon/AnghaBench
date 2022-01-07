; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATPrepChangePersistence.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATPrepChangePersistence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TABLE_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"cannot change logged status of table \22%s\22 because it is temporary\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"cannot change table \22%s\22 to unlogged because it is part of a publication\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Unlogged relations cannot be replicated.\00", align 1
@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@Anum_pg_constraint_confrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@CONSTRAINT_FOREIGN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [80 x i8] c"could not change table \22%s\22 to logged because it references unlogged table \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"could not change table \22%s\22 to unlogged because it references logged table \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @ATPrepChangePersistence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ATPrepChangePersistence(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %38 [
    i32 129, label %18
    i32 130, label %28
    i32 128, label %33
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %22)
  %24 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = call i32 @errtable(%struct.TYPE_15__* %25)
  %27 = call i32 @ereport(i32 %19, i32 %26)
  br label %38

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %184

32:                                               ; preds = %28
  br label %38

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %184

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %2, %37, %32, %18
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %38
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = call i64 @RelationGetRelid(%struct.TYPE_15__* %42)
  %44 = call i32 @GetRelationPublications(i64 %43)
  %45 = call i64 @list_length(i32 %44)
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %51)
  %53 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = call i32 @errdetail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @ereport(i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %47, %41, %38
  %57 = load i32, i32* @ConstraintRelationId, align 4
  %58 = load i32, i32* @AccessShareLock, align 4
  %59 = call %struct.TYPE_15__* @table_open(i32 %57, i32 %58)
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %6, align 8
  %60 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  br label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @Anum_pg_constraint_confrelid, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load i32, i32* @BTEqualStrategyNumber, align 4
  %70 = load i32, i32* @F_OIDEQ, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = call i64 @RelationGetRelid(%struct.TYPE_15__* %71)
  %73 = call i32 @ObjectIdGetDatum(i64 %72)
  %74 = call i32 @ScanKeyInit(i32* %60, i32 %68, i32 %69, i32 %70, i32 %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  br label %82

80:                                               ; preds = %67
  %81 = load i32, i32* @InvalidOid, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %85 = call i32 @systable_beginscan(%struct.TYPE_15__* %75, i32 %83, i32 1, i32* null, i32 1, i32* %84)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %177, %118, %82
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @systable_getnext(i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = call i64 @HeapTupleIsValid(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %178

91:                                               ; preds = %86
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @GETSTRUCT(i32 %92)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %95, %struct.TYPE_16__** %10, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CONSTRAINT_FOREIGN, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %177

101:                                              ; preds = %91
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  br label %112

108:                                              ; preds = %101
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i64 [ %107, %104 ], [ %111, %108 ]
  store i64 %113, i64* %11, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = call i64 @RelationGetRelid(%struct.TYPE_15__* %114)
  %116 = load i64, i64* %11, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %86

119:                                              ; preds = %112
  %120 = load i64, i64* %11, align 8
  %121 = load i32, i32* @AccessShareLock, align 4
  %122 = call %struct.TYPE_15__* @relation_open(i64 %120, i32 %121)
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %12, align 8
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %119
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 130
  br i1 %131, label %132, label %148

132:                                              ; preds = %125
  %133 = load i32, i32* @ERROR, align 4
  %134 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %135 = call i32 @errcode(i32 %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %136)
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %139 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %138)
  %140 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i32 %137, i32 %139)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @NameStr(i32 %144)
  %146 = call i32 @errtableconstraint(%struct.TYPE_15__* %141, i32 %145)
  %147 = call i32 @ereport(i32 %133, i32 %146)
  br label %148

148:                                              ; preds = %132, %125
  br label %173

149:                                              ; preds = %119
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 130
  br i1 %155, label %156, label %172

156:                                              ; preds = %149
  %157 = load i32, i32* @ERROR, align 4
  %158 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %159 = call i32 @errcode(i32 %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %160)
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %163 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %162)
  %164 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i32 %161, i32 %163)
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @NameStr(i32 %168)
  %170 = call i32 @errtableconstraint(%struct.TYPE_15__* %165, i32 %169)
  %171 = call i32 @ereport(i32 %157, i32 %170)
  br label %172

172:                                              ; preds = %156, %149
  br label %173

173:                                              ; preds = %172, %148
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %175 = load i32, i32* @AccessShareLock, align 4
  %176 = call i32 @relation_close(%struct.TYPE_15__* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %91
  br label %86

178:                                              ; preds = %86
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @systable_endscan(i32 %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %182 = load i32, i32* @AccessShareLock, align 4
  %183 = call i32 @table_close(%struct.TYPE_15__* %181, i32 %182)
  store i32 1, i32* %3, align 4
  br label %184

184:                                              ; preds = %178, %36, %31
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_15__*) #1

declare dso_local i32 @errtable(%struct.TYPE_15__*) #1

declare dso_local i64 @list_length(i32) #1

declare dso_local i32 @GetRelationPublications(i64) #1

declare dso_local i64 @RelationGetRelid(%struct.TYPE_15__*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local %struct.TYPE_15__* @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_15__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local %struct.TYPE_15__* @relation_open(i64, i32) #1

declare dso_local i32 @errtableconstraint(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @relation_close(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
