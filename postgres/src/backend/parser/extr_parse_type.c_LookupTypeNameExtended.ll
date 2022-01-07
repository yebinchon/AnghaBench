; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_type.c_LookupTypeNameExtended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_type.c_LookupTypeNameExtended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8* }

@NIL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"improper %%TYPE reference (too few dotted names): %s\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"improper %%TYPE reference (too many dotted names): %s\00", align 1
@NoLock = common dso_local global i32 0, align 4
@InvalidAttrNumber = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"type reference %s converted to %s\00", align 1
@TYPENAMENSP = common dso_local global i32 0, align 4
@Anum_pg_type_oid = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @LookupTypeNameExtended(i32* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NIL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  br label %237

32:                                               ; preds = %5
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %191

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_9__* @makeRangeVar(i32* null, i32* null, i32 %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %15, align 8
  store i8* null, i8** %16, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @list_length(i64 %44)
  switch i32 %45, label %123 [
    i32 1, label %46
    i32 2, label %63
    i32 3, label %76
    i32 4, label %96
  ]

46:                                               ; preds = %37
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @NameListToString(i64 %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @parser_errposition(i32* %57, i32 %60)
  %62 = call i32 @ereport(i32 %47, i32 %61)
  br label %140

63:                                               ; preds = %37
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @linitial(i64 %66)
  %68 = call i8* @strVal(i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @lsecond(i64 %73)
  %75 = call i8* @strVal(i32 %74)
  store i8* %75, i8** %16, align 8
  br label %140

76:                                               ; preds = %37
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @linitial(i64 %79)
  %81 = call i8* @strVal(i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @lsecond(i64 %86)
  %88 = call i8* @strVal(i32 %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @lthird(i64 %93)
  %95 = call i8* @strVal(i32 %94)
  store i8* %95, i8** %16, align 8
  br label %140

96:                                               ; preds = %37
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @linitial(i64 %99)
  %101 = call i8* @strVal(i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @lsecond(i64 %106)
  %108 = call i8* @strVal(i32 %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @lthird(i64 %113)
  %115 = call i8* @strVal(i32 %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @lfourth(i64 %120)
  %122 = call i8* @strVal(i32 %121)
  store i8* %122, i8** %16, align 8
  br label %140

123:                                              ; preds = %37
  %124 = load i32, i32* @ERROR, align 4
  %125 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %126 = call i32 @errcode(i32 %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @NameListToString(i64 %129)
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %132)
  %134 = load i32*, i32** %7, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @parser_errposition(i32* %134, i32 %137)
  %139 = call i32 @ereport(i32 %124, i32 %138)
  br label %140

140:                                              ; preds = %123, %96, %76, %63, %46
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %142 = load i32, i32* @NoLock, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @RangeVarGetRelid(%struct.TYPE_9__* %141, i32 %142, i32 %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i8*, i8** %16, align 8
  %147 = call i64 @get_attnum(i32 %145, i8* %146)
  store i64 %147, i64* %18, align 8
  %148 = load i64, i64* %18, align 8
  %149 = load i64, i64* @InvalidAttrNumber, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %140
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* @InvalidOid, align 4
  store i32 %155, i32* %12, align 4
  br label %171

156:                                              ; preds = %151
  %157 = load i32, i32* @ERROR, align 4
  %158 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %159 = call i32 @errcode(i32 %158)
  %160 = load i8*, i8** %16, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %160, i8* %163)
  %165 = load i32*, i32** %7, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @parser_errposition(i32* %165, i32 %168)
  %170 = call i32 @ereport(i32 %157, i32 %169)
  br label %171

171:                                              ; preds = %156, %154
  br label %190

172:                                              ; preds = %140
  %173 = load i32, i32* %17, align 4
  %174 = load i64, i64* %18, align 8
  %175 = call i32 @get_atttype(i32 %173, i64 %174)
  store i32 %175, i32* %12, align 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @NIL, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @Assert(i32 %181)
  %183 = load i32, i32* @NOTICE, align 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %185 = call i8* @TypeNameToString(%struct.TYPE_8__* %184)
  %186 = load i32, i32* %12, align 4
  %187 = call i8* @format_type_be(i32 %186)
  %188 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %185, i8* %187)
  %189 = call i32 @ereport(i32 %183, i32 %188)
  br label %190

190:                                              ; preds = %172, %171
  br label %236

191:                                              ; preds = %32
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @DeconstructQualifiedName(i64 %194, i8** %19, i8** %20)
  %196 = load i8*, i8** %19, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %222

198:                                              ; preds = %191
  %199 = load i32*, i32** %7, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @setup_parser_errposition_callback(i32* %22, i32* %199, i32 %202)
  %204 = load i8*, i8** %19, align 8
  %205 = load i32, i32* %11, align 4
  %206 = call i32 @LookupExplicitNamespace(i8* %204, i32 %205)
  store i32 %206, i32* %21, align 4
  %207 = load i32, i32* %21, align 4
  %208 = call i64 @OidIsValid(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %198
  %211 = load i32, i32* @TYPENAMENSP, align 4
  %212 = load i32, i32* @Anum_pg_type_oid, align 4
  %213 = load i8*, i8** %20, align 8
  %214 = call i32 @PointerGetDatum(i8* %213)
  %215 = load i32, i32* %21, align 4
  %216 = call i32 @ObjectIdGetDatum(i32 %215)
  %217 = call i32 @GetSysCacheOid2(i32 %211, i32 %212, i32 %214, i32 %216)
  store i32 %217, i32* %12, align 4
  br label %220

218:                                              ; preds = %198
  %219 = load i32, i32* @InvalidOid, align 4
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %218, %210
  %221 = call i32 @cancel_parser_errposition_callback(i32* %22)
  br label %226

222:                                              ; preds = %191
  %223 = load i8*, i8** %20, align 8
  %224 = load i32, i32* %10, align 4
  %225 = call i32 @TypenameGetTypidExtended(i8* %223, i32 %224)
  store i32 %225, i32* %12, align 4
  br label %226

226:                                              ; preds = %222, %220
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @NIL, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = load i32, i32* %12, align 4
  %234 = call i32 @get_array_type(i32 %233)
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %232, %226
  br label %236

236:                                              ; preds = %235, %190
  br label %237

237:                                              ; preds = %236, %28
  %238 = load i32, i32* %12, align 4
  %239 = call i64 @OidIsValid(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %237
  %242 = load i32*, i32** %9, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = load i32*, i32** %9, align 8
  store i32 -1, i32* %245, align 4
  br label %246

246:                                              ; preds = %244, %241
  store i32* null, i32** %6, align 8
  br label %273

247:                                              ; preds = %237
  %248 = load i32, i32* @TYPEOID, align 4
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @ObjectIdGetDatum(i32 %249)
  %251 = call i64 @SearchSysCache1(i32 %248, i32 %250)
  store i64 %251, i64* %13, align 8
  %252 = load i64, i64* %13, align 8
  %253 = call i32 @HeapTupleIsValid(i64 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %247
  %256 = load i32, i32* @ERROR, align 4
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @elog(i32 %256, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %255, %247
  %260 = load i32*, i32** %7, align 8
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %262 = load i64, i64* %13, align 8
  %263 = inttoptr i64 %262 to i32*
  %264 = call i32 @typenameTypeMod(i32* %260, %struct.TYPE_8__* %261, i32* %263)
  store i32 %264, i32* %14, align 4
  %265 = load i32*, i32** %9, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %259
  %268 = load i32, i32* %14, align 4
  %269 = load i32*, i32** %9, align 8
  store i32 %268, i32* %269, align 4
  br label %270

270:                                              ; preds = %267, %259
  %271 = load i64, i64* %13, align 8
  %272 = inttoptr i64 %271 to i32*
  store i32* %272, i32** %6, align 8
  br label %273

273:                                              ; preds = %270, %246
  %274 = load i32*, i32** %6, align 8
  ret i32* %274
}

declare dso_local %struct.TYPE_9__* @makeRangeVar(i32*, i32*, i32) #1

declare dso_local i32 @list_length(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @NameListToString(i64) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @linitial(i64) #1

declare dso_local i32 @lsecond(i64) #1

declare dso_local i32 @lthird(i64) #1

declare dso_local i32 @lfourth(i64) #1

declare dso_local i32 @RangeVarGetRelid(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @get_attnum(i32, i8*) #1

declare dso_local i32 @get_atttype(i32, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @TypeNameToString(%struct.TYPE_8__*) #1

declare dso_local i8* @format_type_be(i32) #1

declare dso_local i32 @DeconstructQualifiedName(i64, i8**, i8**) #1

declare dso_local i32 @setup_parser_errposition_callback(i32*, i32*, i32) #1

declare dso_local i32 @LookupExplicitNamespace(i8*, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @GetSysCacheOid2(i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @cancel_parser_errposition_callback(i32*) #1

declare dso_local i32 @TypenameGetTypidExtended(i8*, i32) #1

declare dso_local i32 @get_array_type(i32) #1

declare dso_local i64 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i64) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @typenameTypeMod(i32*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
