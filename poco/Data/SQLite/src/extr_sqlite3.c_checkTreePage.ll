; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_checkTreePage.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_checkTreePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i32, i32, i32*, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i32*, i32, i32, i32, i32*, i32 (%struct.TYPE_18__*, i32*)*, i64, i32 (%struct.TYPE_18__*, i32*, %struct.TYPE_20__*)* }
%struct.TYPE_20__ = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Page %d: \00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to get the page. error code=%d\00", align 1
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"btreeInitPage() returns error code %d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"free space corruption\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"On tree page %d cell %d: \00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"On page %d at right child: \00", align 1
@PTRMAP_BTREE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Offset %d out of range %d..%d\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Extends off end of page\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Rowid %lld out of order\00", align 1
@PTRMAP_OVERFLOW1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Child page depth differs\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Multiple uses for byte %u of page %d\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Fragmentation of %d bytes reported as %d on page %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, i32*, i32)* @checkTreePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkTreePage(%struct.TYPE_19__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_21__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_20__, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %10, align 8
  store i32 -1, i32* %13, align 4
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32* null, i32** %29, align 8
  store i32 0, i32* %31, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %32, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %33, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  store %struct.TYPE_21__* %53, %struct.TYPE_21__** %25, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %27, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %601

60:                                               ; preds = %4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @checkRef(%struct.TYPE_19__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %601

66:                                               ; preds = %60
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @btreeGetPage(%struct.TYPE_21__* %72, i32 %73, %struct.TYPE_18__** %10, i32 0)
  store i32 %74, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 (%struct.TYPE_19__*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %580

80:                                               ; preds = %66
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %35, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %87 = call i32 @btreeInitPage(%struct.TYPE_18__* %86)
  store i32 %87, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @SQLITE_CORRUPT, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (%struct.TYPE_19__*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %580

98:                                               ; preds = %80
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %100 = call i32 @btreeComputeFreeSpace(%struct.TYPE_18__* %99)
  store i32 %100, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @SQLITE_CORRUPT, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 (%struct.TYPE_19__*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %580

111:                                              ; preds = %98
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %22, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %17, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %119, align 8
  %120 = load i32*, i32** %22, align 8
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 5
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = call i32 @get2byteNotZero(i32* %124)
  store i32 %125, i32* %28, align 4
  %126 = load i32, i32* %28, align 4
  %127 = load i32, i32* %27, align 4
  %128 = icmp sle i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32*, i32** %22, align 8
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, 3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = call i32 @get2byte(i32* %135)
  store i32 %136, i32* %19, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load i32, i32* %17, align 4
  %145 = add nsw i32 %144, 12
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 4, %148
  %150 = sub nsw i32 %145, %149
  store i32 %150, i32* %18, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load i32*, i32** %22, align 8
  %155 = load i32, i32* %18, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = icmp eq i32* %153, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load i32*, i32** %22, align 8
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %19, align 4
  %164 = sub nsw i32 %163, 1
  %165 = mul nsw i32 2, %164
  %166 = add nsw i32 %162, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %161, i64 %167
  store i32* %168, i32** %24, align 8
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %197, label %173

173:                                              ; preds = %111
  %174 = load i32*, i32** %22, align 8
  %175 = load i32, i32* %17, align 4
  %176 = add nsw i32 %175, 8
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = call i32 @get4byte(i32* %178)
  store i32 %179, i32* %15, align 4
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %173
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8** %186, align 8
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* @PTRMAP_BTREE, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @checkPtrmap(%struct.TYPE_19__* %187, i32 %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %184, %173
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @checkTreePage(%struct.TYPE_19__* %193, i32 %194, i32* %9, i32 %195)
  store i32 %196, i32* %13, align 4
  store i32 0, i32* %21, align 4
  br label %203

197:                                              ; preds = %111
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  store i32* %200, i32** %29, align 8
  %201 = load i32*, i32** %29, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  store i32 0, i32* %202, align 4
  br label %203

203:                                              ; preds = %197, %192
  %204 = load i32, i32* %19, align 4
  %205 = sub nsw i32 %204, 1
  store i32 %205, i32* %11, align 4
  br label %206

206:                                              ; preds = %391, %203
  %207 = load i32, i32* %11, align 4
  %208 = icmp sge i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br label %214

214:                                              ; preds = %209, %206
  %215 = phi i1 [ false, %206 ], [ %213, %209 ]
  br i1 %215, label %216, label %394

216:                                              ; preds = %214
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  %220 = load i32*, i32** %24, align 8
  %221 = load i32*, i32** %22, align 8
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* %11, align 4
  %224 = mul nsw i32 %223, 2
  %225 = add nsw i32 %222, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %221, i64 %226
  %228 = icmp eq i32* %220, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = load i32*, i32** %24, align 8
  %232 = call i32 @get2byteAligned(i32* %231)
  store i32 %232, i32* %26, align 4
  %233 = load i32*, i32** %24, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 -2
  store i32* %234, i32** %24, align 8
  %235 = load i32, i32* %26, align 4
  %236 = load i32, i32* %28, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %243, label %238

238:                                              ; preds = %216
  %239 = load i32, i32* %26, align 4
  %240 = load i32, i32* %27, align 4
  %241 = sub nsw i32 %240, 4
  %242 = icmp sgt i32 %239, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %238, %216
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %245 = load i32, i32* %26, align 4
  %246 = load i32, i32* %28, align 4
  %247 = load i32, i32* %27, align 4
  %248 = sub nsw i32 %247, 4
  %249 = call i32 (%struct.TYPE_19__*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %244, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %245, i32 %246, i32 %248)
  store i32 0, i32* %20, align 4
  br label %391

250:                                              ; preds = %238
  %251 = load i32*, i32** %22, align 8
  %252 = load i32, i32* %26, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32* %254, i32** %23, align 8
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 8
  %257 = load i32 (%struct.TYPE_18__*, i32*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_18__*, i32*, %struct.TYPE_20__*)** %256, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %259 = load i32*, i32** %23, align 8
  %260 = call i32 %257(%struct.TYPE_18__* %258, i32* %259, %struct.TYPE_20__* %36)
  %261 = load i32, i32* %26, align 4
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %261, %263
  %265 = load i32, i32* %27, align 4
  %266 = icmp sgt i32 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %250
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %269 = call i32 (%struct.TYPE_19__*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %268, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  br label %391

270:                                              ; preds = %250
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 7
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %296

275:                                              ; preds = %270
  %276 = load i32, i32* %21, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* %9, align 4
  %282 = icmp sgt i32 %280, %281
  br i1 %282, label %288, label %293

283:                                              ; preds = %275
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %9, align 4
  %287 = icmp sge i32 %285, %286
  br i1 %287, label %288, label %293

288:                                              ; preds = %283, %278
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = call i32 (%struct.TYPE_19__*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %289, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %291)
  br label %293

293:                                              ; preds = %288, %283, %278
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  store i32 %295, i32* %9, align 4
  store i32 0, i32* %21, align 4
  br label %296

296:                                              ; preds = %293, %270
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = icmp sgt i64 %298, %300
  br i1 %301, label %302, label %348

302:                                              ; preds = %296
  %303 = load i32, i32* %26, align 4
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = add nsw i32 %303, %305
  %307 = sub nsw i32 %306, 4
  %308 = load i32, i32* %27, align 4
  %309 = icmp sle i32 %307, %308
  %310 = zext i1 %309 to i32
  %311 = call i32 @assert(i32 %310)
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = sub nsw i64 %313, %315
  %317 = load i32, i32* %27, align 4
  %318 = sext i32 %317 to i64
  %319 = add nsw i64 %316, %318
  %320 = sub nsw i64 %319, 5
  %321 = load i32, i32* %27, align 4
  %322 = sub nsw i32 %321, 4
  %323 = sext i32 %322 to i64
  %324 = sdiv i64 %320, %323
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %37, align 4
  %326 = load i32*, i32** %23, align 8
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = sub nsw i32 %328, 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %326, i64 %330
  %332 = call i32 @get4byte(i32* %331)
  store i32 %332, i32* %38, align 4
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %302
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %339 = load i32, i32* %38, align 4
  %340 = load i32, i32* @PTRMAP_OVERFLOW1, align 4
  %341 = load i32, i32* %7, align 4
  %342 = call i32 @checkPtrmap(%struct.TYPE_19__* %338, i32 %339, i32 %340, i32 %341)
  br label %343

343:                                              ; preds = %337, %302
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %345 = load i32, i32* %38, align 4
  %346 = load i32, i32* %37, align 4
  %347 = call i32 @checkList(%struct.TYPE_19__* %344, i32 0, i32 %345, i32 %346)
  br label %348

348:                                              ; preds = %343, %296
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %379, label %353

353:                                              ; preds = %348
  %354 = load i32*, i32** %23, align 8
  %355 = call i32 @get4byte(i32* %354)
  store i32 %355, i32* %15, align 4
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %357 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %353
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %362 = load i32, i32* %15, align 4
  %363 = load i32, i32* @PTRMAP_BTREE, align 4
  %364 = load i32, i32* %7, align 4
  %365 = call i32 @checkPtrmap(%struct.TYPE_19__* %361, i32 %362, i32 %363, i32 %364)
  br label %366

366:                                              ; preds = %360, %353
  %367 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %368 = load i32, i32* %15, align 4
  %369 = load i32, i32* %9, align 4
  %370 = call i32 @checkTreePage(%struct.TYPE_19__* %367, i32 %368, i32* %9, i32 %369)
  store i32 %370, i32* %14, align 4
  store i32 0, i32* %21, align 4
  %371 = load i32, i32* %14, align 4
  %372 = load i32, i32* %13, align 4
  %373 = icmp ne i32 %371, %372
  br i1 %373, label %374, label %378

374:                                              ; preds = %366
  %375 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %376 = call i32 (%struct.TYPE_19__*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %375, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %377 = load i32, i32* %14, align 4
  store i32 %377, i32* %13, align 4
  br label %378

378:                                              ; preds = %374, %366
  br label %390

379:                                              ; preds = %348
  %380 = load i32*, i32** %29, align 8
  %381 = load i32, i32* %26, align 4
  %382 = shl i32 %381, 16
  %383 = load i32, i32* %26, align 4
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = add nsw i32 %383, %385
  %387 = sub nsw i32 %386, 1
  %388 = or i32 %382, %387
  %389 = call i32 @btreeHeapInsert(i32* %380, i32 %388)
  br label %390

390:                                              ; preds = %379, %378
  br label %391

391:                                              ; preds = %390, %267, %243
  %392 = load i32, i32* %11, align 4
  %393 = add nsw i32 %392, -1
  store i32 %393, i32* %11, align 4
  br label %206

394:                                              ; preds = %214
  %395 = load i32, i32* %9, align 4
  %396 = load i32*, i32** %8, align 8
  store i32 %395, i32* %396, align 4
  %397 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %397, i32 0, i32 0
  store i8* null, i8** %398, align 8
  %399 = load i32, i32* %20, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %579

401:                                              ; preds = %394
  %402 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %402, i32 0, i32 4
  %404 = load i64, i64* %403, align 8
  %405 = icmp sgt i64 %404, 0
  br i1 %405, label %406, label %579

406:                                              ; preds = %401
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 8
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %453, label %411

411:                                              ; preds = %406
  %412 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %412, i32 0, i32 3
  %414 = load i32*, i32** %413, align 8
  store i32* %414, i32** %29, align 8
  %415 = load i32*, i32** %29, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 0
  store i32 0, i32* %416, align 4
  %417 = load i32, i32* %19, align 4
  %418 = sub nsw i32 %417, 1
  store i32 %418, i32* %11, align 4
  br label %419

419:                                              ; preds = %449, %411
  %420 = load i32, i32* %11, align 4
  %421 = icmp sge i32 %420, 0
  br i1 %421, label %422, label %452

422:                                              ; preds = %419
  %423 = load i32*, i32** %22, align 8
  %424 = load i32, i32* %18, align 4
  %425 = load i32, i32* %11, align 4
  %426 = mul nsw i32 %425, 2
  %427 = add nsw i32 %424, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %423, i64 %428
  %430 = call i32 @get2byteAligned(i32* %429)
  store i32 %430, i32* %26, align 4
  %431 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %432 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %431, i32 0, i32 6
  %433 = load i32 (%struct.TYPE_18__*, i32*)*, i32 (%struct.TYPE_18__*, i32*)** %432, align 8
  %434 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %435 = load i32*, i32** %22, align 8
  %436 = load i32, i32* %26, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  %439 = call i32 %433(%struct.TYPE_18__* %434, i32* %438)
  store i32 %439, i32* %39, align 4
  %440 = load i32*, i32** %29, align 8
  %441 = load i32, i32* %26, align 4
  %442 = shl i32 %441, 16
  %443 = load i32, i32* %26, align 4
  %444 = load i32, i32* %39, align 4
  %445 = add nsw i32 %443, %444
  %446 = sub nsw i32 %445, 1
  %447 = or i32 %442, %446
  %448 = call i32 @btreeHeapInsert(i32* %440, i32 %447)
  br label %449

449:                                              ; preds = %422
  %450 = load i32, i32* %11, align 4
  %451 = add nsw i32 %450, -1
  store i32 %451, i32* %11, align 4
  br label %419

452:                                              ; preds = %419
  br label %453

453:                                              ; preds = %452, %406
  %454 = load i32*, i32** %22, align 8
  %455 = load i32, i32* %17, align 4
  %456 = add nsw i32 %455, 1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %454, i64 %457
  %459 = call i32 @get2byte(i32* %458)
  store i32 %459, i32* %11, align 4
  br label %460

460:                                              ; preds = %505, %453
  %461 = load i32, i32* %11, align 4
  %462 = icmp sgt i32 %461, 0
  br i1 %462, label %463, label %516

463:                                              ; preds = %460
  %464 = load i32, i32* %11, align 4
  %465 = load i32, i32* %27, align 4
  %466 = sub nsw i32 %465, 4
  %467 = icmp sle i32 %464, %466
  %468 = zext i1 %467 to i32
  %469 = call i32 @assert(i32 %468)
  %470 = load i32*, i32** %22, align 8
  %471 = load i32, i32* %11, align 4
  %472 = add nsw i32 %471, 2
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %470, i64 %473
  %475 = call i32 @get2byte(i32* %474)
  store i32 %475, i32* %40, align 4
  %476 = load i32, i32* %11, align 4
  %477 = load i32, i32* %40, align 4
  %478 = add nsw i32 %476, %477
  %479 = load i32, i32* %27, align 4
  %480 = icmp sle i32 %478, %479
  %481 = zext i1 %480 to i32
  %482 = call i32 @assert(i32 %481)
  %483 = load i32*, i32** %29, align 8
  %484 = load i32, i32* %11, align 4
  %485 = shl i32 %484, 16
  %486 = load i32, i32* %11, align 4
  %487 = load i32, i32* %40, align 4
  %488 = add nsw i32 %486, %487
  %489 = sub nsw i32 %488, 1
  %490 = or i32 %485, %489
  %491 = call i32 @btreeHeapInsert(i32* %483, i32 %490)
  %492 = load i32*, i32** %22, align 8
  %493 = load i32, i32* %11, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  %496 = call i32 @get2byte(i32* %495)
  store i32 %496, i32* %41, align 4
  %497 = load i32, i32* %41, align 4
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %505, label %499

499:                                              ; preds = %463
  %500 = load i32, i32* %41, align 4
  %501 = load i32, i32* %11, align 4
  %502 = load i32, i32* %40, align 4
  %503 = add nsw i32 %501, %502
  %504 = icmp sgt i32 %500, %503
  br label %505

505:                                              ; preds = %499, %463
  %506 = phi i1 [ true, %463 ], [ %504, %499 ]
  %507 = zext i1 %506 to i32
  %508 = call i32 @assert(i32 %507)
  %509 = load i32, i32* %41, align 4
  %510 = load i32, i32* %27, align 4
  %511 = sub nsw i32 %510, 4
  %512 = icmp sle i32 %509, %511
  %513 = zext i1 %512 to i32
  %514 = call i32 @assert(i32 %513)
  %515 = load i32, i32* %41, align 4
  store i32 %515, i32* %11, align 4
  br label %460

516:                                              ; preds = %460
  store i32 0, i32* %16, align 4
  %517 = load i32, i32* %28, align 4
  %518 = sub nsw i32 %517, 1
  store i32 %518, i32* %31, align 4
  br label %519

519:                                              ; preds = %545, %516
  %520 = load i32*, i32** %29, align 8
  %521 = call i64 @btreeHeapPull(i32* %520, i32* %30)
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %523, label %546

523:                                              ; preds = %519
  %524 = load i32, i32* %31, align 4
  %525 = and i32 %524, 65535
  %526 = load i32, i32* %30, align 4
  %527 = ashr i32 %526, 16
  %528 = icmp sge i32 %525, %527
  br i1 %528, label %529, label %535

529:                                              ; preds = %523
  %530 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %531 = load i32, i32* %30, align 4
  %532 = ashr i32 %531, 16
  %533 = load i32, i32* %7, align 4
  %534 = call i32 (%struct.TYPE_19__*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %530, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %532, i32 %533)
  br label %546

535:                                              ; preds = %523
  %536 = load i32, i32* %30, align 4
  %537 = ashr i32 %536, 16
  %538 = load i32, i32* %31, align 4
  %539 = and i32 %538, 65535
  %540 = sub nsw i32 %537, %539
  %541 = sub nsw i32 %540, 1
  %542 = load i32, i32* %16, align 4
  %543 = add nsw i32 %542, %541
  store i32 %543, i32* %16, align 4
  %544 = load i32, i32* %30, align 4
  store i32 %544, i32* %31, align 4
  br label %545

545:                                              ; preds = %535
  br label %519

546:                                              ; preds = %529, %519
  %547 = load i32, i32* %27, align 4
  %548 = load i32, i32* %31, align 4
  %549 = and i32 %548, 65535
  %550 = sub nsw i32 %547, %549
  %551 = sub nsw i32 %550, 1
  %552 = load i32, i32* %16, align 4
  %553 = add nsw i32 %552, %551
  store i32 %553, i32* %16, align 4
  %554 = load i32*, i32** %29, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 0
  %556 = load i32, i32* %555, align 4
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %578

558:                                              ; preds = %546
  %559 = load i32, i32* %16, align 4
  %560 = load i32*, i32** %22, align 8
  %561 = load i32, i32* %17, align 4
  %562 = add nsw i32 %561, 7
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %560, i64 %563
  %565 = load i32, i32* %564, align 4
  %566 = icmp ne i32 %559, %565
  br i1 %566, label %567, label %578

567:                                              ; preds = %558
  %568 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %569 = load i32, i32* %16, align 4
  %570 = load i32*, i32** %22, align 8
  %571 = load i32, i32* %17, align 4
  %572 = add nsw i32 %571, 7
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i32, i32* %570, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = load i32, i32* %7, align 4
  %577 = call i32 (%struct.TYPE_19__*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %568, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i32 %569, i32 %575, i32 %576)
  br label %578

578:                                              ; preds = %567, %558, %546
  br label %579

579:                                              ; preds = %578, %401, %394
  br label %580

580:                                              ; preds = %579, %102, %89, %76
  %581 = load i32, i32* %20, align 4
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %587, label %583

583:                                              ; preds = %580
  %584 = load i32, i32* %35, align 4
  %585 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %586 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %585, i32 0, i32 0
  store i32 %584, i32* %586, align 8
  br label %587

587:                                              ; preds = %583, %580
  %588 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %589 = call i32 @releasePage(%struct.TYPE_18__* %588)
  %590 = load i8*, i8** %32, align 8
  %591 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %592 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %591, i32 0, i32 0
  store i8* %590, i8** %592, align 8
  %593 = load i32, i32* %33, align 4
  %594 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %595 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %594, i32 0, i32 1
  store i32 %593, i32* %595, align 8
  %596 = load i32, i32* %34, align 4
  %597 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %598 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %597, i32 0, i32 2
  store i32 %596, i32* %598, align 4
  %599 = load i32, i32* %13, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %5, align 4
  br label %601

601:                                              ; preds = %587, %65, %59
  %602 = load i32, i32* %5, align 4
  ret i32 %602
}

declare dso_local i64 @checkRef(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_21__*, i32, %struct.TYPE_18__**, i32) #1

declare dso_local i32 @checkAppendMsg(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local i32 @btreeInitPage(%struct.TYPE_18__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @btreeComputeFreeSpace(%struct.TYPE_18__*) #1

declare dso_local i32 @get2byteNotZero(i32*) #1

declare dso_local i32 @get2byte(i32*) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @checkPtrmap(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @get2byteAligned(i32*) #1

declare dso_local i32 @checkList(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @btreeHeapInsert(i32*, i32) #1

declare dso_local i64 @btreeHeapPull(i32*, i32*) #1

declare dso_local i32 @releasePage(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
