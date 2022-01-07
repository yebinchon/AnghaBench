; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_AlterForeignDataWrapper.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_AlterForeignDataWrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i8*, i8* }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i8*, i8* }

@Natts_pg_foreign_data_wrapper = common dso_local global i32 0, align 4
@ForeignDataWrapperRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"permission denied to alter foreign-data wrapper \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Must be superuser to alter a foreign-data wrapper.\00", align 1
@FOREIGNDATAWRAPPERNAME = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"foreign-data wrapper \22%s\22 does not exist\00", align 1
@Anum_pg_foreign_data_wrapper_fdwhandler = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [89 x i8] c"changing the foreign-data wrapper handler can change behavior of existing foreign tables\00", align 1
@Anum_pg_foreign_data_wrapper_fdwvalidator = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [106 x i8] c"changing the foreign-data wrapper validator can cause the options for dependent objects to become invalid\00", align 1
@FOREIGNDATAWRAPPEROID = common dso_local global i32 0, align 4
@Anum_pg_foreign_data_wrapper_fdwoptions = common dso_local global i32 0, align 4
@ProcedureRelationId = common dso_local global i8* null, align 8
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AlterForeignDataWrapper(%struct.TYPE_18__* noalias sret %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %3, align 8
  %19 = load i32, i32* @Natts_pg_foreign_data_wrapper, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load i32, i32* @Natts_pg_foreign_data_wrapper, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %26 = load i32, i32* @Natts_pg_foreign_data_wrapper, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %10, align 8
  %29 = load i32, i32* @ForeignDataWrapperRelationId, align 4
  %30 = load i32, i32* @RowExclusiveLock, align 4
  %31 = call i32 @table_open(i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = call i32 (...) @superuser()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = call i32 @errhint(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %35, i32 %42)
  br label %44

44:                                               ; preds = %34, %2
  %45 = load i32, i32* @FOREIGNDATAWRAPPERNAME, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CStringGetDatum(i32 %48)
  %50 = call %struct.TYPE_19__* @SearchSysCacheCopy1(i32 %45, i32 %49)
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %5, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = call i32 @HeapTupleIsValid(%struct.TYPE_19__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = call i32 @ereport(i32 %55, i32 %61)
  br label %63

63:                                               ; preds = %54, %44
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = call i64 @GETSTRUCT(%struct.TYPE_19__* %64)
  %66 = inttoptr i64 %65 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %66, %struct.TYPE_20__** %6, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %11, align 8
  %70 = mul nuw i64 4, %20
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memset(i32* %22, i32 0, i32 %71)
  %73 = mul nuw i64 4, %24
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memset(i32* %25, i32 0, i32 %74)
  %76 = mul nuw i64 4, %27
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memset(i32* %28, i32 0, i32 %77)
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @parse_func_options(i32 %81, i32* %14, i8** %16, i32* %15, i8** %17)
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %63
  %86 = load i8*, i8** %16, align 8
  %87 = call i32 @ObjectIdGetDatum(i8* %86)
  %88 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwhandler, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %22, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwhandler, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %28, i64 %94
  store i32 1, i32* %95, align 4
  %96 = load i32, i32* @WARNING, align 4
  %97 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0))
  %98 = call i32 @ereport(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %85, %63
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %99
  %103 = load i8*, i8** %17, align 8
  %104 = call i32 @ObjectIdGetDatum(i8* %103)
  %105 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwvalidator, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %22, i64 %107
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwvalidator, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %28, i64 %111
  store i32 1, i32* %112, align 4
  %113 = load i8*, i8** %17, align 8
  %114 = call i64 @OidIsValid(i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %102
  %117 = load i32, i32* @WARNING, align 4
  %118 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0))
  %119 = call i32 @ereport(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %102
  br label %125

121:                                              ; preds = %99
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %17, align 8
  br label %125

125:                                              ; preds = %121, %120
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %167

130:                                              ; preds = %125
  %131 = load i32, i32* @FOREIGNDATAWRAPPEROID, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %133 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwoptions, align 4
  %134 = call i32 @SysCacheGetAttr(i32 %131, %struct.TYPE_19__* %132, i32 %133, i32* %12)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = call i32 @PointerGetDatum(i32* null)
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %137, %130
  %140 = load i32, i32* @ForeignDataWrapperRelationId, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %17, align 8
  %146 = call i32 @transformGenericOptions(i32 %140, i32 %141, i32 %144, i8* %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @DatumGetPointer(i32 %147)
  %149 = call i64 @PointerIsValid(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %139
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwoptions, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %22, i64 %155
  store i32 %152, i32* %156, align 4
  br label %162

157:                                              ; preds = %139
  %158 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwoptions, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %25, i64 %160
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %157, %151
  %163 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwoptions, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %28, i64 %165
  store i32 1, i32* %166, align 4
  br label %167

167:                                              ; preds = %162, %125
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @RelationGetDescr(i32 %169)
  %171 = call %struct.TYPE_19__* @heap_modify_tuple(%struct.TYPE_19__* %168, i32 %170, i32* %22, i32* %25, i32* %28)
  store %struct.TYPE_19__* %171, %struct.TYPE_19__** %5, align 8
  %172 = load i32, i32* %4, align 4
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %176 = call i32 @CatalogTupleUpdate(i32 %172, i32* %174, %struct.TYPE_19__* %175)
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %178 = call i32 @heap_freetuple(%struct.TYPE_19__* %177)
  %179 = load i32, i32* @ForeignDataWrapperRelationId, align 4
  %180 = load i8*, i8** %11, align 8
  %181 = call i32 @ObjectAddressSet(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %0, i32 %179, i8* %180)
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %167
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %217

187:                                              ; preds = %184, %167
  %188 = load i32, i32* @ForeignDataWrapperRelationId, align 4
  %189 = load i8*, i8** %11, align 8
  %190 = load i8*, i8** @ProcedureRelationId, align 8
  %191 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %192 = call i32 @deleteDependencyRecordsForClass(i32 %188, i8* %189, i8* %190, i32 %191)
  %193 = load i8*, i8** %16, align 8
  %194 = call i64 @OidIsValid(i8* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %187
  %197 = load i8*, i8** @ProcedureRelationId, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  store i8* %197, i8** %198, align 8
  %199 = load i8*, i8** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  store i8* %199, i8** %200, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i64 0, i64* %201, align 8
  %202 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %203 = call i32 @recordDependencyOn(%struct.TYPE_18__* %0, %struct.TYPE_18__* %18, i32 %202)
  br label %204

204:                                              ; preds = %196, %187
  %205 = load i8*, i8** %17, align 8
  %206 = call i64 @OidIsValid(i8* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = load i8*, i8** @ProcedureRelationId, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  store i8* %209, i8** %210, align 8
  %211 = load i8*, i8** %17, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  store i8* %211, i8** %212, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i64 0, i64* %213, align 8
  %214 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %215 = call i32 @recordDependencyOn(%struct.TYPE_18__* %0, %struct.TYPE_18__* %18, i32 %214)
  br label %216

216:                                              ; preds = %208, %204
  br label %217

217:                                              ; preds = %216, %184
  %218 = load i32, i32* @ForeignDataWrapperRelationId, align 4
  %219 = load i8*, i8** %11, align 8
  %220 = call i32 @InvokeObjectPostAlterHook(i32 %218, i8* %219, i32 0)
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @RowExclusiveLock, align 4
  %223 = call i32 @table_close(i32 %221, i32 %222)
  %224 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %224)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @superuser(...) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @errhint(i8*) #2

declare dso_local %struct.TYPE_19__* @SearchSysCacheCopy1(i32, i32) #2

declare dso_local i32 @CStringGetDatum(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_19__*) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_19__*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @parse_func_options(i32, i32*, i8**, i32*, i8**) #2

declare dso_local i32 @ObjectIdGetDatum(i8*) #2

declare dso_local i64 @OidIsValid(i8*) #2

declare dso_local i32 @SysCacheGetAttr(i32, %struct.TYPE_19__*, i32, i32*) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i32 @transformGenericOptions(i32, i32, i32, i8*) #2

declare dso_local i64 @PointerIsValid(i32) #2

declare dso_local i32 @DatumGetPointer(i32) #2

declare dso_local %struct.TYPE_19__* @heap_modify_tuple(%struct.TYPE_19__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_19__*) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_19__*) #2

declare dso_local i32 @ObjectAddressSet(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8, i32, i8*) #2

declare dso_local i32 @deleteDependencyRecordsForClass(i32, i8*, i8*, i32) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i8*, i32) #2

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
