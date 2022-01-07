; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_type.c_TypeShellMake.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_type.c_TypeShellMake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@Natts_pg_type = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_type_typname = common dso_local global i32 0, align 4
@Anum_pg_type_typnamespace = common dso_local global i32 0, align 4
@Anum_pg_type_typowner = common dso_local global i32 0, align 4
@Anum_pg_type_typlen = common dso_local global i32 0, align 4
@Anum_pg_type_typbyval = common dso_local global i32 0, align 4
@TYPTYPE_PSEUDO = common dso_local global i8 0, align 1
@Anum_pg_type_typtype = common dso_local global i32 0, align 4
@TYPCATEGORY_PSEUDOTYPE = common dso_local global i8 0, align 1
@Anum_pg_type_typcategory = common dso_local global i32 0, align 4
@Anum_pg_type_typispreferred = common dso_local global i32 0, align 4
@Anum_pg_type_typisdefined = common dso_local global i32 0, align 4
@DEFAULT_TYPDELIM = common dso_local global i8 0, align 1
@Anum_pg_type_typdelim = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@Anum_pg_type_typrelid = common dso_local global i32 0, align 4
@Anum_pg_type_typelem = common dso_local global i32 0, align 4
@Anum_pg_type_typarray = common dso_local global i32 0, align 4
@F_SHELL_IN = common dso_local global i32 0, align 4
@Anum_pg_type_typinput = common dso_local global i32 0, align 4
@F_SHELL_OUT = common dso_local global i32 0, align 4
@Anum_pg_type_typoutput = common dso_local global i32 0, align 4
@Anum_pg_type_typreceive = common dso_local global i32 0, align 4
@Anum_pg_type_typsend = common dso_local global i32 0, align 4
@Anum_pg_type_typmodin = common dso_local global i32 0, align 4
@Anum_pg_type_typmodout = common dso_local global i32 0, align 4
@Anum_pg_type_typanalyze = common dso_local global i32 0, align 4
@Anum_pg_type_typalign = common dso_local global i32 0, align 4
@Anum_pg_type_typstorage = common dso_local global i32 0, align 4
@Anum_pg_type_typnotnull = common dso_local global i32 0, align 4
@Anum_pg_type_typbasetype = common dso_local global i32 0, align 4
@Anum_pg_type_typtypmod = common dso_local global i32 0, align 4
@Anum_pg_type_typndims = common dso_local global i32 0, align 4
@Anum_pg_type_typcollation = common dso_local global i32 0, align 4
@Anum_pg_type_typdefaultbin = common dso_local global i32 0, align 4
@Anum_pg_type_typdefault = common dso_local global i32 0, align 4
@Anum_pg_type_typacl = common dso_local global i32 0, align 4
@IsBinaryUpgrade = common dso_local global i64 0, align 8
@binary_upgrade_next_pg_type_oid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"pg_type OID value not set when in binary upgrade mode\00", align 1
@TypeOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_type_oid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TypeShellMake(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @Natts_pg_type, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @Natts_pg_type, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @PointerIsValid(i8* %24)
  %26 = call i32 @Assert(i32 %25)
  %27 = load i32, i32* @TypeRelationId, align 4
  %28 = load i32, i32* @RowExclusiveLock, align 4
  %29 = call %struct.TYPE_6__* @table_open(i32 %27, i32 %28)
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %7, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %44, %3
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @Natts_pg_type, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %23, i64 %39
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %20, i64 %42
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %33

47:                                               ; preds = %33
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @namestrcpy(i32* %15, i8* %48)
  %50 = call i64 @NameGetDatum(i32* %15)
  %51 = load i32, i32* @Anum_pg_type_typname, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %20, i64 %53
  store i64 %50, i64* %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @ObjectIdGetDatum(i32 %55)
  %57 = load i32, i32* @Anum_pg_type_typnamespace, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %20, i64 %59
  store i64 %56, i64* %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @ObjectIdGetDatum(i32 %61)
  %63 = load i32, i32* @Anum_pg_type_typowner, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %20, i64 %65
  store i64 %62, i64* %66, align 8
  %67 = call i64 @Int16GetDatum(i32 4)
  %68 = load i32, i32* @Anum_pg_type_typlen, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %20, i64 %70
  store i64 %67, i64* %71, align 8
  %72 = call i64 @BoolGetDatum(i32 1)
  %73 = load i32, i32* @Anum_pg_type_typbyval, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %20, i64 %75
  store i64 %72, i64* %76, align 8
  %77 = load i8, i8* @TYPTYPE_PSEUDO, align 1
  %78 = call i64 @CharGetDatum(i8 signext %77)
  %79 = load i32, i32* @Anum_pg_type_typtype, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %20, i64 %81
  store i64 %78, i64* %82, align 8
  %83 = load i8, i8* @TYPCATEGORY_PSEUDOTYPE, align 1
  %84 = call i64 @CharGetDatum(i8 signext %83)
  %85 = load i32, i32* @Anum_pg_type_typcategory, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %20, i64 %87
  store i64 %84, i64* %88, align 8
  %89 = call i64 @BoolGetDatum(i32 0)
  %90 = load i32, i32* @Anum_pg_type_typispreferred, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %20, i64 %92
  store i64 %89, i64* %93, align 8
  %94 = call i64 @BoolGetDatum(i32 0)
  %95 = load i32, i32* @Anum_pg_type_typisdefined, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %20, i64 %97
  store i64 %94, i64* %98, align 8
  %99 = load i8, i8* @DEFAULT_TYPDELIM, align 1
  %100 = call i64 @CharGetDatum(i8 signext %99)
  %101 = load i32, i32* @Anum_pg_type_typdelim, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %20, i64 %103
  store i64 %100, i64* %104, align 8
  %105 = load i32, i32* @InvalidOid, align 4
  %106 = call i64 @ObjectIdGetDatum(i32 %105)
  %107 = load i32, i32* @Anum_pg_type_typrelid, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %20, i64 %109
  store i64 %106, i64* %110, align 8
  %111 = load i32, i32* @InvalidOid, align 4
  %112 = call i64 @ObjectIdGetDatum(i32 %111)
  %113 = load i32, i32* @Anum_pg_type_typelem, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %20, i64 %115
  store i64 %112, i64* %116, align 8
  %117 = load i32, i32* @InvalidOid, align 4
  %118 = call i64 @ObjectIdGetDatum(i32 %117)
  %119 = load i32, i32* @Anum_pg_type_typarray, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %20, i64 %121
  store i64 %118, i64* %122, align 8
  %123 = load i32, i32* @F_SHELL_IN, align 4
  %124 = call i64 @ObjectIdGetDatum(i32 %123)
  %125 = load i32, i32* @Anum_pg_type_typinput, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %20, i64 %127
  store i64 %124, i64* %128, align 8
  %129 = load i32, i32* @F_SHELL_OUT, align 4
  %130 = call i64 @ObjectIdGetDatum(i32 %129)
  %131 = load i32, i32* @Anum_pg_type_typoutput, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %20, i64 %133
  store i64 %130, i64* %134, align 8
  %135 = load i32, i32* @InvalidOid, align 4
  %136 = call i64 @ObjectIdGetDatum(i32 %135)
  %137 = load i32, i32* @Anum_pg_type_typreceive, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %20, i64 %139
  store i64 %136, i64* %140, align 8
  %141 = load i32, i32* @InvalidOid, align 4
  %142 = call i64 @ObjectIdGetDatum(i32 %141)
  %143 = load i32, i32* @Anum_pg_type_typsend, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %20, i64 %145
  store i64 %142, i64* %146, align 8
  %147 = load i32, i32* @InvalidOid, align 4
  %148 = call i64 @ObjectIdGetDatum(i32 %147)
  %149 = load i32, i32* @Anum_pg_type_typmodin, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %20, i64 %151
  store i64 %148, i64* %152, align 8
  %153 = load i32, i32* @InvalidOid, align 4
  %154 = call i64 @ObjectIdGetDatum(i32 %153)
  %155 = load i32, i32* @Anum_pg_type_typmodout, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %20, i64 %157
  store i64 %154, i64* %158, align 8
  %159 = load i32, i32* @InvalidOid, align 4
  %160 = call i64 @ObjectIdGetDatum(i32 %159)
  %161 = load i32, i32* @Anum_pg_type_typanalyze, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %20, i64 %163
  store i64 %160, i64* %164, align 8
  %165 = call i64 @CharGetDatum(i8 signext 105)
  %166 = load i32, i32* @Anum_pg_type_typalign, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %20, i64 %168
  store i64 %165, i64* %169, align 8
  %170 = call i64 @CharGetDatum(i8 signext 112)
  %171 = load i32, i32* @Anum_pg_type_typstorage, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %20, i64 %173
  store i64 %170, i64* %174, align 8
  %175 = call i64 @BoolGetDatum(i32 0)
  %176 = load i32, i32* @Anum_pg_type_typnotnull, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %20, i64 %178
  store i64 %175, i64* %179, align 8
  %180 = load i32, i32* @InvalidOid, align 4
  %181 = call i64 @ObjectIdGetDatum(i32 %180)
  %182 = load i32, i32* @Anum_pg_type_typbasetype, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %20, i64 %184
  store i64 %181, i64* %185, align 8
  %186 = call i64 @Int32GetDatum(i32 -1)
  %187 = load i32, i32* @Anum_pg_type_typtypmod, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %20, i64 %189
  store i64 %186, i64* %190, align 8
  %191 = call i64 @Int32GetDatum(i32 0)
  %192 = load i32, i32* @Anum_pg_type_typndims, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %20, i64 %194
  store i64 %191, i64* %195, align 8
  %196 = load i32, i32* @InvalidOid, align 4
  %197 = call i64 @ObjectIdGetDatum(i32 %196)
  %198 = load i32, i32* @Anum_pg_type_typcollation, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %20, i64 %200
  store i64 %197, i64* %201, align 8
  %202 = load i32, i32* @Anum_pg_type_typdefaultbin, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %23, i64 %204
  store i32 1, i32* %205, align 4
  %206 = load i32, i32* @Anum_pg_type_typdefault, align 4
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %23, i64 %208
  store i32 1, i32* %209, align 4
  %210 = load i32, i32* @Anum_pg_type_typacl, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %23, i64 %212
  store i32 1, i32* %213, align 4
  %214 = load i64, i64* @IsBinaryUpgrade, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %47
  %217 = load i32, i32* @binary_upgrade_next_pg_type_oid, align 4
  %218 = call i32 @OidIsValid(i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %216
  %221 = load i32, i32* @ERROR, align 4
  %222 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %223 = call i32 @errcode(i32 %222)
  %224 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %225 = call i32 @ereport(i32 %221, i32 %224)
  br label %226

226:                                              ; preds = %220, %216
  %227 = load i32, i32* @binary_upgrade_next_pg_type_oid, align 4
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* @InvalidOid, align 4
  store i32 %228, i32* @binary_upgrade_next_pg_type_oid, align 4
  br label %234

229:                                              ; preds = %47
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %231 = load i32, i32* @TypeOidIndexId, align 4
  %232 = load i32, i32* @Anum_pg_type_oid, align 4
  %233 = call i32 @GetNewOidWithIndex(%struct.TYPE_6__* %230, i32 %231, i32 %232)
  store i32 %233, i32* %14, align 4
  br label %234

234:                                              ; preds = %229, %226
  %235 = load i32, i32* %14, align 4
  %236 = call i64 @ObjectIdGetDatum(i32 %235)
  %237 = load i32, i32* @Anum_pg_type_oid, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %20, i64 %239
  store i64 %236, i64* %240, align 8
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @heap_form_tuple(i32 %241, i64* %20, i32* %23)
  store i32 %242, i32* %10, align 4
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @CatalogTupleInsert(%struct.TYPE_6__* %243, i32 %244)
  %246 = call i32 (...) @IsBootstrapProcessingMode()
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %234
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %10, align 4
  %251 = call i64 @GETSTRUCT(i32 %250)
  %252 = trunc i64 %251 to i32
  %253 = call i32 @GenerateTypeDependencies(i32 %249, i32 %252, i32* null, i32* null, i32 0, i32 0, i32 0, i32 0)
  br label %254

254:                                              ; preds = %248, %234
  %255 = load i32, i32* @TypeRelationId, align 4
  %256 = load i32, i32* %14, align 4
  %257 = call i32 @InvokeObjectPostCreateHook(i32 %255, i32 %256, i32 0)
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* @TypeRelationId, align 4
  %260 = load i32, i32* %14, align 4
  %261 = call i32 @ObjectAddressSet(i32 %258, i32 %259, i32 %260)
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @heap_freetuple(i32 %262)
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %265 = load i32, i32* @RowExclusiveLock, align 4
  %266 = call i32 @table_close(%struct.TYPE_6__* %264, i32 %265)
  %267 = load i32, i32* %16, align 4
  %268 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %268)
  ret i32 %267
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @PointerIsValid(i8*) #2

declare dso_local %struct.TYPE_6__* @table_open(i32, i32) #2

declare dso_local i32 @namestrcpy(i32*, i8*) #2

declare dso_local i64 @NameGetDatum(i32*) #2

declare dso_local i64 @ObjectIdGetDatum(i32) #2

declare dso_local i64 @Int16GetDatum(i32) #2

declare dso_local i64 @BoolGetDatum(i32) #2

declare dso_local i64 @CharGetDatum(i8 signext) #2

declare dso_local i64 @Int32GetDatum(i32) #2

declare dso_local i32 @OidIsValid(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*) #2

declare dso_local i32 @GetNewOidWithIndex(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @heap_form_tuple(i32, i64*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @IsBootstrapProcessingMode(...) #2

declare dso_local i32 @GenerateTypeDependencies(i32, i32, i32*, i32*, i32, i32, i32, i32) #2

declare dso_local i64 @GETSTRUCT(i32) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i32, i32, i32) #2

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @table_close(%struct.TYPE_6__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
