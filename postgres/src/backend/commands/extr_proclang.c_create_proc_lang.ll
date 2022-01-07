; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_proclang.c_create_proc_lang.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_proclang.c_create_proc_lang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i64, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i8* }

@Natts_pg_language = common dso_local global i32 0, align 4
@LanguageRelationId = common dso_local global i8* null, align 8
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_language_lanname = common dso_local global i32 0, align 4
@Anum_pg_language_lanowner = common dso_local global i32 0, align 4
@Anum_pg_language_lanispl = common dso_local global i32 0, align 4
@Anum_pg_language_lanpltrusted = common dso_local global i32 0, align 4
@Anum_pg_language_lanplcallfoid = common dso_local global i32 0, align 4
@Anum_pg_language_laninline = common dso_local global i32 0, align 4
@Anum_pg_language_lanvalidator = common dso_local global i32 0, align 4
@Anum_pg_language_lanacl = common dso_local global i32 0, align 4
@LANGNAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"language \22%s\22 already exists\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_LANGUAGE = common dso_local global i32 0, align 4
@Anum_pg_language_oid = common dso_local global i32 0, align 4
@LanguageOidIndexId = common dso_local global i32 0, align 4
@ProcedureRelationId = common dso_local global i8* null, align 8
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i8*, i32, i8*, i8*, i8*, i8*, i32)* @create_proc_lang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_proc_lang(%struct.TYPE_17__* noalias sret %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_18__*, align 8
  %24 = alloca %struct.TYPE_18__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_17__, align 8
  %28 = alloca %struct.TYPE_19__*, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 %7, i32* %15, align 4
  %29 = load i32, i32* @Natts_pg_language, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %18, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %33 = load i32, i32* @Natts_pg_language, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %20, align 8
  %36 = load i32, i32* @Natts_pg_language, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %21, align 8
  %39 = load i8*, i8** @LanguageRelationId, align 8
  %40 = load i32, i32* @RowExclusiveLock, align 4
  %41 = call i32 @table_open(i8* %39, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @RelationGetDescr(i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = mul nuw i64 4, %30
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(i32* %32, i32 0, i32 %45)
  %47 = mul nuw i64 4, %34
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32* %35, i32 0, i32 %48)
  %50 = mul nuw i64 4, %37
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i32* %38, i32 1, i32 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @namestrcpy(i32* %22, i8* %53)
  %55 = call i32 @NameGetDatum(i32* %22)
  %56 = load i32, i32* @Anum_pg_language_lanname, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %32, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @ObjectIdGetDatum(i8* %60)
  %62 = load i32, i32* @Anum_pg_language_lanowner, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %32, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = call i32 @BoolGetDatum(i32 1)
  %67 = load i32, i32* @Anum_pg_language_lanispl, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %32, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @BoolGetDatum(i32 %71)
  %73 = load i32, i32* @Anum_pg_language_lanpltrusted, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %32, i64 %75
  store i32 %72, i32* %76, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @ObjectIdGetDatum(i8* %77)
  %79 = load i32, i32* @Anum_pg_language_lanplcallfoid, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %32, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @ObjectIdGetDatum(i8* %83)
  %85 = load i32, i32* @Anum_pg_language_laninline, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %32, i64 %87
  store i32 %84, i32* %88, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = call i32 @ObjectIdGetDatum(i8* %89)
  %91 = load i32, i32* @Anum_pg_language_lanvalidator, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %32, i64 %93
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* @Anum_pg_language_lanacl, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %35, i64 %97
  store i32 1, i32* %98, align 4
  %99 = load i32, i32* @LANGNAME, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @PointerGetDatum(i8* %100)
  %102 = call %struct.TYPE_18__* @SearchSysCache1(i32 %99, i32 %101)
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %23, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %104 = call i64 @HeapTupleIsValid(%struct.TYPE_18__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %158

106:                                              ; preds = %8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %108 = call i32 @GETSTRUCT(%struct.TYPE_18__* %107)
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %28, align 8
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @ERROR, align 4
  %115 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %116 = call i32 @errcode(i32 %115)
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %117)
  %119 = call i32 @ereport(i32 %114, i32 %118)
  br label %120

120:                                              ; preds = %113, %106
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @pg_language_ownercheck(i8* %123, i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %129 = load i32, i32* @OBJECT_LANGUAGE, align 4
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @aclcheck_error(i32 %128, i32 %129, i8* %130)
  br label %132

132:                                              ; preds = %127, %120
  %133 = load i32, i32* @Anum_pg_language_oid, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %38, i64 %135
  store i32 0, i32* %136, align 4
  %137 = load i32, i32* @Anum_pg_language_lanowner, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %38, i64 %139
  store i32 0, i32* %140, align 4
  %141 = load i32, i32* @Anum_pg_language_lanacl, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %38, i64 %143
  store i32 0, i32* %144, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %146 = load i32, i32* %17, align 4
  %147 = call %struct.TYPE_18__* @heap_modify_tuple(%struct.TYPE_18__* %145, i32 %146, i32* %32, i32* %35, i32* %38)
  store %struct.TYPE_18__* %147, %struct.TYPE_18__** %24, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %152 = call i32 @CatalogTupleUpdate(i32 %148, i32* %150, %struct.TYPE_18__* %151)
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %25, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %157 = call i32 @ReleaseSysCache(%struct.TYPE_18__* %156)
  store i32 1, i32* %26, align 4
  br label %174

158:                                              ; preds = %8
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* @LanguageOidIndexId, align 4
  %161 = load i32, i32* @Anum_pg_language_oid, align 4
  %162 = call i8* @GetNewOidWithIndex(i32 %159, i32 %160, i32 %161)
  store i8* %162, i8** %25, align 8
  %163 = load i8*, i8** %25, align 8
  %164 = call i32 @ObjectIdGetDatum(i8* %163)
  %165 = load i32, i32* @Anum_pg_language_oid, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %32, i64 %167
  store i32 %164, i32* %168, align 4
  %169 = load i32, i32* %17, align 4
  %170 = call %struct.TYPE_18__* @heap_form_tuple(i32 %169, i32* %32, i32* %35)
  store %struct.TYPE_18__* %170, %struct.TYPE_18__** %24, align 8
  %171 = load i32, i32* %16, align 4
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %173 = call i32 @CatalogTupleInsert(i32 %171, %struct.TYPE_18__* %172)
  store i32 0, i32* %26, align 4
  br label %174

174:                                              ; preds = %158, %132
  %175 = load i8*, i8** @LanguageRelationId, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 2
  store i8* %175, i8** %176, align 8
  %177 = load i8*, i8** %25, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 0
  store i8* %177, i8** %178, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 1
  store i64 0, i64* %179, align 8
  %180 = load i32, i32* %26, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @deleteDependencyRecordsFor(i8* %184, i8* %186, i32 1)
  br label %188

188:                                              ; preds = %182, %174
  %189 = load i32, i32* %26, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = call i32 @recordDependencyOnOwner(i8* %193, i8* %195, i8* %196)
  br label %198

198:                                              ; preds = %191, %188
  %199 = load i32, i32* %26, align 4
  %200 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_17__* %0, i32 %199)
  %201 = load i8*, i8** @ProcedureRelationId, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  store i8* %201, i8** %202, align 8
  %203 = load i8*, i8** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  store i8* %203, i8** %204, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  store i64 0, i64* %205, align 8
  %206 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %207 = call i32 @recordDependencyOn(%struct.TYPE_17__* %0, %struct.TYPE_17__* %27, i32 %206)
  %208 = load i8*, i8** %13, align 8
  %209 = call i64 @OidIsValid(i8* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %198
  %212 = load i8*, i8** @ProcedureRelationId, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  store i8* %212, i8** %213, align 8
  %214 = load i8*, i8** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  store i8* %214, i8** %215, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  store i64 0, i64* %216, align 8
  %217 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %218 = call i32 @recordDependencyOn(%struct.TYPE_17__* %0, %struct.TYPE_17__* %27, i32 %217)
  br label %219

219:                                              ; preds = %211, %198
  %220 = load i8*, i8** %14, align 8
  %221 = call i64 @OidIsValid(i8* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %219
  %224 = load i8*, i8** @ProcedureRelationId, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  store i8* %224, i8** %225, align 8
  %226 = load i8*, i8** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  store i8* %226, i8** %227, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  store i64 0, i64* %228, align 8
  %229 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %230 = call i32 @recordDependencyOn(%struct.TYPE_17__* %0, %struct.TYPE_17__* %27, i32 %229)
  br label %231

231:                                              ; preds = %223, %219
  %232 = load i8*, i8** @LanguageRelationId, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @InvokeObjectPostCreateHook(i8* %232, i8* %234, i32 0)
  %236 = load i32, i32* %16, align 4
  %237 = load i32, i32* @RowExclusiveLock, align 4
  %238 = call i32 @table_close(i32 %236, i32 %237)
  %239 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %239)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i8*, i32) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @namestrcpy(i32*, i8*) #2

declare dso_local i32 @NameGetDatum(i32*) #2

declare dso_local i32 @ObjectIdGetDatum(i8*) #2

declare dso_local i32 @BoolGetDatum(i32) #2

declare dso_local %struct.TYPE_18__* @SearchSysCache1(i32, i32) #2

declare dso_local i32 @PointerGetDatum(i8*) #2

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_18__*) #2

declare dso_local i32 @GETSTRUCT(%struct.TYPE_18__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i32 @pg_language_ownercheck(i8*, i8*) #2

declare dso_local i32 @aclcheck_error(i32, i32, i8*) #2

declare dso_local %struct.TYPE_18__* @heap_modify_tuple(%struct.TYPE_18__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_18__*) #2

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_18__*) #2

declare dso_local i8* @GetNewOidWithIndex(i32, i32, i32) #2

declare dso_local %struct.TYPE_18__* @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @deleteDependencyRecordsFor(i8*, i8*, i32) #2

declare dso_local i32 @recordDependencyOnOwner(i8*, i8*, i8*) #2

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #2

declare dso_local i64 @OidIsValid(i8*) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i8*, i8*, i32) #2

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
