; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistscan.c_gistrescan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistscan.c_gistrescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32*, %struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i32, i64, i32 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_24__ = type { i64, i32, i32, %struct.TYPE_21__*, i32*, i32*, i8* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_25__*, %struct.TYPE_25__*, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"GiST queue context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"GiST page data context\00", align 1
@pairingheap_GISTSearchItem_cmp = common dso_local global i32 0, align 4
@SK_ISNULL = common dso_local global i32 0, align 4
@SK_SEARCHNULL = common dso_local global i32 0, align 4
@SK_SEARCHNOTNULL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"missing support function %d for attribute %d of index \22%s\22\00", align 1
@GIST_DISTANCE_PROC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gistrescan(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32 %2, %struct.TYPE_22__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %11, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %5
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  store i32 1, i32* %12, align 4
  br label %71

44:                                               ; preds = %5
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %47, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %61 = call i8* @AllocSetContextCreate(i64 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  store i32 0, i32* %12, align 4
  br label %70

65:                                               ; preds = %44
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @MemoryContextReset(i64 %68)
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %65, %54
  br label %71

71:                                               ; preds = %70, %32
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %164

76:                                               ; preds = %71
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %164, label %81

81:                                               ; preds = %76
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = call i32 @RelationGetNumberOfAttributes(%struct.TYPE_20__* %84)
  store i32 %85, i32* %15, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_20__* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @CreateTemplateTupleDesc(i32 %90)
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 3
  store i32 %91, i32* %95, align 8
  store i32 1, i32* %17, align 4
  br label %96

96:                                               ; preds = %118, %81
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %17, align 4
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %17, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @TupleDescInitEntry(i32 %105, i32 %106, i32* null, i32 %116, i32 -1, i32 0)
  br label %118

118:                                              ; preds = %100
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %17, align 4
  br label %96

121:                                              ; preds = %96
  br label %122

122:                                              ; preds = %144, %121
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %122
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %17, align 4
  %139 = sub nsw i32 %138, 1
  %140 = call %struct.TYPE_19__* @TupleDescAttr(i32 %137, i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @TupleDescInitEntry(i32 %131, i32 %132, i32* null, i32 %142, i32 -1, i32 0)
  br label %144

144:                                              ; preds = %126
  %145 = load i32, i32* %17, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %17, align 4
  br label %122

147:                                              ; preds = %122
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %161 = call i8* @AllocSetContextCreate(i64 %159, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 6
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %147, %76, %71
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @MemoryContextSwitchTo(i64 %167)
  store i64 %168, i64* %14, align 8
  %169 = load i32, i32* @pairingheap_GISTSearchItem_cmp, align 4
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %171 = call i32* @pairingheap_allocate(i32 %169, %struct.TYPE_23__* %170)
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 5
  store i32* %171, i32** %173, align 8
  %174 = load i64, i64* %14, align 8
  %175 = call i64 @MemoryContextSwitchTo(i64 %174)
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 1
  store i32 1, i32* %177, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %179 = icmp ne %struct.TYPE_22__* %178, null
  br i1 %179, label %180, label %309

180:                                              ; preds = %164
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %309

185:                                              ; preds = %180
  store i8** null, i8*** %18, align 8
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %221, label %188

188:                                              ; preds = %185
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 8
  %194 = trunc i64 %193 to i32
  %195 = call i64 @palloc(i32 %194)
  %196 = inttoptr i64 %195 to i8**
  store i8** %196, i8*** %18, align 8
  store i32 0, i32* %13, align 4
  br label %197

197:                                              ; preds = %217, %188
  %198 = load i32, i32* %13, align 4
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %220

203:                                              ; preds = %197
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 5
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i8**, i8*** %18, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  store i8* %212, i8** %216, align 8
  br label %217

217:                                              ; preds = %203
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %13, align 4
  br label %197

220:                                              ; preds = %197
  br label %221

221:                                              ; preds = %220, %185
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 5
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %223, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = mul i64 %229, 4
  %231 = trunc i64 %230 to i32
  %232 = call i32 @memmove(%struct.TYPE_22__* %224, %struct.TYPE_22__* %225, i32 %231)
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 2
  store i32 1, i32* %234, align 4
  store i32 0, i32* %13, align 4
  br label %235

235:                                              ; preds = %299, %221
  %236 = load i32, i32* %13, align 4
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %302

241:                                              ; preds = %235
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 5
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i64 %246
  store %struct.TYPE_22__* %247, %struct.TYPE_22__** %19, align 8
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %253, align 8
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sub nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i64 %259
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = call i32 @fmgr_info_copy(%struct.TYPE_18__* %249, %struct.TYPE_25__* %260, i64 %265)
  %267 = load i32, i32* %12, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %278, label %269

269:                                              ; preds = %241
  %270 = load i8**, i8*** %18, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8*, i8** %270, i64 %272
  %274 = load i8*, i8** %273, align 8
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 0
  store i8* %274, i8** %277, align 8
  br label %278

278:                                              ; preds = %269, %241
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @SK_ISNULL, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %298

285:                                              ; preds = %278
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @SK_SEARCHNULL, align 4
  %290 = load i32, i32* @SK_SEARCHNOTNULL, align 4
  %291 = or i32 %289, %290
  %292 = and i32 %288, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %285
  %295 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 2
  store i32 0, i32* %296, align 4
  br label %297

297:                                              ; preds = %294, %285
  br label %298

298:                                              ; preds = %297, %278
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %13, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %13, align 4
  br label %235

302:                                              ; preds = %235
  %303 = load i32, i32* %12, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %302
  %306 = load i8**, i8*** %18, align 8
  %307 = call i32 @pfree(i8** %306)
  br label %308

308:                                              ; preds = %305, %302
  br label %309

309:                                              ; preds = %308, %180, %164
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %311 = icmp ne %struct.TYPE_22__* %310, null
  br i1 %311, label %312, label %458

312:                                              ; preds = %309
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %458

317:                                              ; preds = %312
  store i8** null, i8*** %20, align 8
  %318 = load i32, i32* %12, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %353, label %320

320:                                              ; preds = %317
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = mul i64 %324, 8
  %326 = trunc i64 %325 to i32
  %327 = call i64 @palloc(i32 %326)
  %328 = inttoptr i64 %327 to i8**
  store i8** %328, i8*** %20, align 8
  store i32 0, i32* %13, align 4
  br label %329

329:                                              ; preds = %349, %320
  %330 = load i32, i32* %13, align 4
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp slt i32 %330, %333
  br i1 %334, label %335, label %352

335:                                              ; preds = %329
  %336 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %336, i32 0, i32 4
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %337, align 8
  %339 = load i32, i32* %13, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 0
  %344 = load i8*, i8** %343, align 8
  %345 = load i8**, i8*** %20, align 8
  %346 = load i32, i32* %13, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8*, i8** %345, i64 %347
  store i8* %344, i8** %348, align 8
  br label %349

349:                                              ; preds = %335
  %350 = load i32, i32* %13, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %13, align 4
  br label %329

352:                                              ; preds = %329
  br label %353

353:                                              ; preds = %352, %317
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %354, i32 0, i32 4
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %355, align 8
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  %362 = mul i64 %361, 4
  %363 = trunc i64 %362 to i32
  %364 = call i32 @memmove(%struct.TYPE_22__* %356, %struct.TYPE_22__* %357, i32 %363)
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = mul i64 %368, 4
  %370 = trunc i64 %369 to i32
  %371 = call i64 @palloc(i32 %370)
  %372 = inttoptr i64 %371 to i32*
  %373 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %374 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %373, i32 0, i32 4
  store i32* %372, i32** %374, align 8
  store i32 0, i32* %13, align 4
  br label %375

375:                                              ; preds = %448, %353
  %376 = load i32, i32* %13, align 4
  %377 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = icmp slt i32 %376, %379
  br i1 %380, label %381, label %451

381:                                              ; preds = %375
  %382 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %382, i32 0, i32 4
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %383, align 8
  %385 = load i32, i32* %13, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i64 %386
  store %struct.TYPE_22__* %387, %struct.TYPE_22__** %21, align 8
  %388 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %389 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %388, i32 0, i32 3
  %390 = load %struct.TYPE_21__*, %struct.TYPE_21__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %390, i32 0, i32 1
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %391, align 8
  %393 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %394 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = sub nsw i32 %395, 1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i64 %397
  store %struct.TYPE_25__* %398, %struct.TYPE_25__** %22, align 8
  %399 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %400 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @OidIsValid(i32 %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %415, label %404

404:                                              ; preds = %381
  %405 = load i32, i32* @ERROR, align 4
  %406 = load i32, i32* @GIST_DISTANCE_PROC, align 4
  %407 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %408 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %410, i32 0, i32 3
  %412 = load %struct.TYPE_20__*, %struct.TYPE_20__** %411, align 8
  %413 = call i32 @RelationGetRelationName(%struct.TYPE_20__* %412)
  %414 = call i32 @elog(i32 %405, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %406, i32 %409, i32 %413)
  br label %415

415:                                              ; preds = %404, %381
  %416 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %417 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @get_func_rettype(i32 %419)
  %421 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %422 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %421, i32 0, i32 4
  %423 = load i32*, i32** %422, align 8
  %424 = load i32, i32* %13, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %423, i64 %425
  store i32 %420, i32* %426, align 4
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %428 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %427, i32 0, i32 2
  %429 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %430 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %431 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %430, i32 0, i32 3
  %432 = load %struct.TYPE_21__*, %struct.TYPE_21__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = call i32 @fmgr_info_copy(%struct.TYPE_18__* %428, %struct.TYPE_25__* %429, i64 %434)
  %436 = load i32, i32* %12, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %447, label %438

438:                                              ; preds = %415
  %439 = load i8**, i8*** %20, align 8
  %440 = load i32, i32* %13, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8*, i8** %439, i64 %441
  %443 = load i8*, i8** %442, align 8
  %444 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %445 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %445, i32 0, i32 0
  store i8* %443, i8** %446, align 8
  br label %447

447:                                              ; preds = %438, %415
  br label %448

448:                                              ; preds = %447
  %449 = load i32, i32* %13, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %13, align 4
  br label %375

451:                                              ; preds = %375
  %452 = load i32, i32* %12, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %457, label %454

454:                                              ; preds = %451
  %455 = load i8**, i8*** %20, align 8
  %456 = call i32 @pfree(i8** %455)
  br label %457

457:                                              ; preds = %454, %451
  br label %458

458:                                              ; preds = %457, %312, %309
  %459 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %460 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %459, i32 0, i32 2
  store i32* null, i32** %460, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @AllocSetContextCreate(i64, i8*, i32) #1

declare dso_local i32 @MemoryContextReset(i64) #1

declare dso_local i32 @RelationGetNumberOfAttributes(%struct.TYPE_20__*) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_20__*) #1

declare dso_local i32 @CreateTemplateTupleDesc(i32) #1

declare dso_local i32 @TupleDescInitEntry(i32, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_19__* @TupleDescAttr(i32, i32) #1

declare dso_local i64 @MemoryContextSwitchTo(i64) #1

declare dso_local i32* @pairingheap_allocate(i32, %struct.TYPE_23__*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memmove(%struct.TYPE_22__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @fmgr_info_copy(%struct.TYPE_18__*, %struct.TYPE_25__*, i64) #1

declare dso_local i32 @pfree(i8**) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_20__*) #1

declare dso_local i32 @get_func_rettype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
