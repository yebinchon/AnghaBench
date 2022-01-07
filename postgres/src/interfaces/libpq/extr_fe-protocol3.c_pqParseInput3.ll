; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_pqParseInput3.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_pqParseInput3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_20__*, i32, %struct.TYPE_22__, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }

@PGASYNC_BUSY = common dso_local global i64 0, align 8
@PGASYNC_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"message type 0x%02x arrived from server while idle\00", align 1
@PGRES_COMMAND_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@CMDSTATUS_LEN = common dso_local global i32 0, align 4
@PGASYNC_READY = common dso_local global i8* null, align 8
@PGRES_EMPTY_QUERY = common dso_local global i32 0, align 4
@PGQUERY_PREPARE = common dso_local global i32 0, align 4
@PGRES_FATAL_ERROR = common dso_local global i32 0, align 4
@PGQUERY_DESCRIBE = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"server sent data (\22D\22 message) without prior row description (\22T\22 message)\0A\00", align 1
@PGRES_COPY_IN = common dso_local global i32 0, align 4
@PGASYNC_COPY_IN = common dso_local global i64 0, align 8
@PGRES_COPY_OUT = common dso_local global i32 0, align 4
@PGASYNC_COPY_OUT = common dso_local global i64 0, align 8
@PGRES_COPY_BOTH = common dso_local global i32 0, align 4
@PGASYNC_COPY_BOTH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"unexpected response from server; first received character was \22%c\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"message contents do not agree with length in message type \22%c\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pqParseInput3(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  br label %6

6:                                                ; preds = %536, %404, %384, %335, %1
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %13 = call i64 @pqGetc(i8* %3, %struct.TYPE_21__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %537

16:                                               ; preds = %6
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %18 = call i64 @pqGetInt(i32* %4, i32 4, %struct.TYPE_21__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %537

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %26 = load i8, i8* %3, align 1
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @handleSyncLoss(%struct.TYPE_21__* %25, i8 signext %26, i32 %27)
  br label %537

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 30000
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i8, i8* %3, align 1
  %34 = call i32 @VALID_LONG_MESSAGE_TYPE(i8 signext %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %38 = load i8, i8* %3, align 1
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @handleSyncLoss(%struct.TYPE_21__* %37, i8 signext %38, i32 %39)
  br label %537

41:                                               ; preds = %32, %29
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, 4
  store i32 %43, i32* %4, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %41
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %58, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %64 = call i64 @pqCheckInBufferSpace(i32 %62, %struct.TYPE_21__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %54
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %68 = load i8, i8* %3, align 1
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @handleSyncLoss(%struct.TYPE_21__* %67, i8 signext %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %54
  br label %537

72:                                               ; preds = %41
  %73 = load i8, i8* %3, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 65
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %78 = call i64 @getNotify(%struct.TYPE_21__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %537

81:                                               ; preds = %76
  br label %500

82:                                               ; preds = %72
  %83 = load i8, i8* %3, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 78
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %88 = call i64 @pqGetErrorNotice3(%struct.TYPE_21__* %87, i32 0)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %537

91:                                               ; preds = %86
  br label %499

92:                                               ; preds = %82
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PGASYNC_BUSY, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %137

98:                                               ; preds = %92
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PGASYNC_IDLE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %537

105:                                              ; preds = %98
  %106 = load i8, i8* %3, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 69
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %111 = call i64 @pqGetErrorNotice3(%struct.TYPE_21__* %110, i32 0)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %537

114:                                              ; preds = %109
  br label %136

115:                                              ; preds = %105
  %116 = load i8, i8* %3, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 83
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %121 = call i64 @getParameterStatus(%struct.TYPE_21__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %537

124:                                              ; preds = %119
  br label %135

125:                                              ; preds = %115
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 11
  %128 = load i8, i8* %3, align 1
  %129 = call i32 @pqInternalNotice(i32* %127, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8 signext %128)
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %125, %124
  br label %136

136:                                              ; preds = %135, %114
  br label %498

137:                                              ; preds = %92
  %138 = load i8, i8* %3, align 1
  %139 = sext i8 %138 to i32
  switch i32 %139, label %479 [
    i32 67, label %140
    i32 69, label %193
    i32 90, label %203
    i32 73, label %212
    i32 49, label %241
    i32 50, label %277
    i32 51, label %277
    i32 83, label %278
    i32 75, label %284
    i32 84, label %299
    i32 110, label %342
    i32 116, label %378
    i32 68, label %385
    i32 71, label %438
    i32 72, label %448
    i32 87, label %460
    i32 100, label %472
    i32 99, label %478
  ]

140:                                              ; preds = %137
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 10
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %144 = call i32 @pqGets(%struct.TYPE_22__* %142, %struct.TYPE_21__* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %537

147:                                              ; preds = %140
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = icmp eq %struct.TYPE_20__* %150, null
  br i1 %151, label %152, label %171

152:                                              ; preds = %147
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %154 = load i32, i32* @PGRES_COMMAND_OK, align 4
  %155 = call i8* @PQmakeEmptyPGresult(%struct.TYPE_21__* %153, i32 %154)
  %156 = bitcast i8* %155 to %struct.TYPE_20__*
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 8
  store %struct.TYPE_20__* %156, %struct.TYPE_20__** %158, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = icmp ne %struct.TYPE_20__* %161, null
  br i1 %162, label %170, label %163

163:                                              ; preds = %152
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 6
  %166 = call i32 @libpq_gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %167 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %165, i32 %166)
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %169 = call i32 @pqSaveErrorResult(%struct.TYPE_21__* %168)
  br label %170

170:                                              ; preds = %163, %152
  br label %171

171:                                              ; preds = %170, %147
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = icmp ne %struct.TYPE_20__* %174, null
  br i1 %175, label %176, label %188

176:                                              ; preds = %171
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 10
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @CMDSTATUS_LEN, align 4
  %187 = call i32 @strlcpy(i32 %181, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %176, %171
  %189 = load i8*, i8** @PGASYNC_READY, align 8
  %190 = ptrtoint i8* %189 to i64
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 3
  store i64 %190, i64* %192, align 8
  br label %497

193:                                              ; preds = %137
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %195 = call i64 @pqGetErrorNotice3(%struct.TYPE_21__* %194, i32 1)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  br label %537

198:                                              ; preds = %193
  %199 = load i8*, i8** @PGASYNC_READY, align 8
  %200 = ptrtoint i8* %199 to i64
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 3
  store i64 %200, i64* %202, align 8
  br label %497

203:                                              ; preds = %137
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %205 = call i32 @getReadyForQuery(%struct.TYPE_21__* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %537

208:                                              ; preds = %203
  %209 = load i64, i64* @PGASYNC_IDLE, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 3
  store i64 %209, i64* %211, align 8
  br label %497

212:                                              ; preds = %137
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 8
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %214, align 8
  %216 = icmp eq %struct.TYPE_20__* %215, null
  br i1 %216, label %217, label %236

217:                                              ; preds = %212
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %219 = load i32, i32* @PGRES_EMPTY_QUERY, align 4
  %220 = call i8* @PQmakeEmptyPGresult(%struct.TYPE_21__* %218, i32 %219)
  %221 = bitcast i8* %220 to %struct.TYPE_20__*
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 8
  store %struct.TYPE_20__* %221, %struct.TYPE_20__** %223, align 8
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 8
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %225, align 8
  %227 = icmp ne %struct.TYPE_20__* %226, null
  br i1 %227, label %235, label %228

228:                                              ; preds = %217
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 6
  %231 = call i32 @libpq_gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %232 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %230, i32 %231)
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %234 = call i32 @pqSaveErrorResult(%struct.TYPE_21__* %233)
  br label %235

235:                                              ; preds = %228, %217
  br label %236

236:                                              ; preds = %235, %212
  %237 = load i8*, i8** @PGASYNC_READY, align 8
  %238 = ptrtoint i8* %237 to i64
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 3
  store i64 %238, i64* %240, align 8
  br label %497

241:                                              ; preds = %137
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @PGQUERY_PREPARE, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %276

247:                                              ; preds = %241
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 8
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %249, align 8
  %251 = icmp eq %struct.TYPE_20__* %250, null
  br i1 %251, label %252, label %271

252:                                              ; preds = %247
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %254 = load i32, i32* @PGRES_COMMAND_OK, align 4
  %255 = call i8* @PQmakeEmptyPGresult(%struct.TYPE_21__* %253, i32 %254)
  %256 = bitcast i8* %255 to %struct.TYPE_20__*
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 8
  store %struct.TYPE_20__* %256, %struct.TYPE_20__** %258, align 8
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 8
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %260, align 8
  %262 = icmp ne %struct.TYPE_20__* %261, null
  br i1 %262, label %270, label %263

263:                                              ; preds = %252
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 6
  %266 = call i32 @libpq_gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %267 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %265, i32 %266)
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %269 = call i32 @pqSaveErrorResult(%struct.TYPE_21__* %268)
  br label %270

270:                                              ; preds = %263, %252
  br label %271

271:                                              ; preds = %270, %247
  %272 = load i8*, i8** @PGASYNC_READY, align 8
  %273 = ptrtoint i8* %272 to i64
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 3
  store i64 %273, i64* %275, align 8
  br label %276

276:                                              ; preds = %271, %241
  br label %497

277:                                              ; preds = %137, %137
  br label %497

278:                                              ; preds = %137
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %280 = call i64 @getParameterStatus(%struct.TYPE_21__* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  br label %537

283:                                              ; preds = %278
  br label %497

284:                                              ; preds = %137
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 4
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %288 = call i64 @pqGetInt(i32* %286, i32 4, %struct.TYPE_21__* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %284
  br label %537

291:                                              ; preds = %284
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 5
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %295 = call i64 @pqGetInt(i32* %293, i32 4, %struct.TYPE_21__* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %291
  br label %537

298:                                              ; preds = %291
  br label %497

299:                                              ; preds = %137
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 8
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %301, align 8
  %303 = icmp ne %struct.TYPE_20__* %302, null
  br i1 %303, label %304, label %318

304:                                              ; preds = %299
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 8
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %318

312:                                              ; preds = %304
  %313 = load i32, i32* %4, align 4
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = add nsw i32 %316, %313
  store i32 %317, i32* %315, align 8
  br label %341

318:                                              ; preds = %304, %299
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 8
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %320, align 8
  %322 = icmp eq %struct.TYPE_20__* %321, null
  br i1 %322, label %329, label %323

323:                                              ; preds = %318
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %324, i32 0, i32 9
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @PGQUERY_DESCRIBE, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %336

329:                                              ; preds = %323, %318
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %331 = load i32, i32* %4, align 4
  %332 = call i32 @getRowDescriptions(%struct.TYPE_21__* %330, i32 %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %329
  br label %537

335:                                              ; preds = %329
  br label %6

336:                                              ; preds = %323
  %337 = load i8*, i8** @PGASYNC_READY, align 8
  %338 = ptrtoint i8* %337 to i64
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 3
  store i64 %338, i64* %340, align 8
  br label %537

341:                                              ; preds = %312
  br label %497

342:                                              ; preds = %137
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 9
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @PGQUERY_DESCRIBE, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %348, label %377

348:                                              ; preds = %342
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i32 0, i32 8
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %350, align 8
  %352 = icmp eq %struct.TYPE_20__* %351, null
  br i1 %352, label %353, label %372

353:                                              ; preds = %348
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %355 = load i32, i32* @PGRES_COMMAND_OK, align 4
  %356 = call i8* @PQmakeEmptyPGresult(%struct.TYPE_21__* %354, i32 %355)
  %357 = bitcast i8* %356 to %struct.TYPE_20__*
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 8
  store %struct.TYPE_20__* %357, %struct.TYPE_20__** %359, align 8
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %361 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %360, i32 0, i32 8
  %362 = load %struct.TYPE_20__*, %struct.TYPE_20__** %361, align 8
  %363 = icmp ne %struct.TYPE_20__* %362, null
  br i1 %363, label %371, label %364

364:                                              ; preds = %353
  %365 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 6
  %367 = call i32 @libpq_gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %368 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %366, i32 %367)
  %369 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %370 = call i32 @pqSaveErrorResult(%struct.TYPE_21__* %369)
  br label %371

371:                                              ; preds = %364, %353
  br label %372

372:                                              ; preds = %371, %348
  %373 = load i8*, i8** @PGASYNC_READY, align 8
  %374 = ptrtoint i8* %373 to i64
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %376 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %375, i32 0, i32 3
  store i64 %374, i64* %376, align 8
  br label %377

377:                                              ; preds = %372, %342
  br label %497

378:                                              ; preds = %137
  %379 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %380 = load i32, i32* %4, align 4
  %381 = call i32 @getParamDescriptions(%struct.TYPE_21__* %379, i32 %380)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %378
  br label %537

384:                                              ; preds = %378
  br label %6

385:                                              ; preds = %137
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %387 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %386, i32 0, i32 8
  %388 = load %struct.TYPE_20__*, %struct.TYPE_20__** %387, align 8
  %389 = icmp ne %struct.TYPE_20__* %388, null
  br i1 %389, label %390, label %405

390:                                              ; preds = %385
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %391, i32 0, i32 8
  %393 = load %struct.TYPE_20__*, %struct.TYPE_20__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %405

398:                                              ; preds = %390
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %400 = load i32, i32* %4, align 4
  %401 = call i32 @getAnotherTuple(%struct.TYPE_21__* %399, i32 %400)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %398
  br label %537

404:                                              ; preds = %398
  br label %6

405:                                              ; preds = %390, %385
  %406 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %407 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %406, i32 0, i32 8
  %408 = load %struct.TYPE_20__*, %struct.TYPE_20__** %407, align 8
  %409 = icmp ne %struct.TYPE_20__* %408, null
  br i1 %409, label %410, label %424

410:                                              ; preds = %405
  %411 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %412 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i32 0, i32 8
  %413 = load %struct.TYPE_20__*, %struct.TYPE_20__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %418, label %424

418:                                              ; preds = %410
  %419 = load i32, i32* %4, align 4
  %420 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %421 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, %419
  store i32 %423, i32* %421, align 8
  br label %436

424:                                              ; preds = %410, %405
  %425 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %426 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %425, i32 0, i32 6
  %427 = call i32 @libpq_gettext(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  %428 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %426, i32 %427)
  %429 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %430 = call i32 @pqSaveErrorResult(%struct.TYPE_21__* %429)
  %431 = load i32, i32* %4, align 4
  %432 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %433 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = add nsw i32 %434, %431
  store i32 %435, i32* %433, align 8
  br label %436

436:                                              ; preds = %424, %418
  br label %437

437:                                              ; preds = %436
  br label %497

438:                                              ; preds = %137
  %439 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %440 = load i32, i32* @PGRES_COPY_IN, align 4
  %441 = call i32 @getCopyStart(%struct.TYPE_21__* %439, i32 %440)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %438
  br label %537

444:                                              ; preds = %438
  %445 = load i64, i64* @PGASYNC_COPY_IN, align 8
  %446 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %447 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %446, i32 0, i32 3
  store i64 %445, i64* %447, align 8
  br label %497

448:                                              ; preds = %137
  %449 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %450 = load i32, i32* @PGRES_COPY_OUT, align 4
  %451 = call i32 @getCopyStart(%struct.TYPE_21__* %449, i32 %450)
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %448
  br label %537

454:                                              ; preds = %448
  %455 = load i64, i64* @PGASYNC_COPY_OUT, align 8
  %456 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %457 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %456, i32 0, i32 3
  store i64 %455, i64* %457, align 8
  %458 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %459 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %458, i32 0, i32 7
  store i32 0, i32* %459, align 4
  br label %497

460:                                              ; preds = %137
  %461 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %462 = load i32, i32* @PGRES_COPY_BOTH, align 4
  %463 = call i32 @getCopyStart(%struct.TYPE_21__* %461, i32 %462)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %460
  br label %537

466:                                              ; preds = %460
  %467 = load i64, i64* @PGASYNC_COPY_BOTH, align 8
  %468 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %469 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %468, i32 0, i32 3
  store i64 %467, i64* %469, align 8
  %470 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %471 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %470, i32 0, i32 7
  store i32 0, i32* %471, align 4
  br label %497

472:                                              ; preds = %137
  %473 = load i32, i32* %4, align 4
  %474 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %475 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = add nsw i32 %476, %473
  store i32 %477, i32* %475, align 8
  br label %497

478:                                              ; preds = %137
  br label %497

479:                                              ; preds = %137
  %480 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %481 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %480, i32 0, i32 6
  %482 = call i32 @libpq_gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  %483 = load i8, i8* %3, align 1
  %484 = sext i8 %483 to i32
  %485 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %481, i32 %482, i32 %484)
  %486 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %487 = call i32 @pqSaveErrorResult(%struct.TYPE_21__* %486)
  %488 = load i8*, i8** @PGASYNC_READY, align 8
  %489 = ptrtoint i8* %488 to i64
  %490 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %491 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %490, i32 0, i32 3
  store i64 %489, i64* %491, align 8
  %492 = load i32, i32* %4, align 4
  %493 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %494 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = add nsw i32 %495, %492
  store i32 %496, i32* %494, align 8
  br label %497

497:                                              ; preds = %479, %478, %472, %466, %454, %444, %437, %377, %341, %298, %283, %277, %276, %236, %208, %198, %188
  br label %498

498:                                              ; preds = %497, %136
  br label %499

499:                                              ; preds = %498, %91
  br label %500

500:                                              ; preds = %499, %81
  %501 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %502 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %505 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  %507 = add nsw i32 %506, 5
  %508 = load i32, i32* %4, align 4
  %509 = add nsw i32 %507, %508
  %510 = icmp eq i32 %503, %509
  br i1 %510, label %511, label %517

511:                                              ; preds = %500
  %512 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %513 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %516 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %515, i32 0, i32 1
  store i32 %514, i32* %516, align 4
  br label %536

517:                                              ; preds = %500
  %518 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %519 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %518, i32 0, i32 6
  %520 = call i32 @libpq_gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %521 = load i8, i8* %3, align 1
  %522 = sext i8 %521 to i32
  %523 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %519, i32 %520, i32 %522)
  %524 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %525 = call i32 @pqSaveErrorResult(%struct.TYPE_21__* %524)
  %526 = load i8*, i8** @PGASYNC_READY, align 8
  %527 = ptrtoint i8* %526 to i64
  %528 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %529 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %528, i32 0, i32 3
  store i64 %527, i64* %529, align 8
  %530 = load i32, i32* %4, align 4
  %531 = add nsw i32 5, %530
  %532 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %533 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  %535 = add nsw i32 %534, %531
  store i32 %535, i32* %533, align 4
  br label %536

536:                                              ; preds = %517, %511
  br label %6

537:                                              ; preds = %465, %453, %443, %403, %383, %336, %334, %297, %290, %282, %207, %197, %146, %123, %113, %104, %90, %80, %71, %36, %24, %20, %15
  ret void
}

declare dso_local i64 @pqGetc(i8*, %struct.TYPE_21__*) #1

declare dso_local i64 @pqGetInt(i32*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @handleSyncLoss(%struct.TYPE_21__*, i8 signext, i32) #1

declare dso_local i32 @VALID_LONG_MESSAGE_TYPE(i8 signext) #1

declare dso_local i64 @pqCheckInBufferSpace(i32, %struct.TYPE_21__*) #1

declare dso_local i64 @getNotify(%struct.TYPE_21__*) #1

declare dso_local i64 @pqGetErrorNotice3(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @getParameterStatus(%struct.TYPE_21__*) #1

declare dso_local i32 @pqInternalNotice(i32*, i8*, i8 signext) #1

declare dso_local i32 @pqGets(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i8* @PQmakeEmptyPGresult(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @pqSaveErrorResult(%struct.TYPE_21__*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @getReadyForQuery(%struct.TYPE_21__*) #1

declare dso_local i32 @getRowDescriptions(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @getParamDescriptions(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @getAnotherTuple(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @getCopyStart(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
