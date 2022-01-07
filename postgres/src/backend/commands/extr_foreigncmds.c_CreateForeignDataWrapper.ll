; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_CreateForeignDataWrapper.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_CreateForeignDataWrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i8*, i8* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@Natts_pg_foreign_data_wrapper = common dso_local global i32 0, align 4
@ForeignDataWrapperRelationId = common dso_local global i8* null, align 8
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"permission denied to create foreign-data wrapper \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Must be superuser to create a foreign-data wrapper.\00", align 1
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"foreign-data wrapper \22%s\22 already exists\00", align 1
@ForeignDataWrapperOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_foreign_data_wrapper_oid = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@Anum_pg_foreign_data_wrapper_fdwname = common dso_local global i32 0, align 4
@Anum_pg_foreign_data_wrapper_fdwowner = common dso_local global i32 0, align 4
@Anum_pg_foreign_data_wrapper_fdwhandler = common dso_local global i32 0, align 4
@Anum_pg_foreign_data_wrapper_fdwvalidator = common dso_local global i32 0, align 4
@Anum_pg_foreign_data_wrapper_fdwacl = common dso_local global i32 0, align 4
@Anum_pg_foreign_data_wrapper_fdwoptions = common dso_local global i32 0, align 4
@ProcedureRelationId = common dso_local global i8* null, align 8
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateForeignDataWrapper(%struct.TYPE_14__* noalias sret %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %3, align 8
  %17 = load i32, i32* @Natts_pg_foreign_data_wrapper, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = load i32, i32* @Natts_pg_foreign_data_wrapper, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %24 = load i8*, i8** @ForeignDataWrapperRelationId, align 8
  %25 = load i32, i32* @RowExclusiveLock, align 4
  %26 = call %struct.TYPE_13__* @table_open(i8* %24, i32 %25)
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %4, align 8
  %27 = call i32 (...) @superuser()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 @errhint(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @ereport(i32 %30, i32 %37)
  br label %39

39:                                               ; preds = %29, %2
  %40 = call i8* (...) @GetUserId()
  store i8* %40, i8** %15, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @GetForeignDataWrapperByName(i32 %43, i32 1)
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = call i32 @ereport(i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %46, %39
  %56 = mul nuw i64 4, %18
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memset(i32* %20, i32 0, i32 %57)
  %59 = mul nuw i64 4, %22
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memset(i32* %23, i32 0, i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = load i32, i32* @ForeignDataWrapperOidIndexId, align 4
  %64 = load i32, i32* @Anum_pg_foreign_data_wrapper_oid, align 4
  %65 = call i8* @GetNewOidWithIndex(%struct.TYPE_13__* %62, i32 %63, i32 %64)
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @ObjectIdGetDatum(i8* %66)
  %68 = load i32, i32* @Anum_pg_foreign_data_wrapper_oid, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %20, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* @namein, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @CStringGetDatum(i32 %75)
  %77 = call i32 @DirectFunctionCall1(i32 %72, i32 %76)
  %78 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwname, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %20, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i8*, i8** %15, align 8
  %83 = call i32 @ObjectIdGetDatum(i8* %82)
  %84 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwowner, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %20, i64 %86
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @parse_func_options(i32 %90, i32* %10, i8** %12, i32* %11, i8** %13)
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 @ObjectIdGetDatum(i8* %92)
  %94 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwhandler, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %20, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i8*, i8** %13, align 8
  %99 = call i32 @ObjectIdGetDatum(i8* %98)
  %100 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwvalidator, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %20, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwacl, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %23, i64 %106
  store i32 1, i32* %107, align 4
  %108 = load i8*, i8** @ForeignDataWrapperRelationId, align 8
  %109 = call i32 @PointerGetDatum(i32* null)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %13, align 8
  %114 = call i32 @transformGenericOptions(i8* %108, i32 %109, i32 %112, i8* %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @DatumGetPointer(i32 %115)
  %117 = call i64 @PointerIsValid(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %55
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwoptions, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %20, i64 %123
  store i32 %120, i32* %124, align 4
  br label %130

125:                                              ; preds = %55
  %126 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwoptions, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %23, i64 %128
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %119
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @heap_form_tuple(i32 %133, i32* %20, i32* %23)
  store i32 %134, i32* %8, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @CatalogTupleInsert(%struct.TYPE_13__* %135, i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @heap_freetuple(i32 %138)
  %140 = load i8*, i8** @ForeignDataWrapperRelationId, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %0, i32 0, i32 2
  store i8* %140, i8** %141, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %0, i32 0, i32 1
  store i8* %142, i8** %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %0, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = call i64 @OidIsValid(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %130
  %149 = load i8*, i8** @ProcedureRelationId, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  store i8* %149, i8** %150, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  store i8* %151, i8** %152, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %155 = call i32 @recordDependencyOn(%struct.TYPE_14__* %0, %struct.TYPE_14__* %16, i32 %154)
  br label %156

156:                                              ; preds = %148, %130
  %157 = load i8*, i8** %13, align 8
  %158 = call i64 @OidIsValid(i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = load i8*, i8** @ProcedureRelationId, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  store i8* %161, i8** %162, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  store i8* %163, i8** %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i64 0, i64* %165, align 8
  %166 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %167 = call i32 @recordDependencyOn(%struct.TYPE_14__* %0, %struct.TYPE_14__* %16, i32 %166)
  br label %168

168:                                              ; preds = %160, %156
  %169 = load i8*, i8** @ForeignDataWrapperRelationId, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = load i8*, i8** %15, align 8
  %172 = call i32 @recordDependencyOnOwner(i8* %169, i8* %170, i8* %171)
  %173 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_14__* %0, i32 0)
  %174 = load i8*, i8** @ForeignDataWrapperRelationId, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = call i32 @InvokeObjectPostCreateHook(i8* %174, i8* %175, i32 0)
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %178 = load i32, i32* @RowExclusiveLock, align 4
  %179 = call i32 @table_close(%struct.TYPE_13__* %177, i32 %178)
  %180 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %180)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_13__* @table_open(i8*, i32) #2

declare dso_local i32 @superuser(...) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i32 @errhint(i8*) #2

declare dso_local i8* @GetUserId(...) #2

declare dso_local i32* @GetForeignDataWrapperByName(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i8* @GetNewOidWithIndex(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i8*) #2

declare dso_local i32 @DirectFunctionCall1(i32, i32) #2

declare dso_local i32 @CStringGetDatum(i32) #2

declare dso_local i32 @parse_func_options(i32, i32*, i8**, i32*, i8**) #2

declare dso_local i32 @transformGenericOptions(i8*, i32, i32, i8*) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i64 @PointerIsValid(i32) #2

declare dso_local i32 @DatumGetPointer(i32) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i64 @OidIsValid(i8*) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @recordDependencyOnOwner(i8*, i8*, i8*) #2

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i8*, i8*, i32) #2

declare dso_local i32 @table_close(%struct.TYPE_13__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
