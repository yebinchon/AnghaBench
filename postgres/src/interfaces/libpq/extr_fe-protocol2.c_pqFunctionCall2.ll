; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_pqFunctionCall2.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_pqFunctionCall2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, i64 }
%struct.TYPE_22__ = type { i32, i64 }

@PGRES_FATAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@PGRES_COMMAND_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"protocol error: id=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pqFunctionCall2(%struct.TYPE_24__* %0, i32 %1, i32* %2, i32* %3, i32 %4, %struct.TYPE_23__* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_23__* %5, %struct.TYPE_23__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  store i32 %20, i32* %17, align 4
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %22 = call i64 @pqPutMsgStart(float 7.000000e+01, i32 0, %struct.TYPE_24__* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %7
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %26 = call i64 @pqPuts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %31 = call i64 @pqPutInt(i32 %29, i32 4, %struct.TYPE_24__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %36 = call i64 @pqPutInt(i32 %34, i32 4, %struct.TYPE_24__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %28, %24, %7
  store i32* null, i32** %8, align 8
  br label %261

39:                                               ; preds = %33
  store i32 0, i32* %19, align 4
  br label %40

40:                                               ; preds = %97, %39
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %100

44:                                               ; preds = %40
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %46 = load i32, i32* %19, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %52 = call i64 @pqPutInt(i32 %50, i32 4, %struct.TYPE_24__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32* null, i32** %8, align 8
  br label %261

55:                                               ; preds = %44
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %55
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %72 = call i64 @pqPutInt(i32 %70, i32 4, %struct.TYPE_24__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i32* null, i32** %8, align 8
  br label %261

75:                                               ; preds = %63
  br label %96

76:                                               ; preds = %55
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %92 = call i64 @pqPutnchar(i8* %84, i32 %90, %struct.TYPE_24__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %76
  store i32* null, i32** %8, align 8
  br label %261

95:                                               ; preds = %76
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %19, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %19, align 4
  br label %40

100:                                              ; preds = %40
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %102 = call i64 @pqPutMsgEnd(%struct.TYPE_24__* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %106 = call i64 @pqFlush(%struct.TYPE_24__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %100
  store i32* null, i32** %8, align 8
  br label %261

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %250, %216, %210, %203, %175, %169, %159, %150, %140, %132, %109
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %115 = call i64 @pqWait(i32 1, i32 0, %struct.TYPE_24__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %119 = call i64 @pqReadData(%struct.TYPE_24__* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117, %113
  br label %256

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122, %110
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  store i32 1, i32* %16, align 4
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %130 = call i64 @pqGetc(i8* %18, %struct.TYPE_24__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %110

133:                                              ; preds = %123
  %134 = load i8, i8* %18, align 1
  %135 = sext i8 %134 to i32
  switch i32 %135, label %235 [
    i32 86, label %136
    i32 69, label %199
    i32 65, label %206
    i32 78, label %212
    i32 90, label %218
  ]

136:                                              ; preds = %133
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %138 = call i64 @pqGetc(i8* %18, %struct.TYPE_24__* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %110

141:                                              ; preds = %136
  %142 = load i8, i8* %18, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 71
  br i1 %144, label %145, label %177

145:                                              ; preds = %141
  %146 = load i32*, i32** %12, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %148 = call i32 @pqGetInt(i32* %146, i32 4, %struct.TYPE_24__* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %110

151:                                              ; preds = %145
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i32*, i32** %11, align 8
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %157 = call i32 @pqGetInt(i32* %155, i32 4, %struct.TYPE_24__* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %110

160:                                              ; preds = %154
  br label %171

161:                                              ; preds = %151
  %162 = load i32*, i32** %11, align 8
  %163 = bitcast i32* %162 to i8*
  %164 = load i32*, i32** %12, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %167 = call i32 @pqGetnchar(i8* %163, i32 %165, %struct.TYPE_24__* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %110

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170, %160
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %173 = call i64 @pqGetc(i8* %18, %struct.TYPE_24__* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %110

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %176, %141
  %178 = load i8, i8* %18, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 48
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32, i32* @PGRES_COMMAND_OK, align 4
  store i32 %182, i32* %17, align 4
  br label %198

183:                                              ; preds = %177
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 2
  %186 = call i32 @libpq_gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %187 = load i8, i8* %18, align 1
  %188 = call i32 @printfPQExpBuffer(i32* %185, i32 %186, i8 signext %187)
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %190 = call i32 @pqSaveErrorResult(%struct.TYPE_24__* %189)
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %197 = call i32* @pqPrepareAsyncResult(%struct.TYPE_24__* %196)
  store i32* %197, i32** %8, align 8
  br label %261

198:                                              ; preds = %181
  br label %250

199:                                              ; preds = %133
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %201 = call i32 @pqGetErrorNotice2(%struct.TYPE_24__* %200, i32 1)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %110

204:                                              ; preds = %199
  %205 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  store i32 %205, i32* %17, align 4
  br label %250

206:                                              ; preds = %133
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %208 = call i32 @getNotify(%struct.TYPE_24__* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %110

211:                                              ; preds = %206
  br label %250

212:                                              ; preds = %133
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %214 = call i32 @pqGetErrorNotice2(%struct.TYPE_24__* %213, i32 0)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  br label %110

217:                                              ; preds = %212
  br label %250

218:                                              ; preds = %133
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %218
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %230 = call i32* @pqPrepareAsyncResult(%struct.TYPE_24__* %229)
  store i32* %230, i32** %8, align 8
  br label %261

231:                                              ; preds = %218
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %233 = load i32, i32* %17, align 4
  %234 = call i32* @PQmakeEmptyPGresult(%struct.TYPE_24__* %232, i32 %233)
  store i32* %234, i32** %8, align 8
  br label %261

235:                                              ; preds = %133
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 2
  %238 = call i32 @libpq_gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %239 = load i8, i8* %18, align 1
  %240 = call i32 @printfPQExpBuffer(i32* %237, i32 %238, i8 signext %239)
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %242 = call i32 @pqSaveErrorResult(%struct.TYPE_24__* %241)
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %249 = call i32* @pqPrepareAsyncResult(%struct.TYPE_24__* %248)
  store i32* %249, i32** %8, align 8
  br label %261

250:                                              ; preds = %217, %211, %204, %198
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  store i32 0, i32* %16, align 4
  br label %110

256:                                              ; preds = %121
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %258 = call i32 @pqSaveErrorResult(%struct.TYPE_24__* %257)
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %260 = call i32* @pqPrepareAsyncResult(%struct.TYPE_24__* %259)
  store i32* %260, i32** %8, align 8
  br label %261

261:                                              ; preds = %256, %235, %231, %228, %183, %108, %94, %74, %54, %38
  %262 = load i32*, i32** %8, align 8
  ret i32* %262
}

declare dso_local i64 @pqPutMsgStart(float, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @pqPuts(i8*, %struct.TYPE_24__*) #1

declare dso_local i64 @pqPutInt(i32, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @pqPutnchar(i8*, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @pqPutMsgEnd(%struct.TYPE_24__*) #1

declare dso_local i64 @pqFlush(%struct.TYPE_24__*) #1

declare dso_local i64 @pqWait(i32, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @pqReadData(%struct.TYPE_24__*) #1

declare dso_local i64 @pqGetc(i8*, %struct.TYPE_24__*) #1

declare dso_local i32 @pqGetInt(i32*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @pqGetnchar(i8*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32, i8 signext) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @pqSaveErrorResult(%struct.TYPE_24__*) #1

declare dso_local i32* @pqPrepareAsyncResult(%struct.TYPE_24__*) #1

declare dso_local i32 @pqGetErrorNotice2(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @getNotify(%struct.TYPE_24__*) #1

declare dso_local i32* @PQmakeEmptyPGresult(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
