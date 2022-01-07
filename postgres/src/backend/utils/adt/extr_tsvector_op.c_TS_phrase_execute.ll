; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_TS_phrase_execute.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_TS_phrase_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i64 }

@QI_VAL = common dso_local global i64 0, align 8
@TS_EXEC_PHRASE_NO_POS = common dso_local global i32 0, align 4
@TSPO_BOTH = common dso_local global i32 0, align 4
@TSPO_L_ONLY = common dso_local global i32 0, align 4
@TSPO_R_ONLY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unrecognized operator: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32, i32 (i8*, i32*, %struct.TYPE_13__*)*, %struct.TYPE_13__*)* @TS_phrase_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TS_phrase_execute(%struct.TYPE_14__* %0, i8* %1, i32 %2, i32 (i8*, i32*, %struct.TYPE_13__*)* %3, %struct.TYPE_13__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i32*, %struct.TYPE_13__*)*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (i8*, i32*, %struct.TYPE_13__*)* %3, i32 (i8*, i32*, %struct.TYPE_13__*)** %10, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %11, align 8
  %19 = call i32 (...) @check_stack_depth()
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QI_VAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load i32 (i8*, i32*, %struct.TYPE_13__*)*, i32 (i8*, i32*, %struct.TYPE_13__*)** %10, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = bitcast %struct.TYPE_14__* %28 to i32*
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %31 = call i32 %26(i8* %27, i32* %29, %struct.TYPE_13__* %30)
  store i32 %31, i32* %6, align 4
  br label %403

32:                                               ; preds = %5
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %395 [
    i32 130, label %37
    i32 128, label %87
    i32 131, label %87
    i32 129, label %250
  ]

37:                                               ; preds = %32
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 1
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32 (i8*, i32*, %struct.TYPE_13__*)*, i32 (i8*, i32*, %struct.TYPE_13__*)** %10, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %44 = call i32 @TS_phrase_execute(%struct.TYPE_14__* %39, i8* %40, i32 %41, i32 (i8*, i32*, %struct.TYPE_13__*)* %42, %struct.TYPE_13__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %37
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 1, i32* %6, align 4
  br label %403

60:                                               ; preds = %46
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  store i32 0, i32* %6, align 4
  br label %403

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  store i32 1, i32* %6, align 4
  br label %403

70:                                               ; preds = %37
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %75, %70
  %82 = phi i1 [ false, %70 ], [ %80, %75 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @Assert(i32 %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  store i32 1, i32* %6, align 4
  br label %403

87:                                               ; preds = %32, %32
  %88 = call i32 @memset(%struct.TYPE_13__* %12, i32 0, i32 16)
  %89 = call i32 @memset(%struct.TYPE_13__* %13, i32 0, i32 16)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i64 %95
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32 (i8*, i32*, %struct.TYPE_13__*)*, i32 (i8*, i32*, %struct.TYPE_13__*)** %10, align 8
  %100 = call i32 @TS_phrase_execute(%struct.TYPE_14__* %96, i8* %97, i32 %98, i32 (i8*, i32*, %struct.TYPE_13__*)* %99, %struct.TYPE_13__* %12)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %87
  store i32 0, i32* %6, align 4
  br label %403

103:                                              ; preds = %87
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 1
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32 (i8*, i32*, %struct.TYPE_13__*)*, i32 (i8*, i32*, %struct.TYPE_13__*)** %10, align 8
  %109 = call i32 @TS_phrase_execute(%struct.TYPE_14__* %105, i8* %106, i32 %107, i32 (i8*, i32*, %struct.TYPE_13__*)* %108, %struct.TYPE_13__* %13)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  br label %403

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %116, %112
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %124, %116
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @TS_EXEC_PHRASE_NO_POS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 1, i32 0
  store i32 %134, i32* %6, align 4
  br label %403

135:                                              ; preds = %124, %120
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 128
  br i1 %140, label %141, label %165

141:                                              ; preds = %135
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %145, %147
  store i32 %148, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %150 = icmp ne %struct.TYPE_13__* %149, null
  br i1 %150, label %151, label %164

151:                                              ; preds = %141
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %155, %157
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %158, %160
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %151, %141
  br label %186

165:                                              ; preds = %135
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @Max(i32 %167, i32 %169)
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %18, align 4
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %171, %173
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %18, align 4
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %175, %177
  store i32 %178, i32* %17, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %180 = icmp ne %struct.TYPE_13__* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %165
  %182 = load i32, i32* %18, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %181, %165
  br label %186

186:                                              ; preds = %185, %164
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %215

194:                                              ; preds = %190
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %196 = load i32, i32* @TSPO_BOTH, align 4
  %197 = load i32, i32* @TSPO_L_ONLY, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @TSPO_R_ONLY, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %17, align 4
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %204, %206
  %208 = call i32 @TS_phrase_output(%struct.TYPE_13__* %195, %struct.TYPE_13__* %12, %struct.TYPE_13__* %13, i32 %200, i32 %201, i32 %202, i64 %207)
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %210 = icmp ne %struct.TYPE_13__* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %194
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  store i32 1, i32* %213, align 8
  br label %214

214:                                              ; preds = %211, %194
  store i32 1, i32* %6, align 4
  br label %403

215:                                              ; preds = %190, %186
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %215
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %221 = load i32, i32* @TSPO_R_ONLY, align 4
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* %17, align 4
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @TS_phrase_output(%struct.TYPE_13__* %220, %struct.TYPE_13__* %12, %struct.TYPE_13__* %13, i32 %221, i32 %222, i32 %223, i64 %225)
  store i32 %226, i32* %6, align 4
  br label %403

227:                                              ; preds = %215
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %227
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %233 = load i32, i32* @TSPO_L_ONLY, align 4
  %234 = load i32, i32* %16, align 4
  %235 = load i32, i32* %17, align 4
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @TS_phrase_output(%struct.TYPE_13__* %232, %struct.TYPE_13__* %12, %struct.TYPE_13__* %13, i32 %233, i32 %234, i32 %235, i64 %237)
  store i32 %238, i32* %6, align 4
  br label %403

239:                                              ; preds = %227
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %241 = load i32, i32* @TSPO_BOTH, align 4
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %17, align 4
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = call i64 @Min(i64 %245, i64 %247)
  %249 = call i32 @TS_phrase_output(%struct.TYPE_13__* %240, %struct.TYPE_13__* %12, %struct.TYPE_13__* %13, i32 %241, i32 %242, i32 %243, i64 %248)
  store i32 %249, i32* %6, align 4
  br label %403

250:                                              ; preds = %32
  %251 = call i32 @memset(%struct.TYPE_13__* %12, i32 0, i32 16)
  %252 = call i32 @memset(%struct.TYPE_13__* %13, i32 0, i32 16)
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i64 %258
  %260 = load i8*, i8** %8, align 8
  %261 = load i32, i32* %9, align 4
  %262 = load i32 (i8*, i32*, %struct.TYPE_13__*)*, i32 (i8*, i32*, %struct.TYPE_13__*)** %10, align 8
  %263 = call i32 @TS_phrase_execute(%struct.TYPE_14__* %259, i8* %260, i32 %261, i32 (i8*, i32*, %struct.TYPE_13__*)* %262, %struct.TYPE_13__* %12)
  store i32 %263, i32* %14, align 4
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i64 1
  %266 = load i8*, i8** %8, align 8
  %267 = load i32, i32* %9, align 4
  %268 = load i32 (i8*, i32*, %struct.TYPE_13__*)*, i32 (i8*, i32*, %struct.TYPE_13__*)** %10, align 8
  %269 = call i32 @TS_phrase_execute(%struct.TYPE_14__* %265, i8* %266, i32 %267, i32 (i8*, i32*, %struct.TYPE_13__*)* %268, %struct.TYPE_13__* %13)
  store i32 %269, i32* %15, align 4
  %270 = load i32, i32* %14, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %250
  %273 = load i32, i32* %15, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %272
  store i32 0, i32* %6, align 4
  br label %403

276:                                              ; preds = %272, %250
  %277 = load i32, i32* %14, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %287

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %298

287:                                              ; preds = %283, %279, %276
  %288 = load i32, i32* %15, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %305

290:                                              ; preds = %287
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %305, label %298

298:                                              ; preds = %294, %283
  %299 = load i32, i32* %9, align 4
  %300 = load i32, i32* @TS_EXEC_PHRASE_NO_POS, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i32 1, i32 0
  store i32 %304, i32* %6, align 4
  br label %403

305:                                              ; preds = %294, %290, %287
  %306 = load i32, i32* %14, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  store i32 0, i32* %309, align 4
  br label %310

310:                                              ; preds = %308, %305
  %311 = load i32, i32* %15, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %315, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i32 0, i32* %314, align 4
  br label %315

315:                                              ; preds = %313, %310
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @Max(i32 %317, i32 %319)
  store i32 %320, i32* %18, align 4
  %321 = load i32, i32* %18, align 4
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = sub nsw i32 %321, %323
  store i32 %324, i32* %16, align 4
  %325 = load i32, i32* %18, align 4
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = sub nsw i32 %325, %327
  store i32 %328, i32* %17, align 4
  %329 = load i32, i32* %18, align 4
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 1
  store i32 %329, i32* %331, align 4
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %352

335:                                              ; preds = %315
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %352

339:                                              ; preds = %335
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %341 = load i32, i32* @TSPO_BOTH, align 4
  %342 = load i32, i32* %16, align 4
  %343 = load i32, i32* %17, align 4
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = call i64 @Min(i64 %345, i64 %347)
  %349 = call i32 @TS_phrase_output(%struct.TYPE_13__* %340, %struct.TYPE_13__* %12, %struct.TYPE_13__* %13, i32 %341, i32 %342, i32 %343, i64 %348)
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 0
  store i32 1, i32* %351, align 8
  store i32 1, i32* %6, align 4
  br label %403

352:                                              ; preds = %335, %315
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %366

356:                                              ; preds = %352
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %358 = load i32, i32* @TSPO_L_ONLY, align 4
  %359 = load i32, i32* %16, align 4
  %360 = load i32, i32* %17, align 4
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = call i32 @TS_phrase_output(%struct.TYPE_13__* %357, %struct.TYPE_13__* %12, %struct.TYPE_13__* %13, i32 %358, i32 %359, i32 %360, i64 %362)
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 0
  store i32 1, i32* %365, align 8
  store i32 1, i32* %6, align 4
  br label %403

366:                                              ; preds = %352
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %380

370:                                              ; preds = %366
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %372 = load i32, i32* @TSPO_R_ONLY, align 4
  %373 = load i32, i32* %16, align 4
  %374 = load i32, i32* %17, align 4
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = call i32 @TS_phrase_output(%struct.TYPE_13__* %371, %struct.TYPE_13__* %12, %struct.TYPE_13__* %13, i32 %372, i32 %373, i32 %374, i64 %376)
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 0
  store i32 1, i32* %379, align 8
  store i32 1, i32* %6, align 4
  br label %403

380:                                              ; preds = %366
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %382 = load i32, i32* @TSPO_BOTH, align 4
  %383 = load i32, i32* @TSPO_L_ONLY, align 4
  %384 = or i32 %382, %383
  %385 = load i32, i32* @TSPO_R_ONLY, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* %16, align 4
  %388 = load i32, i32* %17, align 4
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %392 = load i64, i64* %391, align 8
  %393 = add nsw i64 %390, %392
  %394 = call i32 @TS_phrase_output(%struct.TYPE_13__* %381, %struct.TYPE_13__* %12, %struct.TYPE_13__* %13, i32 %386, i32 %387, i32 %388, i64 %393)
  store i32 %394, i32* %6, align 4
  br label %403

395:                                              ; preds = %32
  %396 = load i32, i32* @ERROR, align 4
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = call i32 @elog(i32 %396, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %400)
  br label %402

402:                                              ; preds = %395
  store i32 0, i32* %6, align 4
  br label %403

403:                                              ; preds = %402, %380, %370, %356, %339, %298, %275, %239, %231, %219, %214, %128, %111, %102, %81, %69, %65, %51, %25
  %404 = load i32, i32* %6, align 4
  ret i32 %404
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @TS_phrase_output(%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32, i32, i64) #1

declare dso_local i64 @Min(i64, i64) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
