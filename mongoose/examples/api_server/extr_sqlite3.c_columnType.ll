; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_columnType.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_columnType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_27__*, %struct.TYPE_18__* }
%struct.TYPE_27__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_24__, %struct.TYPE_28__*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_29__*, %struct.TYPE_26__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_17__*, %struct.TYPE_28__*, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_19__* }
%struct.TYPE_28__ = type { i32, i32, i32, i8*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@EP_xIsSelect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, %struct.TYPE_19__*, i8**, i8**, i8**)* @columnType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @columnType(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_29__*, align 8
  %21 = alloca %struct.TYPE_18__, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_18__, align 8
  %25 = alloca %struct.TYPE_17__*, align 8
  %26 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = icmp eq %struct.TYPE_19__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @NEVER(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %5
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %5
  store i8* null, i8** %6, align 8
  br label %323

38:                                               ; preds = %32
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %302 [
    i32 130, label %42
    i32 129, label %42
    i32 128, label %272
  ]

42:                                               ; preds = %38, %38
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %17, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %18, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %19, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 130
  %50 = zext i1 %49 to i32
  %51 = call i32 @testcase(i32 %50)
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 129
  %56 = zext i1 %55 to i32
  %57 = call i32 @testcase(i32 %56)
  br label %58

58:                                               ; preds = %124, %42
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %60 = icmp ne %struct.TYPE_18__* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %63 = icmp ne %struct.TYPE_28__* %62, null
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i1 [ false, %58 ], [ %64, %61 ]
  br i1 %66, label %67, label %125

67:                                               ; preds = %65
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %71, %struct.TYPE_29__** %20, align 8
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %94, %67
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %86, %89
  br label %91

91:                                               ; preds = %78, %72
  %92 = phi i1 [ false, %72 ], [ %90, %78 ]
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  br label %72

97:                                               ; preds = %91
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %97
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %110, align 8
  store %struct.TYPE_28__* %111, %struct.TYPE_28__** %17, align 8
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  store %struct.TYPE_17__* %119, %struct.TYPE_17__** %18, align 8
  br label %124

120:                                              ; preds = %97
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  store %struct.TYPE_18__* %123, %struct.TYPE_18__** %7, align 8
  br label %124

124:                                              ; preds = %120, %103
  br label %58

125:                                              ; preds = %65
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %127 = icmp eq %struct.TYPE_28__* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %302

129:                                              ; preds = %125
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %131 = icmp ne %struct.TYPE_28__* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %134, align 8
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %137 = icmp eq %struct.TYPE_28__* %135, %136
  br label %138

138:                                              ; preds = %132, %129
  %139 = phi i1 [ false, %129 ], [ %137, %132 ]
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %143 = icmp ne %struct.TYPE_17__* %142, null
  br i1 %143, label %144, label %183

144:                                              ; preds = %138
  %145 = load i32, i32* %19, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %182

147:                                              ; preds = %144
  %148 = load i32, i32* %19, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %148, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @ALWAYS(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %182

158:                                              ; preds = %147
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %162, align 8
  %164 = load i32, i32* %19, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %167, align 8
  store %struct.TYPE_19__* %168, %struct.TYPE_19__** %22, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %170, align 8
  %172 = ptrtoint %struct.TYPE_29__* %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  store i64 %172, i64* %173, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  store %struct.TYPE_18__* %174, %struct.TYPE_18__** %175, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  store %struct.TYPE_27__* %178, %struct.TYPE_27__** %179, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %181 = call i8* @columnType(%struct.TYPE_18__* %21, %struct.TYPE_19__* %180, i8** %13, i8** %14, i8** %15)
  store i8* %181, i8** %12, align 8
  br label %182

182:                                              ; preds = %158, %147, %144
  br label %271

183:                                              ; preds = %138
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @ALWAYS(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %270

189:                                              ; preds = %183
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %191 = icmp ne %struct.TYPE_17__* %190, null
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load i32, i32* %19, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %189
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %19, align 4
  br label %201

201:                                              ; preds = %197, %189
  %202 = load i32, i32* %19, align 4
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %215, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %19, align 4
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load i32, i32* %19, align 4
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %208, %211
  br label %213

213:                                              ; preds = %207, %204
  %214 = phi i1 [ false, %204 ], [ %212, %207 ]
  br label %215

215:                                              ; preds = %213, %201
  %216 = phi i1 [ true, %201 ], [ %214, %213 ]
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  %219 = load i32, i32* %19, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %239

222:                                              ; preds = %215
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 4
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %224, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  store i8* %230, i8** %12, align 8
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 4
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %232, align 8
  %234 = load i32, i32* %19, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  store i8* %238, i8** %15, align 8
  br label %239

239:                                              ; preds = %222, %221
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 3
  %242 = load i8*, i8** %241, align 8
  store i8* %242, i8** %14, align 8
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %244, align 8
  %246 = icmp ne %struct.TYPE_27__* %245, null
  br i1 %246, label %247, label %269

247:                                              ; preds = %239
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %251, align 8
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_20__* %252, i32 %255)
  store i32 %256, i32* %23, align 4
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %262, align 8
  %264 = load i32, i32* %23, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  store i8* %268, i8** %13, align 8
  br label %269

269:                                              ; preds = %247, %239
  br label %270

270:                                              ; preds = %269, %183
  br label %271

271:                                              ; preds = %270, %182
  br label %302

272:                                              ; preds = %38
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %275, align 8
  store %struct.TYPE_17__* %276, %struct.TYPE_17__** %25, align 8
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i64 0
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %283, align 8
  store %struct.TYPE_19__* %284, %struct.TYPE_19__** %26, align 8
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %286 = load i32, i32* @EP_xIsSelect, align 4
  %287 = call i32 @ExprHasProperty(%struct.TYPE_19__* %285, i32 %286)
  %288 = call i32 @assert(i32 %287)
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_29__*, %struct.TYPE_29__** %290, align 8
  %292 = ptrtoint %struct.TYPE_29__* %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  store i64 %292, i64* %293, align 8
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  store %struct.TYPE_18__* %294, %struct.TYPE_18__** %295, align 8
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  store %struct.TYPE_27__* %298, %struct.TYPE_27__** %299, align 8
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %301 = call i8* @columnType(%struct.TYPE_18__* %24, %struct.TYPE_19__* %300, i8** %13, i8** %14, i8** %15)
  store i8* %301, i8** %12, align 8
  br label %302

302:                                              ; preds = %38, %272, %271, %128
  %303 = load i8**, i8*** %9, align 8
  %304 = icmp ne i8** %303, null
  br i1 %304, label %305, label %321

305:                                              ; preds = %302
  %306 = load i8**, i8*** %10, align 8
  %307 = icmp ne i8** %306, null
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load i8**, i8*** %11, align 8
  %310 = icmp ne i8** %309, null
  br label %311

311:                                              ; preds = %308, %305
  %312 = phi i1 [ false, %305 ], [ %310, %308 ]
  %313 = zext i1 %312 to i32
  %314 = call i32 @assert(i32 %313)
  %315 = load i8*, i8** %13, align 8
  %316 = load i8**, i8*** %9, align 8
  store i8* %315, i8** %316, align 8
  %317 = load i8*, i8** %14, align 8
  %318 = load i8**, i8*** %10, align 8
  store i8* %317, i8** %318, align 8
  %319 = load i8*, i8** %15, align 8
  %320 = load i8**, i8*** %11, align 8
  store i8* %319, i8** %320, align 8
  br label %321

321:                                              ; preds = %311, %302
  %322 = load i8*, i8** %12, align 8
  store i8* %322, i8** %6, align 8
  br label %323

323:                                              ; preds = %321, %37
  %324 = load i8*, i8** %6, align 8
  ret i8* %324
}

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ALWAYS(i32) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
