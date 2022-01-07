; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_find_composite_type_dependencies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_find_composite_type_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { i32 }

@DependRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_depend_refclassid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i64 0, align 8
@Anum_pg_depend_refobjid = common dso_local global i32 0, align 4
@DependReferenceIndexId = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i64 0, align 8
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"cannot alter type \22%s\22 because column \22%s.%s\22 uses it\00", align 1
@RELKIND_COMPOSITE_TYPE = common dso_local global i64 0, align 8
@RELKIND_FOREIGN_TABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"cannot alter foreign table \22%s\22 because column \22%s.%s\22 uses its row type\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"cannot alter table \22%s\22 because column \22%s.%s\22 uses its row type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_composite_type_dependencies(i64 %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = call i32 (...) @check_stack_depth()
  %15 = load i32, i32* @DependRelationId, align 4
  %16 = load i32, i32* @AccessShareLock, align 4
  %17 = call %struct.TYPE_13__* @table_open(i32 %15, i32 %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %7, align 8
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %19 = load i32, i32* @Anum_pg_depend_refclassid, align 4
  %20 = load i32, i32* @BTEqualStrategyNumber, align 4
  %21 = load i32, i32* @F_OIDEQ, align 4
  %22 = load i64, i64* @TypeRelationId, align 8
  %23 = call i32 @ObjectIdGetDatum(i64 %22)
  %24 = call i32 @ScanKeyInit(i32* %18, i32 %19, i32 %20, i32 %21, i32 %23)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %26 = load i32, i32* @Anum_pg_depend_refobjid, align 4
  %27 = load i32, i32* @BTEqualStrategyNumber, align 4
  %28 = load i32, i32* @F_OIDEQ, align 4
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @ObjectIdGetDatum(i64 %29)
  %31 = call i32 @ScanKeyInit(i32* %25, i32 %26, i32 %27, i32 %28, i32 %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = load i32, i32* @DependReferenceIndexId, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %35 = call i32 @systable_beginscan(%struct.TYPE_13__* %32, i32 %33, i32 1, i32* null, i32 2, i32* %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %200, %68, %51, %3
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @systable_getnext(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = call i64 @HeapTupleIsValid(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %204

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @GETSTRUCT(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %11, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TypeRelationId, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = load i8*, i8** %6, align 8
  call void @find_composite_type_dependencies(i64 %54, %struct.TYPE_13__* %55, i8* %56)
  br label %36

57:                                               ; preds = %41
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RelationRelationId, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %57
  br label %36

69:                                               ; preds = %63
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @AccessShareLock, align 4
  %74 = call %struct.TYPE_13__* @relation_open(i64 %72, i32 %73)
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %12, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %80, 1
  %82 = call %struct.TYPE_15__* @TupleDescAttr(i32 %77, i64 %81)
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %13, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @RELKIND_RELATION, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %106, label %90

90:                                               ; preds = %69
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @RELKIND_MATVIEW, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %183

106:                                              ; preds = %98, %90, %69
  %107 = load i8*, i8** %6, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load i32, i32* @ERROR, align 4
  %111 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %112 = call i32 @errcode(i32 %111)
  %113 = load i8*, i8** %6, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %115 = call i8* @RelationGetRelationName(%struct.TYPE_13__* %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @NameStr(i32 %118)
  %120 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %113, i8* %115, i32 %119)
  %121 = call i32 @ereport(i32 %110, i32 %120)
  br label %182

122:                                              ; preds = %106
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @RELKIND_COMPOSITE_TYPE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %122
  %131 = load i32, i32* @ERROR, align 4
  %132 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %133 = call i32 @errcode(i32 %132)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %135 = call i8* @RelationGetRelationName(%struct.TYPE_13__* %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %137 = call i8* @RelationGetRelationName(%struct.TYPE_13__* %136)
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @NameStr(i32 %140)
  %142 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %135, i8* %137, i32 %141)
  %143 = call i32 @ereport(i32 %131, i32 %142)
  br label %181

144:                                              ; preds = %122
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %144
  %153 = load i32, i32* @ERROR, align 4
  %154 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %155 = call i32 @errcode(i32 %154)
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %157 = call i8* @RelationGetRelationName(%struct.TYPE_13__* %156)
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %159 = call i8* @RelationGetRelationName(%struct.TYPE_13__* %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @NameStr(i32 %162)
  %164 = call i32 @errmsg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* %157, i8* %159, i32 %163)
  %165 = call i32 @ereport(i32 %153, i32 %164)
  br label %180

166:                                              ; preds = %144
  %167 = load i32, i32* @ERROR, align 4
  %168 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %169 = call i32 @errcode(i32 %168)
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = call i8* @RelationGetRelationName(%struct.TYPE_13__* %170)
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %173 = call i8* @RelationGetRelationName(%struct.TYPE_13__* %172)
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @NameStr(i32 %176)
  %178 = call i32 @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %171, i8* %173, i32 %177)
  %179 = call i32 @ereport(i32 %167, i32 %178)
  br label %180

180:                                              ; preds = %166, %152
  br label %181

181:                                              ; preds = %180, %130
  br label %182

182:                                              ; preds = %181, %109
  br label %200

183:                                              ; preds = %98
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @OidIsValid(i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %183
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %198 = load i8*, i8** %6, align 8
  call void @find_composite_type_dependencies(i64 %196, %struct.TYPE_13__* %197, i8* %198)
  br label %199

199:                                              ; preds = %191, %183
  br label %200

200:                                              ; preds = %199, %182
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %202 = load i32, i32* @AccessShareLock, align 4
  %203 = call i32 @relation_close(%struct.TYPE_13__* %201, i32 %202)
  br label %36

204:                                              ; preds = %36
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @systable_endscan(i32 %205)
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %208 = load i32, i32* @AccessShareLock, align 4
  %209 = call i32 @relation_close(%struct.TYPE_13__* %207, i32 %208)
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local %struct.TYPE_13__* @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_13__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local %struct.TYPE_13__* @relation_open(i64, i32) #1

declare dso_local %struct.TYPE_15__* @TupleDescAttr(i32, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*, i32) #1

declare dso_local i8* @RelationGetRelationName(%struct.TYPE_13__*) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @relation_close(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
