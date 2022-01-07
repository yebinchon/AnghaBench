; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_ConstructTupleDescriptor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_ConstructTupleDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32*, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }

@ATTRIBUTE_FIXED_PART_SIZE = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid column number %d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"too few entries in indexprs list\00", align 1
@TYPEOID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@NIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"too few entries in colnames list\00", align 1
@CLAOID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"cache lookup failed for opclass %u\00", align 1
@ANYELEMENTOID = common dso_local global i32 0, align 4
@ANYARRAYOID = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"could not get element type of array type %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_12__*, i32*, i32, i32*, i32*)* @ConstructTupleDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConstructTupleDescriptor(i32 %0, %struct.TYPE_12__* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_16__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_14__*, align 8
  %26 = alloca %struct.TYPE_15__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_17__*, align 8
  %29 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @list_head(i32* %36)
  store i32* %37, i32** %15, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32* @list_head(i32* %40)
  store i32* %41, i32** %16, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call %struct.TYPE_13__* @GetIndexAmRoutineByAmId(i32 %42, i32 0)
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %17, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @RelationGetDescr(i32 %44)
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.TYPE_18__* @RelationGetForm(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @CreateTemplateTupleDesc(i32 %50)
  store i32 %51, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %52

52:                                               ; preds = %371, %6
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %374

56:                                               ; preds = %52
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %21, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %22, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %21, align 4
  %66 = call i8* @TupleDescAttr(i32 %64, i32 %65)
  %67 = bitcast i8* %66 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %23, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %69 = load i32, i32* @ATTRIBUTE_FIXED_PART_SIZE, align 4
  %70 = call i32 @MemSet(%struct.TYPE_16__* %68, i32 0, i32 %69)
  %71 = load i32, i32* %21, align 4
  %72 = add nsw i32 %71, 1
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  store i32 -1, i32* %76, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  store i32 -1, i32* %78, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %56
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  br label %92

90:                                               ; preds = %56
  %91 = load i32, i32* @InvalidOid, align 4
  br label %92

92:                                               ; preds = %90, %84
  %93 = phi i32 [ %89, %84 ], [ %91, %90 ]
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %22, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %156

98:                                               ; preds = %92
  %99 = load i32, i32* %22, align 4
  %100 = icmp sgt i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @Assert(i32 %101)
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* %20, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i32, i32* @ERROR, align 4
  %108 = load i32, i32* %22, align 4
  %109 = call i32 (i32, i8*, ...) @elog(i32 %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %98
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %22, align 4
  %113 = call i32 @AttrNumberGetAttrOffset(i32 %112)
  %114 = call i8* @TupleDescAttr(i32 %111, i32 %113)
  %115 = bitcast i8* %114 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %115, %struct.TYPE_17__** %28, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 12
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 7
  %120 = call i32 @namecpy(i32* %117, i32* %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 11
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 13
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 10
  store i32 %143, i32* %145, align 4
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 8
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 9
  store i32 %153, i32* %155, align 4
  br label %229

156:                                              ; preds = %92
  %157 = load i32*, i32** %16, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* @ERROR, align 4
  %161 = call i32 (i32, i8*, ...) @elog(i32 %160, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32*, i32** %16, align 8
  %164 = call i64 @lfirst(i32* %163)
  %165 = inttoptr i64 %164 to i32*
  store i32* %165, i32** %29, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load i32*, i32** %16, align 8
  %170 = call i32* @lnext(i32* %168, i32* %169)
  store i32* %170, i32** %16, align 8
  %171 = load i32*, i32** %29, align 8
  %172 = call i32 @exprType(i32* %171)
  store i32 %172, i32* %27, align 4
  %173 = load i32, i32* @TYPEOID, align 4
  %174 = load i32, i32* %27, align 4
  %175 = call i32 @ObjectIdGetDatum(i32 %174)
  %176 = call i32 @SearchSysCache1(i32 %173, i32 %175)
  store i32 %176, i32* %24, align 4
  %177 = load i32, i32* %24, align 4
  %178 = call i32 @HeapTupleIsValid(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %162
  %181 = load i32, i32* @ERROR, align 4
  %182 = load i32, i32* %27, align 4
  %183 = call i32 (i32, i8*, ...) @elog(i32 %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %180, %162
  %185 = load i32, i32* %24, align 4
  %186 = call i64 @GETSTRUCT(i32 %185)
  %187 = inttoptr i64 %186 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %187, %struct.TYPE_14__** %25, align 8
  %188 = load i32, i32* %27, align 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 11
  store i32 %193, i32* %195, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 10
  store i32 %198, i32* %200, align 4
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 8
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 9
  store i32 %208, i32* %210, align 4
  %211 = load i32*, i32** %29, align 8
  %212 = call i32 @exprTypmod(i32* %211)
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 6
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %24, align 4
  %216 = call i32 @ReleaseSysCache(i32 %215)
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 12
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @NameStr(i32 %219)
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @NIL, align 4
  %228 = call i32 @CheckAttributeType(i32 %220, i32 %223, i32 %226, i32 %227, i32 0)
  br label %229

229:                                              ; preds = %184, %110
  %230 = load i32, i32* @InvalidOid, align 4
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 7
  store i32 %230, i32* %232, align 4
  %233 = load i32*, i32** %15, align 8
  %234 = icmp eq i32* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load i32, i32* @ERROR, align 4
  %237 = call i32 (i32, i8*, ...) @elog(i32 %236, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %229
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 12
  %241 = load i32*, i32** %15, align 8
  %242 = call i64 @lfirst(i32* %241)
  %243 = inttoptr i64 %242 to i8*
  %244 = call i32 @namestrcpy(i32* %240, i8* %243)
  %245 = load i32*, i32** %9, align 8
  %246 = load i32*, i32** %15, align 8
  %247 = call i32* @lnext(i32* %245, i32* %246)
  store i32* %247, i32** %15, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %27, align 4
  %251 = load i32, i32* %21, align 4
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp slt i32 %251, %254
  br i1 %255, label %256, label %317

256:                                              ; preds = %238
  %257 = load i32, i32* @CLAOID, align 4
  %258 = load i32*, i32** %12, align 8
  %259 = load i32, i32* %21, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @ObjectIdGetDatum(i32 %262)
  %264 = call i32 @SearchSysCache1(i32 %257, i32 %263)
  store i32 %264, i32* %24, align 4
  %265 = load i32, i32* %24, align 4
  %266 = call i32 @HeapTupleIsValid(i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %276, label %268

268:                                              ; preds = %256
  %269 = load i32, i32* @ERROR, align 4
  %270 = load i32*, i32** %12, align 8
  %271 = load i32, i32* %21, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = call i32 (i32, i8*, ...) @elog(i32 %269, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %274)
  br label %276

276:                                              ; preds = %268, %256
  %277 = load i32, i32* %24, align 4
  %278 = call i64 @GETSTRUCT(i32 %277)
  %279 = inttoptr i64 %278 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %279, %struct.TYPE_15__** %26, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i64 @OidIsValid(i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %276
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  store i32 %288, i32* %27, align 4
  br label %289

289:                                              ; preds = %285, %276
  %290 = load i32, i32* %27, align 4
  %291 = load i32, i32* @ANYELEMENTOID, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %314

293:                                              ; preds = %289
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @ANYARRAYOID, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %314

299:                                              ; preds = %293
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @get_base_element_type(i32 %302)
  store i32 %303, i32* %27, align 4
  %304 = load i32, i32* %27, align 4
  %305 = call i64 @OidIsValid(i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %313, label %307

307:                                              ; preds = %299
  %308 = load i32, i32* @ERROR, align 4
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = call i32 (i32, i8*, ...) @elog(i32 %308, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %311)
  br label %313

313:                                              ; preds = %307, %299
  br label %314

314:                                              ; preds = %313, %293, %289
  %315 = load i32, i32* %24, align 4
  %316 = call i32 @ReleaseSysCache(i32 %315)
  br label %317

317:                                              ; preds = %314, %238
  %318 = load i32, i32* %27, align 4
  %319 = call i64 @OidIsValid(i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %370

321:                                              ; preds = %317
  %322 = load i32, i32* %27, align 4
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %322, %325
  br i1 %326, label %327, label %370

327:                                              ; preds = %321
  %328 = load i32, i32* @TYPEOID, align 4
  %329 = load i32, i32* %27, align 4
  %330 = call i32 @ObjectIdGetDatum(i32 %329)
  %331 = call i32 @SearchSysCache1(i32 %328, i32 %330)
  store i32 %331, i32* %24, align 4
  %332 = load i32, i32* %24, align 4
  %333 = call i32 @HeapTupleIsValid(i32 %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %339, label %335

335:                                              ; preds = %327
  %336 = load i32, i32* @ERROR, align 4
  %337 = load i32, i32* %27, align 4
  %338 = call i32 (i32, i8*, ...) @elog(i32 %336, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %337)
  br label %339

339:                                              ; preds = %335, %327
  %340 = load i32, i32* %24, align 4
  %341 = call i64 @GETSTRUCT(i32 %340)
  %342 = inttoptr i64 %341 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %342, %struct.TYPE_14__** %25, align 8
  %343 = load i32, i32* %27, align 4
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 5
  store i32 %343, i32* %345, align 4
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 6
  store i32 -1, i32* %347, align 4
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 11
  store i32 %350, i32* %352, align 4
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 10
  store i32 %355, i32* %357, align 4
  %358 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 9
  store i32 %360, i32* %362, align 4
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 8
  store i32 %365, i32* %367, align 4
  %368 = load i32, i32* %24, align 4
  %369 = call i32 @ReleaseSysCache(i32 %368)
  br label %370

370:                                              ; preds = %339, %321, %317
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %21, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %21, align 4
  br label %52

374:                                              ; preds = %52
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %376 = call i32 @pfree(%struct.TYPE_13__* %375)
  %377 = load i32, i32* %19, align 4
  ret i32 %377
}

declare dso_local i32* @list_head(i32*) #1

declare dso_local %struct.TYPE_13__* @GetIndexAmRoutineByAmId(i32, i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local %struct.TYPE_18__* @RelationGetForm(i32) #1

declare dso_local i32 @CreateTemplateTupleDesc(i32) #1

declare dso_local i8* @TupleDescAttr(i32, i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @AttrNumberGetAttrOffset(i32) #1

declare dso_local i32 @namecpy(i32*, i32*) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32* @lnext(i32*, i32*) #1

declare dso_local i32 @exprType(i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @exprTypmod(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @CheckAttributeType(i32, i32, i32, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @get_base_element_type(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
