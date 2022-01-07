; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_NUM_numpart_to_char.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_NUM_numpart_to_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i32, i32, i8*, i8, i8*, i32, i32, i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@NUM_LSIGN_PRE = common dso_local global i64 0, align 8
@NUM_9 = common dso_local global i32 0, align 4
@NUM_0 = common dso_local global i32 0, align 4
@NUM_D = common dso_local global i32 0, align 4
@NUM_DEC = common dso_local global i32 0, align 4
@NUM_LSIGN_POST = common dso_local global i64 0, align 8
@DEBUG_elog_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @NUM_numpart_to_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NUM_numpart_to_char(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 11
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = call i64 @IS_ROMAN(%struct.TYPE_11__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %547

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  store i32 0, i32* %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %175

19:                                               ; preds = %12
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %43, label %27

27:                                               ; preds = %19
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 11
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = call i64 @IS_ZERO(%struct.TYPE_11__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %175

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 11
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %175

43:                                               ; preds = %33, %19
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = call i32 @IS_PREDEC_SPACE(%struct.TYPE_10__* %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %175

52:                                               ; preds = %47
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %175

59:                                               ; preds = %52, %43
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 11
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = call i64 @IS_LSIGN(%struct.TYPE_11__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %108

65:                                               ; preds = %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 11
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NUM_LSIGN_PRE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %107

73:                                               ; preds = %65
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 6
  %76 = load i8, i8* %75, align 8
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 45
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 7
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @strcpy(i8* %82, i32 %85)
  br label %95

87:                                               ; preds = %73
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 7
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strcpy(i8* %90, i32 %93)
  br label %95

95:                                               ; preds = %87, %79
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 7
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 7
  %102 = load i8*, i8** %101, align 8
  %103 = sext i32 %99 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %101, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %95, %65
  br label %174

108:                                              ; preds = %59
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 11
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = call i64 @IS_BRACKET(%struct.TYPE_11__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %108
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 6
  %117 = load i8, i8* %116, align 8
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 43
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 32, i32 60
  %122 = trunc i32 %121 to i8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 7
  %125 = load i8*, i8** %124, align 8
  store i8 %122, i8* %125, align 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 7
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %127, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  br label %173

132:                                              ; preds = %108
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 6
  %135 = load i8, i8* %134, align 8
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 43
  br i1 %137, label %138, label %155

138:                                              ; preds = %132
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 11
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = call i64 @IS_FILLMODE(%struct.TYPE_11__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %138
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 7
  %147 = load i8*, i8** %146, align 8
  store i8 32, i8* %147, align 1
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 7
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %149, align 8
  br label %152

152:                                              ; preds = %144, %138
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  br label %172

155:                                              ; preds = %132
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 6
  %158 = load i8, i8* %157, align 8
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 45
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 7
  %164 = load i8*, i8** %163, align 8
  store i8 45, i8* %164, align 1
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 7
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %166, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  br label %171

171:                                              ; preds = %161, %155
  br label %172

172:                                              ; preds = %171, %152
  br label %173

173:                                              ; preds = %172, %114
  br label %174

174:                                              ; preds = %173, %107
  br label %175

175:                                              ; preds = %174, %52, %47, %33, %27, %12
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @NUM_9, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %191, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @NUM_0, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %191, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @NUM_D, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @NUM_DEC, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %542

191:                                              ; preds = %187, %183, %179, %175
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %230

199:                                              ; preds = %191
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 11
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp sgt i32 %204, %207
  br i1 %208, label %215, label %209

209:                                              ; preds = %199
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 11
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = call i64 @IS_ZERO(%struct.TYPE_11__* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %230, label %215

215:                                              ; preds = %209, %199
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 11
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  %219 = call i64 @IS_FILLMODE(%struct.TYPE_11__* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %215
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 7
  %224 = load i8*, i8** %223, align 8
  store i8 32, i8* %224, align 1
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 7
  %227 = load i8*, i8** %226, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %226, align 8
  br label %229

229:                                              ; preds = %221, %215
  br label %424

230:                                              ; preds = %209, %191
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 11
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %232, align 8
  %234 = call i64 @IS_ZERO(%struct.TYPE_11__* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %264

236:                                              ; preds = %230
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %264

244:                                              ; preds = %236
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 11
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = icmp sle i32 %249, %252
  br i1 %253, label %254, label %264

254:                                              ; preds = %244
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 7
  %257 = load i8*, i8** %256, align 8
  store i8 48, i8* %257, align 1
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 7
  %260 = load i8*, i8** %259, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %259, align 8
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 3
  store i32 1, i32* %263, align 8
  br label %423

264:                                              ; preds = %244, %236, %230
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 2
  %267 = load i8*, i8** %266, align 8
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 46
  br i1 %270, label %271, label %337

271:                                              ; preds = %264
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 5
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %283

276:                                              ; preds = %271
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 5
  %279 = load i8*, i8** %278, align 8
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp ne i32 %281, 46
  br i1 %282, label %283, label %300

283:                                              ; preds = %276, %271
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 7
  %286 = load i8*, i8** %285, align 8
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 12
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @strcpy(i8* %286, i32 %289)
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 7
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @strlen(i8* %293)
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 7
  %297 = load i8*, i8** %296, align 8
  %298 = sext i32 %294 to i64
  %299 = getelementptr inbounds i8, i8* %297, i64 %298
  store i8* %299, i8** %296, align 8
  br label %336

300:                                              ; preds = %276
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 11
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %302, align 8
  %304 = call i64 @IS_FILLMODE(%struct.TYPE_11__* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %335

306:                                              ; preds = %300
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 5
  %309 = load i8*, i8** %308, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %335

311:                                              ; preds = %306
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 5
  %314 = load i8*, i8** %313, align 8
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 46
  br i1 %317, label %318, label %335

318:                                              ; preds = %311
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 7
  %321 = load i8*, i8** %320, align 8
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 12
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @strcpy(i8* %321, i32 %324)
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 7
  %328 = load i8*, i8** %327, align 8
  %329 = call i32 @strlen(i8* %328)
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 7
  %332 = load i8*, i8** %331, align 8
  %333 = sext i32 %329 to i64
  %334 = getelementptr inbounds i8, i8* %332, i64 %333
  store i8* %334, i8** %331, align 8
  br label %335

335:                                              ; preds = %318, %311, %306, %300
  br label %336

336:                                              ; preds = %335, %283
  br label %411

337:                                              ; preds = %264
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 5
  %340 = load i8*, i8** %339, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %355

342:                                              ; preds = %337
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 2
  %345 = load i8*, i8** %344, align 8
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 5
  %348 = load i8*, i8** %347, align 8
  %349 = icmp ugt i8* %345, %348
  br i1 %349, label %350, label %355

350:                                              ; preds = %342
  %351 = load i32, i32* %4, align 4
  %352 = load i32, i32* @NUM_0, align 4
  %353 = icmp ne i32 %351, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %350
  br label %410

355:                                              ; preds = %350, %342, %337
  %356 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %357 = call i32 @IS_PREDEC_SPACE(%struct.TYPE_10__* %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %395

359:                                              ; preds = %355
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 11
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %361, align 8
  %363 = call i64 @IS_FILLMODE(%struct.TYPE_11__* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %373, label %365

365:                                              ; preds = %359
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 7
  %368 = load i8*, i8** %367, align 8
  store i8 32, i8* %368, align 1
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 7
  %371 = load i8*, i8** %370, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %370, align 8
  br label %394

373:                                              ; preds = %359
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 5
  %376 = load i8*, i8** %375, align 8
  %377 = icmp ne i8* %376, null
  br i1 %377, label %378, label %393

378:                                              ; preds = %373
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 5
  %381 = load i8*, i8** %380, align 8
  %382 = load i8, i8* %381, align 1
  %383 = sext i8 %382 to i32
  %384 = icmp eq i32 %383, 46
  br i1 %384, label %385, label %393

385:                                              ; preds = %378
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 7
  %388 = load i8*, i8** %387, align 8
  store i8 48, i8* %388, align 1
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 7
  %391 = load i8*, i8** %390, align 8
  %392 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %392, i8** %390, align 8
  br label %393

393:                                              ; preds = %385, %378, %373
  br label %394

394:                                              ; preds = %393, %365
  br label %409

395:                                              ; preds = %355
  %396 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 2
  %398 = load i8*, i8** %397, align 8
  %399 = load i8, i8* %398, align 1
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 7
  %402 = load i8*, i8** %401, align 8
  store i8 %399, i8* %402, align 1
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 7
  %405 = load i8*, i8** %404, align 8
  %406 = getelementptr inbounds i8, i8* %405, i32 1
  store i8* %406, i8** %404, align 8
  %407 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 3
  store i32 1, i32* %408, align 8
  br label %409

409:                                              ; preds = %395, %394
  br label %410

410:                                              ; preds = %409, %354
  br label %411

411:                                              ; preds = %410, %336
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 2
  %414 = load i8*, i8** %413, align 8
  %415 = load i8, i8* %414, align 1
  %416 = icmp ne i8 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %411
  %418 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 2
  %420 = load i8*, i8** %419, align 8
  %421 = getelementptr inbounds i8, i8* %420, i32 1
  store i8* %421, i8** %419, align 8
  br label %422

422:                                              ; preds = %417, %411
  br label %423

423:                                              ; preds = %422, %254
  br label %424

424:                                              ; preds = %423, %229
  %425 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %425, i32 0, i32 8
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 4
  %430 = load i32, i32* %429, align 4
  %431 = icmp ne i32 %430, 0
  %432 = zext i1 %431 to i64
  %433 = select i1 %431, i32 1, i32 0
  %434 = add nsw i32 %427, %433
  %435 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i32 0, i32 11
  %437 = load %struct.TYPE_11__*, %struct.TYPE_11__** %436, align 8
  %438 = call i64 @IS_DECIMAL(%struct.TYPE_11__* %437)
  %439 = icmp ne i64 %438, 0
  %440 = zext i1 %439 to i64
  %441 = select i1 %439, i32 1, i32 0
  %442 = add nsw i32 %434, %441
  store i32 %442, i32* %5, align 4
  %443 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %443, i32 0, i32 5
  %445 = load i8*, i8** %444, align 8
  %446 = icmp ne i8* %445, null
  br i1 %446, label %447, label %459

447:                                              ; preds = %424
  %448 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i32 0, i32 5
  %450 = load i8*, i8** %449, align 8
  %451 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %451, i32 0, i32 2
  %453 = load i8*, i8** %452, align 8
  %454 = icmp eq i8* %450, %453
  br i1 %454, label %455, label %459

455:                                              ; preds = %447
  %456 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  store i32 %458, i32* %5, align 4
  br label %459

459:                                              ; preds = %455, %447, %424
  %460 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = add nsw i32 %462, 1
  %464 = load i32, i32* %5, align 4
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %466, label %541

466:                                              ; preds = %459
  %467 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = icmp eq i32 %469, 1
  br i1 %470, label %471, label %493

471:                                              ; preds = %466
  %472 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %472, i32 0, i32 11
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %473, align 8
  %475 = call i64 @IS_BRACKET(%struct.TYPE_11__* %474)
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %493

477:                                              ; preds = %471
  %478 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i32 0, i32 6
  %480 = load i8, i8* %479, align 8
  %481 = sext i8 %480 to i32
  %482 = icmp eq i32 %481, 43
  %483 = zext i1 %482 to i64
  %484 = select i1 %482, i32 32, i32 62
  %485 = trunc i32 %484 to i8
  %486 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %487 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %486, i32 0, i32 7
  %488 = load i8*, i8** %487, align 8
  store i8 %485, i8* %488, align 1
  %489 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %489, i32 0, i32 7
  %491 = load i8*, i8** %490, align 8
  %492 = getelementptr inbounds i8, i8* %491, i32 1
  store i8* %492, i8** %490, align 8
  br label %540

493:                                              ; preds = %471, %466
  %494 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %494, i32 0, i32 11
  %496 = load %struct.TYPE_11__*, %struct.TYPE_11__** %495, align 8
  %497 = call i64 @IS_LSIGN(%struct.TYPE_11__* %496)
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %539

499:                                              ; preds = %493
  %500 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %500, i32 0, i32 11
  %502 = load %struct.TYPE_11__*, %struct.TYPE_11__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %502, i32 0, i32 1
  %504 = load i64, i64* %503, align 8
  %505 = load i64, i64* @NUM_LSIGN_POST, align 8
  %506 = icmp eq i64 %504, %505
  br i1 %506, label %507, label %539

507:                                              ; preds = %499
  %508 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %508, i32 0, i32 6
  %510 = load i8, i8* %509, align 8
  %511 = sext i8 %510 to i32
  %512 = icmp eq i32 %511, 45
  br i1 %512, label %513, label %521

513:                                              ; preds = %507
  %514 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %515 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %514, i32 0, i32 7
  %516 = load i8*, i8** %515, align 8
  %517 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %518 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %517, i32 0, i32 10
  %519 = load i32, i32* %518, align 8
  %520 = call i32 @strcpy(i8* %516, i32 %519)
  br label %529

521:                                              ; preds = %507
  %522 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %523 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %522, i32 0, i32 7
  %524 = load i8*, i8** %523, align 8
  %525 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %525, i32 0, i32 9
  %527 = load i32, i32* %526, align 4
  %528 = call i32 @strcpy(i8* %524, i32 %527)
  br label %529

529:                                              ; preds = %521, %513
  %530 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %531 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %530, i32 0, i32 7
  %532 = load i8*, i8** %531, align 8
  %533 = call i32 @strlen(i8* %532)
  %534 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %535 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %534, i32 0, i32 7
  %536 = load i8*, i8** %535, align 8
  %537 = sext i32 %533 to i64
  %538 = getelementptr inbounds i8, i8* %536, i64 %537
  store i8* %538, i8** %535, align 8
  br label %539

539:                                              ; preds = %529, %499, %493
  br label %540

540:                                              ; preds = %539, %477
  br label %541

541:                                              ; preds = %540, %459
  br label %542

542:                                              ; preds = %541, %187
  %543 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %544 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %544, align 4
  br label %547

547:                                              ; preds = %542, %11
  ret void
}

declare dso_local i64 @IS_ROMAN(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_ZERO(%struct.TYPE_11__*) #1

declare dso_local i32 @IS_PREDEC_SPACE(%struct.TYPE_10__*) #1

declare dso_local i64 @IS_LSIGN(%struct.TYPE_11__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_BRACKET(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_FILLMODE(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_DECIMAL(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
