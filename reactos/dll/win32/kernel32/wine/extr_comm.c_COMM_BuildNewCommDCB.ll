; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_comm.c_COMM_BuildNewCommDCB.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_comm.c_COMM_BuildNewCommDCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@COMM_BuildNewCommDCB.baudW = internal constant [6 x i8] c"baud=\00", align 1
@COMM_BuildNewCommDCB.parityW = internal constant [8 x i8] c"parity=\00", align 1
@COMM_BuildNewCommDCB.dataW = internal constant [6 x i8] c"data=\00", align 1
@COMM_BuildNewCommDCB.stopW = internal constant [6 x i8] c"stop=\00", align 1
@COMM_BuildNewCommDCB.toW = internal constant [4 x i8] c"to=\00", align 1
@COMM_BuildNewCommDCB.xonW = internal constant [5 x i8] c"xon=\00", align 1
@COMM_BuildNewCommDCB.odsrW = internal constant [6 x i8] c"odsr=\00", align 1
@COMM_BuildNewCommDCB.octsW = internal constant [6 x i8] c"octs=\00", align 1
@COMM_BuildNewCommDCB.dtrW = internal constant [5 x i8] c"dtr=\00", align 1
@COMM_BuildNewCommDCB.rtsW = internal constant [5 x i8] c"rts=\00", align 1
@COMM_BuildNewCommDCB.idsrW = internal constant [6 x i8] c"idsr=\00", align 1
@TRUE = common dso_local global i64 0, align 8
@TWOSTOPBITS = common dso_local global i32 0, align 4
@ONESTOPBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_5__*, %struct.TYPE_6__*)* @COMM_BuildNewCommDCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @COMM_BuildNewCommDCB(i8* %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %238, %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %239

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %23, %17
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  br label %18

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strncmpiW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @COMM_BuildNewCommDCB.baudW, i64 0, i64 0), i8* %27, i32 5)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 5
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i8* @COMM_ParseNumber(i32 %34, i32* %36)
  store i8* %37, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %4, align 8
  br label %261

41:                                               ; preds = %30
  br label %226

42:                                               ; preds = %26
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strncmpiW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @COMM_BuildNewCommDCB.parityW, i64 0, i64 0), i8* %43, i32 7)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 7
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 10
  %52 = call i8* @COMM_ParseParity(i32 %49, i32* %51)
  store i8* %52, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %4, align 8
  br label %261

56:                                               ; preds = %46
  br label %225

57:                                               ; preds = %42
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @strncmpiW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @COMM_BuildNewCommDCB.dataW, i64 0, i64 0), i8* %58, i32 5)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 5
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 9
  %67 = call i8* @COMM_ParseByteSize(i32 %64, i32* %66)
  store i8* %67, i8** %5, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %4, align 8
  br label %261

71:                                               ; preds = %61
  br label %224

72:                                               ; preds = %57
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @strncmpiW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @COMM_BuildNewCommDCB.stopW, i64 0, i64 0), i8* %73, i32 5)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* @TRUE, align 8
  store i64 %77, i64* %10, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 5
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = call i8* @COMM_ParseStopBits(i32 %80, i32* %82)
  store i8* %83, i8** %5, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  %86 = load i64, i64* @FALSE, align 8
  store i64 %86, i64* %4, align 8
  br label %261

87:                                               ; preds = %76
  br label %223

88:                                               ; preds = %72
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @strncmpiW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @COMM_BuildNewCommDCB.toW, i64 0, i64 0), i8* %89, i32 3)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %115, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  %95 = ptrtoint i8* %94 to i32
  %96 = call i8* @COMM_ParseOnOff(i32 %95, i8** %8)
  store i8* %96, i8** %5, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = load i64, i64* @FALSE, align 8
  store i64 %99, i64* %4, align 8
  br label %261

100:                                              ; preds = %92
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = icmp ne i8* %109, null
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 60000, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %222

115:                                              ; preds = %88
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @strncmpiW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @COMM_BuildNewCommDCB.xonW, i64 0, i64 0), i8* %116, i32 4)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %134, label %119

119:                                              ; preds = %115
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 4
  %122 = ptrtoint i8* %121 to i32
  %123 = call i8* @COMM_ParseOnOff(i32 %122, i8** %8)
  store i8* %123, i8** %5, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %119
  %126 = load i64, i64* @FALSE, align 8
  store i64 %126, i64* %4, align 8
  br label %261

127:                                              ; preds = %119
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 8
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 7
  store i8* %131, i8** %133, align 8
  br label %221

134:                                              ; preds = %115
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 @strncmpiW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @COMM_BuildNewCommDCB.odsrW, i64 0, i64 0), i8* %135, i32 5)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 5
  %141 = ptrtoint i8* %140 to i32
  %142 = call i8* @COMM_ParseOnOff(i32 %141, i8** %8)
  store i8* %142, i8** %5, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  %145 = load i64, i64* @FALSE, align 8
  store i64 %145, i64* %4, align 8
  br label %261

146:                                              ; preds = %138
  %147 = load i8*, i8** %8, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 6
  store i8* %147, i8** %149, align 8
  br label %220

150:                                              ; preds = %134
  %151 = load i8*, i8** %5, align 8
  %152 = call i32 @strncmpiW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @COMM_BuildNewCommDCB.octsW, i64 0, i64 0), i8* %151, i32 5)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %150
  %155 = load i8*, i8** %5, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 5
  %157 = ptrtoint i8* %156 to i32
  %158 = call i8* @COMM_ParseOnOff(i32 %157, i8** %8)
  store i8* %158, i8** %5, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %154
  %161 = load i64, i64* @FALSE, align 8
  store i64 %161, i64* %4, align 8
  br label %261

162:                                              ; preds = %154
  %163 = load i8*, i8** %8, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 5
  store i8* %163, i8** %165, align 8
  br label %219

166:                                              ; preds = %150
  %167 = load i8*, i8** %5, align 8
  %168 = call i32 @strncmpiW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @COMM_BuildNewCommDCB.dtrW, i64 0, i64 0), i8* %167, i32 4)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %182, label %170

170:                                              ; preds = %166
  %171 = load i8*, i8** %5, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 4
  %173 = ptrtoint i8* %172 to i32
  %174 = call i8* @COMM_ParseOnOff(i32 %173, i8** %8)
  store i8* %174, i8** %5, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %170
  %177 = load i64, i64* @FALSE, align 8
  store i64 %177, i64* %4, align 8
  br label %261

178:                                              ; preds = %170
  %179 = load i8*, i8** %8, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 4
  store i8* %179, i8** %181, align 8
  br label %218

182:                                              ; preds = %166
  %183 = load i8*, i8** %5, align 8
  %184 = call i32 @strncmpiW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @COMM_BuildNewCommDCB.rtsW, i64 0, i64 0), i8* %183, i32 4)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %182
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 4
  %189 = ptrtoint i8* %188 to i32
  %190 = call i8* @COMM_ParseOnOff(i32 %189, i8** %8)
  store i8* %190, i8** %5, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %186
  %193 = load i64, i64* @FALSE, align 8
  store i64 %193, i64* %4, align 8
  br label %261

194:                                              ; preds = %186
  %195 = load i8*, i8** %8, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 3
  store i8* %195, i8** %197, align 8
  br label %217

198:                                              ; preds = %182
  %199 = load i8*, i8** %5, align 8
  %200 = call i32 @strncmpiW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @COMM_BuildNewCommDCB.idsrW, i64 0, i64 0), i8* %199, i32 5)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %214, label %202

202:                                              ; preds = %198
  %203 = load i8*, i8** %5, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 5
  %205 = ptrtoint i8* %204 to i32
  %206 = call i8* @COMM_ParseOnOff(i32 %205, i8** %8)
  store i8* %206, i8** %5, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %210, label %208

208:                                              ; preds = %202
  %209 = load i64, i64* @FALSE, align 8
  store i64 %209, i64* %4, align 8
  br label %261

210:                                              ; preds = %202
  %211 = load i8*, i8** %8, align 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  store i8* %211, i8** %213, align 8
  br label %216

214:                                              ; preds = %198
  %215 = load i64, i64* @FALSE, align 8
  store i64 %215, i64* %4, align 8
  br label %261

216:                                              ; preds = %210
  br label %217

217:                                              ; preds = %216, %194
  br label %218

218:                                              ; preds = %217, %178
  br label %219

219:                                              ; preds = %218, %162
  br label %220

220:                                              ; preds = %219, %146
  br label %221

221:                                              ; preds = %220, %127
  br label %222

222:                                              ; preds = %221, %100
  br label %223

223:                                              ; preds = %222, %87
  br label %224

224:                                              ; preds = %223, %71
  br label %225

225:                                              ; preds = %224, %56
  br label %226

226:                                              ; preds = %225, %41
  %227 = load i8*, i8** %5, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = load i8*, i8** %5, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp ne i32 %234, 32
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = load i64, i64* @FALSE, align 8
  store i64 %237, i64* %4, align 8
  br label %261

238:                                              ; preds = %231, %226
  br label %13

239:                                              ; preds = %13
  %240 = load i64, i64* %10, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %259, label %242

242:                                              ; preds = %239
  %243 = load i64, i64* %9, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %242
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %248, 110
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i32, i32* @TWOSTOPBITS, align 4
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  br label %258

254:                                              ; preds = %245, %242
  %255 = load i32, i32* @ONESTOPBIT, align 4
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %254, %250
  br label %259

259:                                              ; preds = %258, %239
  %260 = load i64, i64* @TRUE, align 8
  store i64 %260, i64* %4, align 8
  br label %261

261:                                              ; preds = %259, %236, %214, %208, %192, %176, %160, %144, %125, %98, %85, %69, %54, %39
  %262 = load i64, i64* %4, align 8
  ret i64 %262
}

declare dso_local i32 @strncmpiW(i8*, i8*, i32) #1

declare dso_local i8* @COMM_ParseNumber(i32, i32*) #1

declare dso_local i8* @COMM_ParseParity(i32, i32*) #1

declare dso_local i8* @COMM_ParseByteSize(i32, i32*) #1

declare dso_local i8* @COMM_ParseStopBits(i32, i32*) #1

declare dso_local i8* @COMM_ParseOnOff(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
