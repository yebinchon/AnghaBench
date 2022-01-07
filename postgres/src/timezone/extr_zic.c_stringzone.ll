; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_stringzone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_stringzone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i64, i32, i64, %struct.rule* }
%struct.rule = type { i64, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32*, i64 }

@hi_time = common dso_local global i64 0, align 8
@max_time = common dso_local global i64 0, align 8
@ZIC_MAX = common dso_local global i64 0, align 8
@TM_JANUARY = common dso_local global i32 0, align 4
@DC_DOM = common dso_local global i8* null, align 8
@TM_DECEMBER = common dso_local global i32 0, align 4
@SECSPERDAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SECSPERMIN = common dso_local global i32 0, align 4
@MINSPERHOUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.zone*, i64)* @stringzone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stringzone(i8* %0, %struct.zone* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zone*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.zone*, align 8
  %9 = alloca %struct.rule*, align 8
  %10 = alloca %struct.rule*, align 8
  %11 = alloca %struct.rule*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.rule, align 8
  %19 = alloca %struct.rule, align 8
  %20 = alloca %struct.rule*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.zone* %1, %struct.zone** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 1
  %23 = load i64, i64* @hi_time, align 8
  %24 = load i64, i64* @max_time, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %339

27:                                               ; preds = %3
  %28 = load %struct.zone*, %struct.zone** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.zone, %struct.zone* %28, i64 %29
  %31 = getelementptr inbounds %struct.zone, %struct.zone* %30, i64 -1
  store %struct.zone* %31, %struct.zone** %8, align 8
  store %struct.rule* null, %struct.rule** %11, align 8
  store %struct.rule* null, %struct.rule** %10, align 8
  store i64 0, i64* %12, align 8
  br label %32

32:                                               ; preds = %81, %27
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.zone*, %struct.zone** %8, align 8
  %35 = getelementptr inbounds %struct.zone, %struct.zone* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %84

38:                                               ; preds = %32
  %39 = load %struct.zone*, %struct.zone** %8, align 8
  %40 = getelementptr inbounds %struct.zone, %struct.zone* %39, i32 0, i32 3
  %41 = load %struct.rule*, %struct.rule** %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds %struct.rule, %struct.rule* %41, i64 %42
  store %struct.rule* %43, %struct.rule** %9, align 8
  %44 = load %struct.rule*, %struct.rule** %9, align 8
  %45 = getelementptr inbounds %struct.rule, %struct.rule* %44, i32 0, i32 11
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %38
  %49 = load %struct.rule*, %struct.rule** %9, align 8
  %50 = getelementptr inbounds %struct.rule, %struct.rule* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ZIC_MAX, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %38
  br label %81

55:                                               ; preds = %48
  %56 = load %struct.rule*, %struct.rule** %9, align 8
  %57 = getelementptr inbounds %struct.rule, %struct.rule* %56, i32 0, i32 10
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %81

61:                                               ; preds = %55
  %62 = load %struct.rule*, %struct.rule** %9, align 8
  %63 = getelementptr inbounds %struct.rule, %struct.rule* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = load %struct.rule*, %struct.rule** %10, align 8
  %68 = icmp eq %struct.rule* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load %struct.rule*, %struct.rule** %9, align 8
  store %struct.rule* %70, %struct.rule** %10, align 8
  br label %72

71:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %339

72:                                               ; preds = %69
  br label %80

73:                                               ; preds = %61
  %74 = load %struct.rule*, %struct.rule** %11, align 8
  %75 = icmp eq %struct.rule* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load %struct.rule*, %struct.rule** %9, align 8
  store %struct.rule* %77, %struct.rule** %11, align 8
  br label %79

78:                                               ; preds = %73
  store i32 -1, i32* %4, align 4
  br label %339

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %72
  br label %81

81:                                               ; preds = %80, %60, %54
  %82 = load i64, i64* %12, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %12, align 8
  br label %32

84:                                               ; preds = %32
  %85 = load %struct.rule*, %struct.rule** %10, align 8
  %86 = icmp eq %struct.rule* %85, null
  br i1 %86, label %87, label %180

87:                                               ; preds = %84
  %88 = load %struct.rule*, %struct.rule** %11, align 8
  %89 = icmp eq %struct.rule* %88, null
  br i1 %89, label %90, label %180

90:                                               ; preds = %87
  store %struct.rule* null, %struct.rule** %20, align 8
  store i64 0, i64* %12, align 8
  br label %91

91:                                               ; preds = %122, %90
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.zone*, %struct.zone** %8, align 8
  %94 = getelementptr inbounds %struct.zone, %struct.zone* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %125

97:                                               ; preds = %91
  %98 = load %struct.zone*, %struct.zone** %8, align 8
  %99 = getelementptr inbounds %struct.zone, %struct.zone* %98, i32 0, i32 3
  %100 = load %struct.rule*, %struct.rule** %99, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds %struct.rule, %struct.rule* %100, i64 %101
  store %struct.rule* %102, %struct.rule** %9, align 8
  %103 = load %struct.rule*, %struct.rule** %9, align 8
  %104 = getelementptr inbounds %struct.rule, %struct.rule* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %97
  %108 = load %struct.rule*, %struct.rule** %20, align 8
  %109 = load %struct.rule*, %struct.rule** %9, align 8
  %110 = call i64 @rule_cmp(%struct.rule* %108, %struct.rule* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load %struct.rule*, %struct.rule** %9, align 8
  store %struct.rule* %113, %struct.rule** %20, align 8
  br label %114

114:                                              ; preds = %112, %107, %97
  %115 = load %struct.rule*, %struct.rule** %10, align 8
  %116 = load %struct.rule*, %struct.rule** %9, align 8
  %117 = call i64 @rule_cmp(%struct.rule* %115, %struct.rule* %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load %struct.rule*, %struct.rule** %9, align 8
  store %struct.rule* %120, %struct.rule** %10, align 8
  br label %121

121:                                              ; preds = %119, %114
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %12, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %12, align 8
  br label %91

125:                                              ; preds = %91
  %126 = load %struct.rule*, %struct.rule** %10, align 8
  %127 = icmp ne %struct.rule* %126, null
  br i1 %127, label %128, label %179

128:                                              ; preds = %125
  %129 = load %struct.rule*, %struct.rule** %10, align 8
  %130 = getelementptr inbounds %struct.rule, %struct.rule* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %179

133:                                              ; preds = %128
  %134 = load i32, i32* @TM_JANUARY, align 4
  %135 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 9
  store i32 %134, i32* %135, align 8
  %136 = load i8*, i8** @DC_DOM, align 8
  %137 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 8
  store i8* %136, i8** %137, align 8
  %138 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 2
  store i32 1, i32* %138, align 4
  %139 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 3
  store i32 0, i32* %139, align 8
  %140 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 5
  store i32 0, i32* %140, align 8
  %141 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 4
  store i32 0, i32* %141, align 4
  %142 = load %struct.rule*, %struct.rule** %10, align 8
  %143 = getelementptr inbounds %struct.rule, %struct.rule* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 1
  store i32 %144, i32* %145, align 8
  %146 = load %struct.rule*, %struct.rule** %10, align 8
  %147 = getelementptr inbounds %struct.rule, %struct.rule* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 6
  store i32 %148, i32* %149, align 4
  %150 = load %struct.rule*, %struct.rule** %10, align 8
  %151 = getelementptr inbounds %struct.rule, %struct.rule* %150, i32 0, i32 7
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 7
  store i8* %152, i8** %153, align 8
  %154 = load i32, i32* @TM_DECEMBER, align 4
  %155 = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 9
  store i32 %154, i32* %155, align 8
  %156 = load i8*, i8** @DC_DOM, align 8
  %157 = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 8
  store i8* %156, i8** %157, align 8
  %158 = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 2
  store i32 31, i32* %158, align 4
  %159 = load i32, i32* @SECSPERDAY, align 4
  %160 = load %struct.rule*, %struct.rule** %10, align 8
  %161 = getelementptr inbounds %struct.rule, %struct.rule* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %159, %162
  %164 = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 3
  store i32 %163, i32* %164, align 8
  %165 = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 5
  store i32 0, i32* %165, align 8
  %166 = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 4
  store i32 0, i32* %166, align 4
  %167 = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 1
  store i32 0, i32* %167, align 8
  %168 = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 6
  store i32 0, i32* %168, align 4
  %169 = load %struct.rule*, %struct.rule** %20, align 8
  %170 = icmp ne %struct.rule* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %133
  %172 = load %struct.rule*, %struct.rule** %20, align 8
  %173 = getelementptr inbounds %struct.rule, %struct.rule* %172, i32 0, i32 7
  %174 = load i8*, i8** %173, align 8
  br label %176

175:                                              ; preds = %133
  br label %176

176:                                              ; preds = %175, %171
  %177 = phi i8* [ %174, %171 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %175 ]
  %178 = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 7
  store i8* %177, i8** %178, align 8
  store %struct.rule* %19, %struct.rule** %11, align 8
  store %struct.rule* %18, %struct.rule** %10, align 8
  br label %179

179:                                              ; preds = %176, %128, %125
  br label %180

180:                                              ; preds = %179, %87, %84
  %181 = load %struct.rule*, %struct.rule** %10, align 8
  %182 = icmp eq %struct.rule* %181, null
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load %struct.zone*, %struct.zone** %8, align 8
  %185 = getelementptr inbounds %struct.zone, %struct.zone* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %183
  %189 = load %struct.zone*, %struct.zone** %8, align 8
  %190 = getelementptr inbounds %struct.zone, %struct.zone* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188, %183
  store i32 -1, i32* %4, align 4
  br label %339

194:                                              ; preds = %188, %180
  %195 = load %struct.rule*, %struct.rule** %10, align 8
  %196 = icmp eq %struct.rule* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  br label %202

198:                                              ; preds = %194
  %199 = load %struct.rule*, %struct.rule** %10, align 8
  %200 = getelementptr inbounds %struct.rule, %struct.rule* %199, i32 0, i32 7
  %201 = load i8*, i8** %200, align 8
  br label %202

202:                                              ; preds = %198, %197
  %203 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %197 ], [ %201, %198 ]
  store i8* %203, i8** %13, align 8
  %204 = load i8*, i8** %5, align 8
  %205 = load %struct.zone*, %struct.zone** %8, align 8
  %206 = load i8*, i8** %13, align 8
  %207 = call i64 @doabbr(i8* %204, %struct.zone* %205, i8* %206, i32 0, i32 0, i32 1)
  store i64 %207, i64* %16, align 8
  %208 = load i8*, i8** %5, align 8
  %209 = load i64, i64* %16, align 8
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  %211 = load %struct.zone*, %struct.zone** %8, align 8
  %212 = getelementptr inbounds %struct.zone, %struct.zone* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = sub nsw i32 0, %213
  %215 = call i32 @stringoffset(i8* %210, i32 %214)
  store i32 %215, i32* %17, align 4
  %216 = load i32, i32* %17, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %202
  %219 = load i8*, i8** %5, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 0
  store i8 0, i8* %220, align 1
  store i32 -1, i32* %4, align 4
  br label %339

221:                                              ; preds = %202
  %222 = load i32, i32* %17, align 4
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* %16, align 8
  %225 = add i64 %224, %223
  store i64 %225, i64* %16, align 8
  %226 = load %struct.rule*, %struct.rule** %11, align 8
  %227 = icmp eq %struct.rule* %226, null
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = load i32, i32* %14, align 4
  store i32 %229, i32* %4, align 4
  br label %339

230:                                              ; preds = %221
  %231 = load i8*, i8** %5, align 8
  %232 = load i64, i64* %16, align 8
  %233 = getelementptr inbounds i8, i8* %231, i64 %232
  %234 = load %struct.zone*, %struct.zone** %8, align 8
  %235 = load %struct.rule*, %struct.rule** %11, align 8
  %236 = getelementptr inbounds %struct.rule, %struct.rule* %235, i32 0, i32 7
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.rule*, %struct.rule** %11, align 8
  %239 = getelementptr inbounds %struct.rule, %struct.rule* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.rule*, %struct.rule** %11, align 8
  %242 = getelementptr inbounds %struct.rule, %struct.rule* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @doabbr(i8* %233, %struct.zone* %234, i8* %237, i32 %240, i32 %243, i32 1)
  %245 = load i64, i64* %16, align 8
  %246 = add i64 %245, %244
  store i64 %246, i64* %16, align 8
  %247 = load %struct.rule*, %struct.rule** %11, align 8
  %248 = getelementptr inbounds %struct.rule, %struct.rule* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @SECSPERMIN, align 4
  %251 = load i32, i32* @MINSPERHOUR, align 4
  %252 = mul nsw i32 %250, %251
  %253 = icmp ne i32 %249, %252
  br i1 %253, label %254, label %277

254:                                              ; preds = %230
  %255 = load i8*, i8** %5, align 8
  %256 = load i64, i64* %16, align 8
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  %258 = load %struct.zone*, %struct.zone** %8, align 8
  %259 = getelementptr inbounds %struct.zone, %struct.zone* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.rule*, %struct.rule** %11, align 8
  %262 = getelementptr inbounds %struct.rule, %struct.rule* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %260, %263
  %265 = sub nsw i32 0, %264
  %266 = call i32 @stringoffset(i8* %257, i32 %265)
  store i32 %266, i32* %17, align 4
  %267 = load i32, i32* %17, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %254
  %270 = load i8*, i8** %5, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 0
  store i8 0, i8* %271, align 1
  store i32 -1, i32* %4, align 4
  br label %339

272:                                              ; preds = %254
  %273 = load i32, i32* %17, align 4
  %274 = sext i32 %273 to i64
  %275 = load i64, i64* %16, align 8
  %276 = add i64 %275, %274
  store i64 %276, i64* %16, align 8
  br label %277

277:                                              ; preds = %272, %230
  %278 = load i8*, i8** %5, align 8
  %279 = load i64, i64* %16, align 8
  %280 = add i64 %279, 1
  store i64 %280, i64* %16, align 8
  %281 = getelementptr inbounds i8, i8* %278, i64 %279
  store i8 44, i8* %281, align 1
  %282 = load i8*, i8** %5, align 8
  %283 = load i64, i64* %16, align 8
  %284 = getelementptr inbounds i8, i8* %282, i64 %283
  %285 = load %struct.rule*, %struct.rule** %11, align 8
  %286 = load %struct.rule*, %struct.rule** %11, align 8
  %287 = getelementptr inbounds %struct.rule, %struct.rule* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.zone*, %struct.zone** %8, align 8
  %290 = getelementptr inbounds %struct.zone, %struct.zone* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @stringrule(i8* %284, %struct.rule* %285, i32 %288, i32 %291)
  store i32 %292, i32* %15, align 4
  %293 = load i32, i32* %15, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %277
  %296 = load i8*, i8** %5, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 0
  store i8 0, i8* %297, align 1
  store i32 -1, i32* %4, align 4
  br label %339

298:                                              ; preds = %277
  %299 = load i32, i32* %14, align 4
  %300 = load i32, i32* %15, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %298
  %303 = load i32, i32* %15, align 4
  store i32 %303, i32* %14, align 4
  br label %304

304:                                              ; preds = %302, %298
  %305 = load i8*, i8** %5, align 8
  %306 = load i64, i64* %16, align 8
  %307 = getelementptr inbounds i8, i8* %305, i64 %306
  %308 = call i64 @strlen(i8* %307)
  %309 = load i64, i64* %16, align 8
  %310 = add i64 %309, %308
  store i64 %310, i64* %16, align 8
  %311 = load i8*, i8** %5, align 8
  %312 = load i64, i64* %16, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %16, align 8
  %314 = getelementptr inbounds i8, i8* %311, i64 %312
  store i8 44, i8* %314, align 1
  %315 = load i8*, i8** %5, align 8
  %316 = load i64, i64* %16, align 8
  %317 = getelementptr inbounds i8, i8* %315, i64 %316
  %318 = load %struct.rule*, %struct.rule** %10, align 8
  %319 = load %struct.rule*, %struct.rule** %11, align 8
  %320 = getelementptr inbounds %struct.rule, %struct.rule* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.zone*, %struct.zone** %8, align 8
  %323 = getelementptr inbounds %struct.zone, %struct.zone* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @stringrule(i8* %317, %struct.rule* %318, i32 %321, i32 %324)
  store i32 %325, i32* %15, align 4
  %326 = load i32, i32* %15, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %304
  %329 = load i8*, i8** %5, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 0
  store i8 0, i8* %330, align 1
  store i32 -1, i32* %4, align 4
  br label %339

331:                                              ; preds = %304
  %332 = load i32, i32* %14, align 4
  %333 = load i32, i32* %15, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %331
  %336 = load i32, i32* %15, align 4
  store i32 %336, i32* %14, align 4
  br label %337

337:                                              ; preds = %335, %331
  %338 = load i32, i32* %14, align 4
  store i32 %338, i32* %4, align 4
  br label %339

339:                                              ; preds = %337, %328, %295, %269, %228, %218, %193, %78, %71, %26
  %340 = load i32, i32* %4, align 4
  ret i32 %340
}

declare dso_local i64 @rule_cmp(%struct.rule*, %struct.rule*) #1

declare dso_local i64 @doabbr(i8*, %struct.zone*, i8*, i32, i32, i32) #1

declare dso_local i32 @stringoffset(i8*, i32) #1

declare dso_local i32 @stringrule(i8*, %struct.rule*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
