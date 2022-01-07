; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_pqParseInput2.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_pqParseInput2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@PGASYNC_COPY_OUT = common dso_local global i64 0, align 8
@PGASYNC_BUSY = common dso_local global i64 0, align 8
@PGASYNC_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"message type 0x%02x arrived from server while idle\00", align 1
@PGRES_COMMAND_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@CMDSTATUS_LEN = common dso_local global i32 0, align 4
@PGASYNC_READY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"unexpected character %c following empty query response (\22I\22 message)\00", align 1
@PGRES_EMPTY_QUERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [75 x i8] c"server sent data (\22D\22 message) without prior row description (\22T\22 message)\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"server sent binary data (\22B\22 message) without prior row description (\22T\22 message)\00", align 1
@PGASYNC_COPY_IN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [68 x i8] c"unexpected response from server; first received character was \22%c\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pqParseInput2(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  br label %4

4:                                                ; preds = %304, %265, %245, %229, %1
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PGASYNC_COPY_OUT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  br label %310

11:                                               ; preds = %4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = call i64 @pqGetc(i8* %3, %struct.TYPE_16__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %310

21:                                               ; preds = %11
  %22 = load i8, i8* %3, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 65
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = call i64 @getNotify(%struct.TYPE_16__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %310

30:                                               ; preds = %25
  br label %304

31:                                               ; preds = %21
  %32 = load i8, i8* %3, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 78
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = call i64 @pqGetErrorNotice2(%struct.TYPE_16__* %36, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %310

40:                                               ; preds = %35
  br label %303

41:                                               ; preds = %31
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PGASYNC_BUSY, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PGASYNC_IDLE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %310

54:                                               ; preds = %47
  %55 = load i8, i8* %3, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 69
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %60 = call i64 @pqGetErrorNotice2(%struct.TYPE_16__* %59, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %310

63:                                               ; preds = %58
  br label %75

64:                                               ; preds = %54
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 5
  %67 = load i8, i8* %3, align 1
  %68 = sext i8 %67 to i32
  %69 = call i32 (i32*, i8*, ...) @pqInternalNotice(i32* %66, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %310

75:                                               ; preds = %63
  br label %302

76:                                               ; preds = %41
  %77 = load i8, i8* %3, align 1
  %78 = sext i8 %77 to i32
  switch i32 %78, label %283 [
    i32 67, label %79
    i32 69, label %138
    i32 90, label %148
    i32 73, label %152
    i32 75, label %196
    i32 80, label %211
    i32 84, label %219
    i32 68, label %235
    i32 66, label %255
    i32 71, label %275
    i32 72, label %279
  ]

79:                                               ; preds = %76
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 7
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %83 = call i32 @pqGets(%struct.TYPE_17__* %81, %struct.TYPE_16__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %310

86:                                               ; preds = %79
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = icmp eq %struct.TYPE_15__* %89, null
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %93 = load i32, i32* @PGRES_COMMAND_OK, align 4
  %94 = call i8* @PQmakeEmptyPGresult(%struct.TYPE_16__* %92, i32 %93)
  %95 = bitcast i8* %94 to %struct.TYPE_15__*
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 6
  store %struct.TYPE_15__* %95, %struct.TYPE_15__** %97, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 6
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = icmp ne %struct.TYPE_15__* %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %91
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 4
  %105 = call i32 @libpq_gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %106 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %104, i32 %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %108 = call i32 @pqSaveErrorResult(%struct.TYPE_16__* %107)
  br label %109

109:                                              ; preds = %102, %91
  br label %110

110:                                              ; preds = %109, %86
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 6
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = icmp ne %struct.TYPE_15__* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @CMDSTATUS_LEN, align 4
  %126 = call i32 @strlcpy(i32 %120, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %115, %110
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @checkXactStatus(%struct.TYPE_16__* %128, i32 %132)
  %134 = load i8*, i8** @PGASYNC_READY, align 8
  %135 = ptrtoint i8* %134 to i64
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  br label %301

138:                                              ; preds = %76
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %140 = call i64 @pqGetErrorNotice2(%struct.TYPE_16__* %139, i32 1)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %310

143:                                              ; preds = %138
  %144 = load i8*, i8** @PGASYNC_READY, align 8
  %145 = ptrtoint i8* %144 to i64
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %301

148:                                              ; preds = %76
  %149 = load i64, i64* @PGASYNC_IDLE, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %301

152:                                              ; preds = %76
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %154 = call i64 @pqGetc(i8* %3, %struct.TYPE_16__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %310

157:                                              ; preds = %152
  %158 = load i8, i8* %3, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 5
  %164 = load i8, i8* %3, align 1
  %165 = sext i8 %164 to i32
  %166 = call i32 (i32*, i8*, ...) @pqInternalNotice(i32* %163, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %161, %157
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 6
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = icmp eq %struct.TYPE_15__* %170, null
  br i1 %171, label %172, label %191

172:                                              ; preds = %167
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %174 = load i32, i32* @PGRES_EMPTY_QUERY, align 4
  %175 = call i8* @PQmakeEmptyPGresult(%struct.TYPE_16__* %173, i32 %174)
  %176 = bitcast i8* %175 to %struct.TYPE_15__*
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 6
  store %struct.TYPE_15__* %176, %struct.TYPE_15__** %178, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 6
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %180, align 8
  %182 = icmp ne %struct.TYPE_15__* %181, null
  br i1 %182, label %190, label %183

183:                                              ; preds = %172
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 4
  %186 = call i32 @libpq_gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %187 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %185, i32 %186)
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %189 = call i32 @pqSaveErrorResult(%struct.TYPE_16__* %188)
  br label %190

190:                                              ; preds = %183, %172
  br label %191

191:                                              ; preds = %190, %167
  %192 = load i8*, i8** @PGASYNC_READY, align 8
  %193 = ptrtoint i8* %192 to i64
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  store i64 %193, i64* %195, align 8
  br label %301

196:                                              ; preds = %76
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 9
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %200 = call i32 @pqGetInt(i32* %198, i32 4, %struct.TYPE_16__* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  br label %310

203:                                              ; preds = %196
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %207 = call i32 @pqGetInt(i32* %205, i32 4, %struct.TYPE_16__* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  br label %310

210:                                              ; preds = %203
  br label %301

211:                                              ; preds = %76
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 7
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %215 = call i32 @pqGets(%struct.TYPE_17__* %213, %struct.TYPE_16__* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %310

218:                                              ; preds = %211
  br label %301

219:                                              ; preds = %76
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 6
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = icmp eq %struct.TYPE_15__* %222, null
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %226 = call i32 @getRowDescriptions(%struct.TYPE_16__* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  br label %310

229:                                              ; preds = %224
  br label %4

230:                                              ; preds = %219
  %231 = load i8*, i8** @PGASYNC_READY, align 8
  %232 = ptrtoint i8* %231 to i64
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  br label %310

235:                                              ; preds = %76
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 6
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %237, align 8
  %239 = icmp ne %struct.TYPE_15__* %238, null
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %242 = call i32 @getAnotherTuple(%struct.TYPE_16__* %241, i32 0)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  br label %310

245:                                              ; preds = %240
  br label %4

246:                                              ; preds = %235
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 5
  %249 = call i32 (i32*, i8*, ...) @pqInternalNotice(i32* %248, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 4
  br label %310

255:                                              ; preds = %76
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 6
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %257, align 8
  %259 = icmp ne %struct.TYPE_15__* %258, null
  br i1 %259, label %260, label %266

260:                                              ; preds = %255
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %262 = call i32 @getAnotherTuple(%struct.TYPE_16__* %261, i32 1)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  br label %310

265:                                              ; preds = %260
  br label %4

266:                                              ; preds = %255
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 5
  %269 = call i32 (i32*, i8*, ...) @pqInternalNotice(i32* %268, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0))
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 4
  br label %310

275:                                              ; preds = %76
  %276 = load i64, i64* @PGASYNC_COPY_IN, align 8
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  store i64 %276, i64* %278, align 8
  br label %301

279:                                              ; preds = %76
  %280 = load i64, i64* @PGASYNC_COPY_OUT, align 8
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 0
  store i64 %280, i64* %282, align 8
  br label %301

283:                                              ; preds = %76
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 4
  %286 = call i32 @libpq_gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  %287 = load i8, i8* %3, align 1
  %288 = sext i8 %287 to i32
  %289 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %285, i32 %286, i32 %288)
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %291 = call i32 @pqSaveErrorResult(%struct.TYPE_16__* %290)
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 2
  store i32 %294, i32* %296, align 4
  %297 = load i8*, i8** @PGASYNC_READY, align 8
  %298 = ptrtoint i8* %297 to i64
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  store i64 %298, i64* %300, align 8
  br label %310

301:                                              ; preds = %279, %275, %218, %210, %191, %148, %143, %127
  br label %302

302:                                              ; preds = %301, %75
  br label %303

303:                                              ; preds = %302, %40
  br label %304

304:                                              ; preds = %303, %30
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 4
  br label %4

310:                                              ; preds = %10, %20, %29, %39, %53, %62, %85, %142, %156, %202, %209, %217, %228, %230, %244, %246, %264, %266, %283, %64
  ret void
}

declare dso_local i64 @pqGetc(i8*, %struct.TYPE_16__*) #1

declare dso_local i64 @getNotify(%struct.TYPE_16__*) #1

declare dso_local i64 @pqGetErrorNotice2(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @pqInternalNotice(i32*, i8*, ...) #1

declare dso_local i32 @pqGets(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i8* @PQmakeEmptyPGresult(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @pqSaveErrorResult(%struct.TYPE_16__*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @checkXactStatus(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @pqGetInt(i32*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @getRowDescriptions(%struct.TYPE_16__*) #1

declare dso_local i32 @getAnotherTuple(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
