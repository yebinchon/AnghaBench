; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_checkTreePage.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_checkTreePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i64 }
%struct.TYPE_18__ = type { i32, i32*, i32, i32, i64, i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"Page %d: \00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to get the page. error code=%d\00", align 1
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"btreeInitPage() returns error code %d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"On tree page %d cell %d: \00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Rowid %lld out of order (previous was %lld)\00", align 1
@PTRMAP_OVERFLOW1 = common dso_local global i32 0, align 4
@PTRMAP_BTREE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Child page depth differs\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"On page %d at right child: \00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Rowid %lld out of order (max larger than parent min of %lld)\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Rowid %lld out of order (min less than parent min of %lld)\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"Rowid %lld out of order (max larger than parent max of %lld)\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"Rowid %lld out of order (min less than parent max of %lld)\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Corruption detected in cell %d on page %d\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Multiple uses for byte %d of page %d\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"Fragmentation of %d bytes reported as %d on page %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, i8*, i64*, i64*)* @checkTreePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkTreePage(%struct.TYPE_19__* %0, i32 %1, i8* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
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
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca [100 x i8], align 16
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_20__, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i8* null, i8** %26, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %28, align 8
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 100, i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %23, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %24, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %623

52:                                               ; preds = %5
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i64 @checkRef(%struct.TYPE_19__* %53, i32 %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %623

59:                                               ; preds = %52
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @btreeGetPage(%struct.TYPE_21__* %60, i32 %61, %struct.TYPE_18__** %12, i32 0, i32 0)
  store i32 %62, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %66 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %67 = load i32, i32* %14, align 4
  %68 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %65, i8* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i32 0, i32* %6, align 4
  br label %623

69:                                               ; preds = %59
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %73 = call i32 @btreeInitPage(%struct.TYPE_18__* %72)
  store i32 %73, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @SQLITE_CORRUPT, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %83 = load i32, i32* %14, align 4
  %84 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %81, i8* %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %86 = call i32 @releasePage(%struct.TYPE_18__* %85)
  store i32 0, i32* %6, align 4
  br label %623

87:                                               ; preds = %69
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %251, %87
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %94, %88
  %100 = phi i1 [ false, %88 ], [ %98, %94 ]
  br i1 %100, label %101, label %254

101:                                              ; preds = %99
  %102 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 100, i8* %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i32* @findCell(%struct.TYPE_18__* %106, i32 %107)
  store i32* %108, i32** %29, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %110 = load i32*, i32** %29, align 8
  %111 = call i32 @btreeParseCellPtr(%struct.TYPE_18__* %109, i32* %110, %struct.TYPE_20__* %31)
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %30, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %101
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %30, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %30, align 8
  br label %147

125:                                              ; preds = %101
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %28, align 8
  store i64 %130, i64* %27, align 8
  br label %146

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %28, align 8
  %135 = icmp sle i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %138 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %28, align 8
  %142 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %137, i8* %138, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %140, i64 %141)
  br label %143

143:                                              ; preds = %136, %131
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %28, align 8
  br label %146

146:                                              ; preds = %143, %128
  br label %147

147:                                              ; preds = %146, %118
  %148 = load i64, i64* %30, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %148, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load i64, i64* %30, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %154, %156
  br i1 %157, label %158, label %208

158:                                              ; preds = %147
  %159 = load i32*, i32** %29, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  %171 = icmp ule i32* %162, %170
  br i1 %171, label %172, label %208

172:                                              ; preds = %158
  %173 = load i64, i64* %30, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %173, %175
  %177 = load i32, i32* %24, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %176, %178
  %180 = sub nsw i64 %179, 5
  %181 = load i32, i32* %24, align 4
  %182 = sub nsw i32 %181, 4
  %183 = sext i32 %182 to i64
  %184 = sdiv i64 %180, %183
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %32, align 4
  %186 = load i32*, i32** %29, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = call i32 @get4byte(i32* %189)
  store i32 %190, i32* %33, align 4
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %172
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %197 = load i32, i32* %33, align 4
  %198 = load i32, i32* @PTRMAP_OVERFLOW1, align 4
  %199 = load i32, i32* %8, align 4
  %200 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %201 = call i32 @checkPtrmap(%struct.TYPE_19__* %196, i32 %197, i32 %198, i32 %199, i8* %200)
  br label %202

202:                                              ; preds = %195, %172
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %204 = load i32, i32* %33, align 4
  %205 = load i32, i32* %32, align 4
  %206 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %207 = call i32 @checkList(%struct.TYPE_19__* %203, i32 0, i32 %204, i32 %205, i8* %206)
  br label %208

208:                                              ; preds = %202, %158, %147
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %250, label %213

213:                                              ; preds = %208
  %214 = load i32*, i32** %29, align 8
  %215 = call i32 @get4byte(i32* %214)
  store i32 %215, i32* %17, align 4
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %213
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* @PTRMAP_BTREE, align 4
  %224 = load i32, i32* %8, align 4
  %225 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %226 = call i32 @checkPtrmap(%struct.TYPE_19__* %221, i32 %222, i32 %223, i32 %224, i8* %225)
  br label %227

227:                                              ; preds = %220, %213
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %229 = load i32, i32* %17, align 4
  %230 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %231 = load i32, i32* %13, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %227
  br label %235

234:                                              ; preds = %227
  br label %235

235:                                              ; preds = %234, %233
  %236 = phi i64* [ null, %233 ], [ %28, %234 ]
  %237 = call i32 @checkTreePage(%struct.TYPE_19__* %228, i32 %229, i8* %230, i64* %27, i64* %236)
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %13, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %235
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %15, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %246 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %247 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %245, i8* %246, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %248

248:                                              ; preds = %244, %240, %235
  %249 = load i32, i32* %16, align 4
  store i32 %249, i32* %15, align 4
  br label %250

250:                                              ; preds = %248, %208
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %13, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %13, align 4
  br label %88

254:                                              ; preds = %99
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %297, label %259

259:                                              ; preds = %254
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 8
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %262, i64 %267
  %269 = call i32 @get4byte(i32* %268)
  store i32 %269, i32* %17, align 4
  %270 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %271 = load i32, i32* %8, align 4
  %272 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 100, i8* %270, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %271)
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %259
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %279 = load i32, i32* %17, align 4
  %280 = load i32, i32* @PTRMAP_BTREE, align 4
  %281 = load i32, i32* %8, align 4
  %282 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %283 = call i32 @checkPtrmap(%struct.TYPE_19__* %278, i32 %279, i32 %280, i32 %281, i8* %282)
  br label %284

284:                                              ; preds = %277, %259
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %286 = load i32, i32* %17, align 4
  %287 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %284
  br label %294

293:                                              ; preds = %284
  br label %294

294:                                              ; preds = %293, %292
  %295 = phi i64* [ null, %292 ], [ %28, %293 ]
  %296 = call i32 @checkTreePage(%struct.TYPE_19__* %285, i32 %286, i8* %287, i64* null, i64* %295)
  br label %297

297:                                              ; preds = %294, %254
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %372

302:                                              ; preds = %297
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 4
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %372

307:                                              ; preds = %302
  %308 = load i64*, i64** %10, align 8
  %309 = icmp ne i64* %308, null
  br i1 %309, label %310, label %354

310:                                              ; preds = %307
  %311 = load i64*, i64** %11, align 8
  %312 = icmp ne i64* %311, null
  br i1 %312, label %326, label %313

313:                                              ; preds = %310
  %314 = load i64, i64* %28, align 8
  %315 = load i64*, i64** %10, align 8
  %316 = load i64, i64* %315, align 8
  %317 = icmp sgt i64 %314, %316
  br i1 %317, label %318, label %325

318:                                              ; preds = %313
  %319 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %320 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %321 = load i64, i64* %28, align 8
  %322 = load i64*, i64** %10, align 8
  %323 = load i64, i64* %322, align 8
  %324 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %319, i8* %320, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i64 %321, i64 %323)
  br label %325

325:                                              ; preds = %318, %313
  br label %353

326:                                              ; preds = %310
  %327 = load i64, i64* %27, align 8
  %328 = load i64*, i64** %10, align 8
  %329 = load i64, i64* %328, align 8
  %330 = icmp sle i64 %327, %329
  br i1 %330, label %331, label %338

331:                                              ; preds = %326
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %333 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %334 = load i64, i64* %27, align 8
  %335 = load i64*, i64** %10, align 8
  %336 = load i64, i64* %335, align 8
  %337 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %332, i8* %333, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i64 %334, i64 %336)
  br label %338

338:                                              ; preds = %331, %326
  %339 = load i64, i64* %28, align 8
  %340 = load i64*, i64** %11, align 8
  %341 = load i64, i64* %340, align 8
  %342 = icmp sgt i64 %339, %341
  br i1 %342, label %343, label %350

343:                                              ; preds = %338
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %345 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %346 = load i64, i64* %28, align 8
  %347 = load i64*, i64** %11, align 8
  %348 = load i64, i64* %347, align 8
  %349 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %344, i8* %345, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i64 %346, i64 %348)
  br label %350

350:                                              ; preds = %343, %338
  %351 = load i64, i64* %28, align 8
  %352 = load i64*, i64** %10, align 8
  store i64 %351, i64* %352, align 8
  br label %353

353:                                              ; preds = %350, %325
  br label %371

354:                                              ; preds = %307
  %355 = load i64*, i64** %11, align 8
  %356 = icmp ne i64* %355, null
  br i1 %356, label %357, label %370

357:                                              ; preds = %354
  %358 = load i64, i64* %27, align 8
  %359 = load i64*, i64** %11, align 8
  %360 = load i64, i64* %359, align 8
  %361 = icmp sle i64 %358, %360
  br i1 %361, label %362, label %369

362:                                              ; preds = %357
  %363 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %364 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %365 = load i64, i64* %27, align 8
  %366 = load i64*, i64** %11, align 8
  %367 = load i64, i64* %366, align 8
  %368 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %363, i8* %364, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i64 %365, i64 %367)
  br label %369

369:                                              ; preds = %362, %357
  br label %370

370:                                              ; preds = %369, %354
  br label %371

371:                                              ; preds = %370, %353
  br label %372

372:                                              ; preds = %371, %302, %297
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 1
  %375 = load i32*, i32** %374, align 8
  store i32* %375, i32** %22, align 8
  %376 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %377 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 4
  store i32 %378, i32* %19, align 4
  %379 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %380 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = call i8* @sqlite3PageMalloc(i32 %381)
  store i8* %382, i8** %26, align 8
  %383 = load i8*, i8** %26, align 8
  %384 = icmp eq i8* %383, null
  br i1 %384, label %385, label %388

385:                                              ; preds = %372
  %386 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %386, i32 0, i32 0
  store i32 1, i32* %387, align 8
  br label %616

388:                                              ; preds = %372
  %389 = load i32*, i32** %22, align 8
  %390 = load i32, i32* %19, align 4
  %391 = add nsw i32 %390, 5
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %389, i64 %392
  %394 = call i32 @get2byteNotZero(i32* %393)
  store i32 %394, i32* %34, align 4
  %395 = load i32, i32* %34, align 4
  %396 = load i32, i32* %24, align 4
  %397 = icmp sle i32 %395, %396
  %398 = zext i1 %397 to i32
  %399 = call i32 @assert(i32 %398)
  %400 = load i8*, i8** %26, align 8
  %401 = load i32, i32* %34, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, i8* %400, i64 %402
  %404 = load i32, i32* %24, align 4
  %405 = load i32, i32* %34, align 4
  %406 = sub nsw i32 %404, %405
  %407 = call i32 @memset(i8* %403, i32 0, i32 %406)
  %408 = load i8*, i8** %26, align 8
  %409 = load i32, i32* %34, align 4
  %410 = call i32 @memset(i8* %408, i32 1, i32 %409)
  %411 = load i32*, i32** %22, align 8
  %412 = load i32, i32* %19, align 4
  %413 = add nsw i32 %412, 3
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %411, i64 %414
  %416 = call i32 @get2byte(i32* %415)
  store i32 %416, i32* %21, align 4
  %417 = load i32, i32* %19, align 4
  %418 = add nsw i32 %417, 12
  %419 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %420 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = mul nsw i32 4, %421
  %423 = sub nsw i32 %418, %422
  store i32 %423, i32* %20, align 4
  store i32 0, i32* %13, align 4
  br label %424

424:                                              ; preds = %485, %388
  %425 = load i32, i32* %13, align 4
  %426 = load i32, i32* %21, align 4
  %427 = icmp slt i32 %425, %426
  br i1 %427, label %428, label %488

428:                                              ; preds = %424
  %429 = load i32*, i32** %22, align 8
  %430 = load i32, i32* %20, align 4
  %431 = load i32, i32* %13, align 4
  %432 = mul nsw i32 %431, 2
  %433 = add nsw i32 %430, %432
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %429, i64 %434
  %436 = call i32 @get2byte(i32* %435)
  store i32 %436, i32* %35, align 4
  store i64 65536, i64* %36, align 8
  %437 = load i32, i32* %35, align 4
  %438 = load i32, i32* %24, align 4
  %439 = sub nsw i32 %438, 4
  %440 = icmp sle i32 %437, %439
  br i1 %440, label %441, label %448

441:                                              ; preds = %428
  %442 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %443 = load i32*, i32** %22, align 8
  %444 = load i32, i32* %35, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = call i64 @cellSizePtr(%struct.TYPE_18__* %442, i32* %446)
  store i64 %447, i64* %36, align 8
  br label %448

448:                                              ; preds = %441, %428
  %449 = load i32, i32* %35, align 4
  %450 = sext i32 %449 to i64
  %451 = load i64, i64* %36, align 8
  %452 = add nsw i64 %450, %451
  %453 = sub nsw i64 %452, 1
  %454 = trunc i64 %453 to i32
  %455 = load i32, i32* %24, align 4
  %456 = icmp sge i32 %454, %455
  br i1 %456, label %457, label %462

457:                                              ; preds = %448
  %458 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %459 = load i32, i32* %13, align 4
  %460 = load i32, i32* %8, align 4
  %461 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %458, i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %459, i32 %460)
  br label %484

462:                                              ; preds = %448
  %463 = load i32, i32* %35, align 4
  %464 = sext i32 %463 to i64
  %465 = load i64, i64* %36, align 8
  %466 = add nsw i64 %464, %465
  %467 = sub nsw i64 %466, 1
  %468 = trunc i64 %467 to i32
  store i32 %468, i32* %37, align 4
  br label %469

469:                                              ; preds = %480, %462
  %470 = load i32, i32* %37, align 4
  %471 = load i32, i32* %35, align 4
  %472 = icmp sge i32 %470, %471
  br i1 %472, label %473, label %483

473:                                              ; preds = %469
  %474 = load i8*, i8** %26, align 8
  %475 = load i32, i32* %37, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i8, i8* %474, i64 %476
  %478 = load i8, i8* %477, align 1
  %479 = add i8 %478, 1
  store i8 %479, i8* %477, align 1
  br label %480

480:                                              ; preds = %473
  %481 = load i32, i32* %37, align 4
  %482 = add nsw i32 %481, -1
  store i32 %482, i32* %37, align 4
  br label %469

483:                                              ; preds = %469
  br label %484

484:                                              ; preds = %483, %457
  br label %485

485:                                              ; preds = %484
  %486 = load i32, i32* %13, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %13, align 4
  br label %424

488:                                              ; preds = %424
  %489 = load i32*, i32** %22, align 8
  %490 = load i32, i32* %19, align 4
  %491 = add nsw i32 %490, 1
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %489, i64 %492
  %494 = call i32 @get2byte(i32* %493)
  store i32 %494, i32* %13, align 4
  br label %495

495:                                              ; preds = %550, %488
  %496 = load i32, i32* %13, align 4
  %497 = icmp sgt i32 %496, 0
  br i1 %497, label %498, label %561

498:                                              ; preds = %495
  %499 = load i32, i32* %13, align 4
  %500 = load i32, i32* %24, align 4
  %501 = sub nsw i32 %500, 4
  %502 = icmp sle i32 %499, %501
  %503 = zext i1 %502 to i32
  %504 = call i32 @assert(i32 %503)
  %505 = load i32*, i32** %22, align 8
  %506 = load i32, i32* %13, align 4
  %507 = add nsw i32 %506, 2
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %505, i64 %508
  %510 = call i32 @get2byte(i32* %509)
  store i32 %510, i32* %38, align 4
  %511 = load i32, i32* %13, align 4
  %512 = load i32, i32* %38, align 4
  %513 = add nsw i32 %511, %512
  %514 = load i32, i32* %24, align 4
  %515 = icmp sle i32 %513, %514
  %516 = zext i1 %515 to i32
  %517 = call i32 @assert(i32 %516)
  %518 = load i32, i32* %13, align 4
  %519 = load i32, i32* %38, align 4
  %520 = add nsw i32 %518, %519
  %521 = sub nsw i32 %520, 1
  store i32 %521, i32* %39, align 4
  br label %522

522:                                              ; preds = %533, %498
  %523 = load i32, i32* %39, align 4
  %524 = load i32, i32* %13, align 4
  %525 = icmp sge i32 %523, %524
  br i1 %525, label %526, label %536

526:                                              ; preds = %522
  %527 = load i8*, i8** %26, align 8
  %528 = load i32, i32* %39, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i8, i8* %527, i64 %529
  %531 = load i8, i8* %530, align 1
  %532 = add i8 %531, 1
  store i8 %532, i8* %530, align 1
  br label %533

533:                                              ; preds = %526
  %534 = load i32, i32* %39, align 4
  %535 = add nsw i32 %534, -1
  store i32 %535, i32* %39, align 4
  br label %522

536:                                              ; preds = %522
  %537 = load i32*, i32** %22, align 8
  %538 = load i32, i32* %13, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %537, i64 %539
  %541 = call i32 @get2byte(i32* %540)
  store i32 %541, i32* %39, align 4
  %542 = load i32, i32* %39, align 4
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %550, label %544

544:                                              ; preds = %536
  %545 = load i32, i32* %39, align 4
  %546 = load i32, i32* %13, align 4
  %547 = load i32, i32* %38, align 4
  %548 = add nsw i32 %546, %547
  %549 = icmp sgt i32 %545, %548
  br label %550

550:                                              ; preds = %544, %536
  %551 = phi i1 [ true, %536 ], [ %549, %544 ]
  %552 = zext i1 %551 to i32
  %553 = call i32 @assert(i32 %552)
  %554 = load i32, i32* %39, align 4
  %555 = load i32, i32* %24, align 4
  %556 = sub nsw i32 %555, 4
  %557 = icmp sle i32 %554, %556
  %558 = zext i1 %557 to i32
  %559 = call i32 @assert(i32 %558)
  %560 = load i32, i32* %39, align 4
  store i32 %560, i32* %13, align 4
  br label %495

561:                                              ; preds = %495
  store i32 0, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %562

562:                                              ; preds = %592, %561
  %563 = load i32, i32* %13, align 4
  %564 = load i32, i32* %24, align 4
  %565 = icmp slt i32 %563, %564
  br i1 %565, label %566, label %595

566:                                              ; preds = %562
  %567 = load i8*, i8** %26, align 8
  %568 = load i32, i32* %13, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i8, i8* %567, i64 %569
  %571 = load i8, i8* %570, align 1
  %572 = sext i8 %571 to i32
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %577

574:                                              ; preds = %566
  %575 = load i32, i32* %18, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %18, align 4
  br label %591

577:                                              ; preds = %566
  %578 = load i8*, i8** %26, align 8
  %579 = load i32, i32* %13, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i8, i8* %578, i64 %580
  %582 = load i8, i8* %581, align 1
  %583 = sext i8 %582 to i32
  %584 = icmp sgt i32 %583, 1
  br i1 %584, label %585, label %590

585:                                              ; preds = %577
  %586 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %587 = load i32, i32* %13, align 4
  %588 = load i32, i32* %8, align 4
  %589 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %586, i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %587, i32 %588)
  br label %595

590:                                              ; preds = %577
  br label %591

591:                                              ; preds = %590, %574
  br label %592

592:                                              ; preds = %591
  %593 = load i32, i32* %13, align 4
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %13, align 4
  br label %562

595:                                              ; preds = %585, %562
  %596 = load i32, i32* %18, align 4
  %597 = load i32*, i32** %22, align 8
  %598 = load i32, i32* %19, align 4
  %599 = add nsw i32 %598, 7
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i32, i32* %597, i64 %600
  %602 = load i32, i32* %601, align 4
  %603 = icmp ne i32 %596, %602
  br i1 %603, label %604, label %615

604:                                              ; preds = %595
  %605 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %606 = load i32, i32* %18, align 4
  %607 = load i32*, i32** %22, align 8
  %608 = load i32, i32* %19, align 4
  %609 = add nsw i32 %608, 7
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32, i32* %607, i64 %610
  %612 = load i32, i32* %611, align 4
  %613 = load i32, i32* %8, align 4
  %614 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @checkAppendMsg(%struct.TYPE_19__* %605, i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i32 %606, i32 %612, i32 %613)
  br label %615

615:                                              ; preds = %604, %595
  br label %616

616:                                              ; preds = %615, %385
  %617 = load i8*, i8** %26, align 8
  %618 = call i32 @sqlite3PageFree(i8* %617)
  %619 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %620 = call i32 @releasePage(%struct.TYPE_18__* %619)
  %621 = load i32, i32* %15, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %6, align 4
  br label %623

623:                                              ; preds = %616, %75, %64, %58, %51
  %624 = load i32, i32* %6, align 4
  ret i32 %624
}

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, ...) #1

declare dso_local i64 @checkRef(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_21__*, i32, %struct.TYPE_18__**, i32, i32) #1

declare dso_local i32 @checkAppendMsg(%struct.TYPE_19__*, i8*, i8*, ...) #1

declare dso_local i32 @btreeInitPage(%struct.TYPE_18__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @releasePage(%struct.TYPE_18__*) #1

declare dso_local i32* @findCell(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @btreeParseCellPtr(%struct.TYPE_18__*, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @checkPtrmap(%struct.TYPE_19__*, i32, i32, i32, i8*) #1

declare dso_local i32 @checkList(%struct.TYPE_19__*, i32, i32, i32, i8*) #1

declare dso_local i8* @sqlite3PageMalloc(i32) #1

declare dso_local i32 @get2byteNotZero(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @get2byte(i32*) #1

declare dso_local i64 @cellSizePtr(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @sqlite3PageFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
