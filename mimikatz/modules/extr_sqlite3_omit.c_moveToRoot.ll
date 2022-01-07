; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_moveToRoot.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_moveToRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i64, i32, i32, i64, i32, %struct.TYPE_14__*, %struct.TYPE_13__, i64, i32, %struct.TYPE_12__*, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32, i32, i64, i64, i32, i32*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@CURSOR_INVALID = common dso_local global i64 0, align 8
@CURSOR_REQUIRESEEK = common dso_local global i64 0, align 8
@CURSOR_VALID = common dso_local global i64 0, align 8
@CURSOR_FAULT = common dso_local global i64 0, align 8
@SQLITE_EMPTY = common dso_local global i32 0, align 4
@BTCF_AtLast = common dso_local global i32 0, align 4
@BTCF_ValidNKey = common dso_local global i32 0, align 4
@BTCF_ValidOvfl = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @moveToRoot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moveToRoot(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load i32, i32* @SQLITE_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = call i32 @cursorOwnsBtShared(%struct.TYPE_15__* %8)
  %10 = call i32 @assert(i32 %9)
  %11 = load i64, i64* @CURSOR_INVALID, align 8
  %12 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %13 = icmp slt i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* @CURSOR_VALID, align 8
  %17 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %18 = icmp slt i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* @CURSOR_FAULT, align 8
  %22 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %23 = icmp sgt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 0
  br label %36

36:                                               ; preds = %31, %1
  %37 = phi i1 [ true, %1 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 0
  br label %49

49:                                               ; preds = %44, %36
  %50 = phi i1 [ true, %36 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %93

57:                                               ; preds = %49
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %57
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = call i32 @releasePageNotNull(%struct.TYPE_14__* %65)
  br label %67

67:                                               ; preds = %73, %62
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 12
  %76 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %76, i64 %80
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = call i32 @releasePageNotNull(%struct.TYPE_14__* %82)
  br label %67

84:                                               ; preds = %67
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 12
  %87 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %87, i64 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 7
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %91, align 8
  br label %216

92:                                               ; preds = %57
  br label %169

93:                                               ; preds = %49
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i64, i64* @CURSOR_INVALID, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* @SQLITE_EMPTY, align 4
  store i32 %102, i32* %2, align 4
  br label %280

103:                                              ; preds = %93
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, -1
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %103
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @CURSOR_FAULT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @SQLITE_OK, align 4
  %126 = icmp ne i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %2, align 4
  br label %280

132:                                              ; preds = %115
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = call i32 @sqlite3BtreeClearCursor(%struct.TYPE_15__* %133)
  br label %135

135:                                              ; preds = %132, %103
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 11
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 7
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @getAndInitPage(i32 %140, i64 %143, %struct.TYPE_14__** %145, i32 0, i32 %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @SQLITE_OK, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %135
  %154 = load i64, i64* @CURSOR_INVALID, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %280

158:                                              ; preds = %135
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  store i32 0, i32* %160, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 7
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %158
  br label %169

169:                                              ; preds = %168, %92
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 7
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  store %struct.TYPE_14__* %172, %struct.TYPE_14__** %4, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %176, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %192, label %187

187:                                              ; preds = %169
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 0
  br label %192

192:                                              ; preds = %187, %169
  %193 = phi i1 [ true, %169 ], [ %191, %187 ]
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %210, label %200

200:                                              ; preds = %192
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %203, 0
  %205 = zext i1 %204 to i32
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %205, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %200, %192
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 7
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_14__* %213)
  store i32 %214, i32* %2, align 4
  br label %280

215:                                              ; preds = %200
  br label %216

216:                                              ; preds = %215, %84
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 9
  store i64 0, i64* %218, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  store i64 0, i64* %221, align 8
  %222 = load i32, i32* @BTCF_AtLast, align 4
  %223 = load i32, i32* @BTCF_ValidNKey, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @BTCF_ValidOvfl, align 4
  %226 = or i32 %224, %225
  %227 = xor i32 %226, -1
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = and i32 %230, %227
  store i32 %231, i32* %229, align 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 7
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  store %struct.TYPE_14__* %234, %struct.TYPE_14__** %4, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = icmp sgt i64 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %216
  %240 = load i64, i64* @CURSOR_VALID, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  store i64 %240, i64* %242, align 8
  br label %278

243:                                              ; preds = %216
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %272, label %248

248:                                              ; preds = %243
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 1
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %254, i32* %2, align 4
  br label %280

255:                                              ; preds = %248
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 5
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = add nsw i32 %261, 8
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %258, i64 %263
  %265 = call i32 @get4byte(i32* %264)
  store i32 %265, i32* %6, align 4
  %266 = load i64, i64* @CURSOR_VALID, align 8
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  store i64 %266, i64* %268, align 8
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %270 = load i32, i32* %6, align 4
  %271 = call i32 @moveToChild(%struct.TYPE_15__* %269, i32 %270)
  store i32 %271, i32* %5, align 4
  br label %277

272:                                              ; preds = %243
  %273 = load i64, i64* @CURSOR_INVALID, align 8
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  store i64 %273, i64* %275, align 8
  %276 = load i32, i32* @SQLITE_EMPTY, align 4
  store i32 %276, i32* %5, align 4
  br label %277

277:                                              ; preds = %272, %255
  br label %278

278:                                              ; preds = %277, %239
  %279 = load i32, i32* %5, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %278, %253, %210, %153, %121, %98
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cursorOwnsBtShared(%struct.TYPE_15__*) #1

declare dso_local i32 @releasePageNotNull(%struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3BtreeClearCursor(%struct.TYPE_15__*) #1

declare dso_local i32 @getAndInitPage(i32, i64, %struct.TYPE_14__**, i32, i32) #1

declare dso_local i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_14__*) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @moveToChild(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
