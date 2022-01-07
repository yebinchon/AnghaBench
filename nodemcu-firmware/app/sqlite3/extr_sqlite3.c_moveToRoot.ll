; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_moveToRoot.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_moveToRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, i64, i32, i64, i32, %struct.TYPE_13__**, %struct.TYPE_12__, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i32, i32*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@CURSOR_INVALID = common dso_local global i64 0, align 8
@CURSOR_REQUIRESEEK = common dso_local global i64 0, align 8
@CURSOR_VALID = common dso_local global i64 0, align 8
@CURSOR_FAULT = common dso_local global i64 0, align 8
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@BTCF_AtLast = common dso_local global i32 0, align 4
@BTCF_ValidNKey = common dso_local global i32 0, align 4
@BTCF_ValidOvfl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @moveToRoot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moveToRoot(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %7 = load i32, i32* @SQLITE_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = call i32 @cursorOwnsBtShared(%struct.TYPE_14__* %8)
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
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CURSOR_FAULT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SQLITE_OK, align 4
  %42 = icmp ne i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %2, align 4
  br label %258

48:                                               ; preds = %31
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = call i32 @sqlite3BtreeClearCursor(%struct.TYPE_14__* %49)
  br label %51

51:                                               ; preds = %48, %1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %93

56:                                               ; preds = %51
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %86, %61
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %65, i64 %69
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = icmp ne %struct.TYPE_13__* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 7
  %77 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %77, i64 %82
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = call i32 @releasePageNotNull(%struct.TYPE_13__* %84)
  br label %86

86:                                               ; preds = %62
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %62, label %91

91:                                               ; preds = %86
  br label %193

92:                                               ; preds = %56
  br label %147

93:                                               ; preds = %51
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i64, i64* @CURSOR_INVALID, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* @SQLITE_OK, align 4
  store i32 %102, i32* %2, align 4
  br label %258

103:                                              ; preds = %93
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, -1
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 11
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 7
  %120 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %120, i64 0
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @getAndInitPage(i32 %114, i64 %117, %struct.TYPE_13__** %121, i32 0, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @SQLITE_OK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %103
  %130 = load i64, i64* @CURSOR_INVALID, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %258

134:                                              ; preds = %103
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  store i32 0, i32* %136, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 7
  %139 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %139, i64 0
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %146, %92
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 7
  %150 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %150, i64 0
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  store %struct.TYPE_13__* %152, %struct.TYPE_13__** %4, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %156, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %172, label %167

167:                                              ; preds = %147
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, 0
  br label %172

172:                                              ; preds = %167, %147
  %173 = phi i1 [ true, %147 ], [ %171, %167 ]
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %172
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  %185 = zext i1 %184 to i32
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %185, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %180, %172
  %191 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %191, i32* %2, align 4
  br label %258

192:                                              ; preds = %180
  br label %193

193:                                              ; preds = %192, %91
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 9
  store i64 0, i64* %195, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  store i64 0, i64* %198, align 8
  %199 = load i32, i32* @BTCF_AtLast, align 4
  %200 = load i32, i32* @BTCF_ValidNKey, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @BTCF_ValidOvfl, align 4
  %203 = or i32 %201, %202
  %204 = xor i32 %203, -1
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 7
  %211 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %211, i64 0
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %212, align 8
  store %struct.TYPE_13__* %213, %struct.TYPE_13__** %4, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp sgt i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %193
  %219 = load i64, i64* @CURSOR_VALID, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  br label %256

222:                                              ; preds = %193
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %251, label %227

227:                                              ; preds = %222
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 1
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %233, i32* %2, align 4
  br label %258

234:                                              ; preds = %227
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 5
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, 8
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %237, i64 %242
  %244 = call i32 @get4byte(i32* %243)
  store i32 %244, i32* %6, align 4
  %245 = load i64, i64* @CURSOR_VALID, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 0
  store i64 %245, i64* %247, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @moveToChild(%struct.TYPE_14__* %248, i32 %249)
  store i32 %250, i32* %5, align 4
  br label %255

251:                                              ; preds = %222
  %252 = load i64, i64* @CURSOR_INVALID, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  br label %255

255:                                              ; preds = %251, %234
  br label %256

256:                                              ; preds = %255, %218
  %257 = load i32, i32* %5, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %256, %232, %190, %129, %98, %37
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cursorOwnsBtShared(%struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3BtreeClearCursor(%struct.TYPE_14__*) #1

declare dso_local i32 @releasePageNotNull(%struct.TYPE_13__*) #1

declare dso_local i32 @getAndInitPage(i32, i64, %struct.TYPE_13__**, i32, i32) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @moveToChild(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
