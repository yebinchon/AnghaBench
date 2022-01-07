; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_sc.c_ScControl.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_sc.c_ScControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"Remote service control is not yet implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"queryex\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@SERVICE_CONTROL_PAUSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"interrogate\00", align 1
@SERVICE_CONTROL_INTERROGATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@SERVICE_CONTROL_STOP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@SERVICE_CONTROL_CONTINUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"paramchange\00", align 1
@SERVICE_CONTROL_PARAMCHANGE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"netbindadd\00", align 1
@SERVICE_CONTROL_NETBINDADD = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"netbindremove\00", align 1
@SERVICE_CONTROL_NETBINDREMOVE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"netbindenable\00", align 1
@SERVICE_CONTROL_NETBINDENABLE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"netbinddisable\00", align 1
@SERVICE_CONTROL_NETBINDDISABLE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"sdshow\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"sdset\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"qc\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"qdescription\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"qfailure\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"GetDisplayName\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"GetKeyName\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"EnumDepend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**, i32)* @ScControl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ScControl(i32* %0, i32* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = call i32 @_T(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @_tprintf(i32 %17)
  store i32 2, i32* %5, align 4
  br label %497

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @lstrcmpi(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32**, i32*** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 @Query(i32** %25, i32 %26, i32 %27)
  br label %496

29:                                               ; preds = %19
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @lstrcmpi(i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32**, i32*** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @Query(i32** %35, i32 %36, i32 %37)
  br label %495

39:                                               ; preds = %29
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 @lstrcmpi(i32* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32**, i32*** %8, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i32 1
  store i32** %49, i32*** %8, align 8
  %50 = load i32*, i32** %48, align 8
  store i32* %50, i32** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %9, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32**, i32*** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @Start(i32* %53, i32** %54, i32 %55)
  br label %59

57:                                               ; preds = %44
  %58 = call i32 (...) @StartUsage()
  br label %59

59:                                               ; preds = %57, %47
  br label %494

60:                                               ; preds = %39
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i32 @lstrcmpi(i32* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32**, i32*** %8, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i32 1
  store i32** %70, i32*** %8, align 8
  %71 = load i32*, i32** %69, align 8
  store i32* %71, i32** %10, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* @SERVICE_CONTROL_PAUSE, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32**, i32*** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @Control(i32 %74, i32* %75, i32** %76, i32 %77)
  br label %81

79:                                               ; preds = %65
  %80 = call i32 (...) @PauseUsage()
  br label %81

81:                                               ; preds = %79, %68
  br label %493

82:                                               ; preds = %60
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %85 = call i32 @lstrcmpi(i32* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i32**, i32*** %8, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i32 1
  store i32** %92, i32*** %8, align 8
  %93 = load i32*, i32** %91, align 8
  store i32* %93, i32** %10, align 8
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* @SERVICE_CONTROL_INTERROGATE, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = load i32**, i32*** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @Control(i32 %96, i32* %97, i32** %98, i32 %99)
  br label %103

101:                                              ; preds = %87
  %102 = call i32 (...) @InterrogateUsage()
  br label %103

103:                                              ; preds = %101, %90
  br label %492

104:                                              ; preds = %82
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %107 = call i32 @lstrcmpi(i32* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %126, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load i32**, i32*** %8, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i32 1
  store i32** %114, i32*** %8, align 8
  %115 = load i32*, i32** %113, align 8
  store i32* %115, i32** %10, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* @SERVICE_CONTROL_STOP, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = load i32**, i32*** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @Control(i32 %118, i32* %119, i32** %120, i32 %121)
  br label %125

123:                                              ; preds = %109
  %124 = call i32 (...) @StopUsage()
  br label %125

125:                                              ; preds = %123, %112
  br label %491

126:                                              ; preds = %104
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %129 = call i32 @lstrcmpi(i32* %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* %9, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %131
  %135 = load i32**, i32*** %8, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i32 1
  store i32** %136, i32*** %8, align 8
  %137 = load i32*, i32** %135, align 8
  store i32* %137, i32** %10, align 8
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* @SERVICE_CONTROL_CONTINUE, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = load i32**, i32*** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @Control(i32 %140, i32* %141, i32** %142, i32 %143)
  br label %147

145:                                              ; preds = %131
  %146 = call i32 (...) @ContinueUsage()
  br label %147

147:                                              ; preds = %145, %134
  br label %490

148:                                              ; preds = %126
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %151 = call i32 @lstrcmpi(i32* %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %167, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %9, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %153
  %157 = load i32**, i32*** %8, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i32 1
  store i32** %158, i32*** %8, align 8
  %159 = load i32*, i32** %157, align 8
  store i32* %159, i32** %10, align 8
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %9, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = call i32 @Delete(i32* %162)
  br label %166

164:                                              ; preds = %153
  %165 = call i32 (...) @DeleteUsage()
  br label %166

166:                                              ; preds = %164, %156
  br label %489

167:                                              ; preds = %148
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %170 = call i32 @lstrcmpi(i32* %168, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %167
  %173 = load i32**, i32*** %8, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @Create(i32** %173, i32 %174)
  br label %488

176:                                              ; preds = %167
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %179 = call i32 @lstrcmpi(i32* %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %269, label %181

181:                                              ; preds = %176
  store i32 0, i32* %11, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp sgt i32 %182, 1
  br i1 %183, label %184, label %266

184:                                              ; preds = %181
  %185 = load i32**, i32*** %8, align 8
  %186 = getelementptr inbounds i32*, i32** %185, i32 1
  store i32** %186, i32*** %8, align 8
  %187 = load i32*, i32** %185, align 8
  store i32* %187, i32** %10, align 8
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %9, align 4
  %190 = load i32**, i32*** %8, align 8
  %191 = getelementptr inbounds i32*, i32** %190, i64 0
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %194 = call i32 @lstrcmpi(i32* %192, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %184
  %197 = load i32, i32* @SERVICE_CONTROL_PARAMCHANGE, align 4
  store i32 %197, i32* %11, align 4
  br label %250

198:                                              ; preds = %184
  %199 = load i32**, i32*** %8, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i64 0
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %203 = call i32 @lstrcmpi(i32* %201, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %198
  %206 = load i32, i32* @SERVICE_CONTROL_NETBINDADD, align 4
  store i32 %206, i32* %11, align 4
  br label %249

207:                                              ; preds = %198
  %208 = load i32**, i32*** %8, align 8
  %209 = getelementptr inbounds i32*, i32** %208, i64 0
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %212 = call i32 @lstrcmpi(i32* %210, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %207
  %215 = load i32, i32* @SERVICE_CONTROL_NETBINDREMOVE, align 4
  store i32 %215, i32* %11, align 4
  br label %248

216:                                              ; preds = %207
  %217 = load i32**, i32*** %8, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 0
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %221 = call i32 @lstrcmpi(i32* %219, i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %216
  %224 = load i32, i32* @SERVICE_CONTROL_NETBINDENABLE, align 4
  store i32 %224, i32* %11, align 4
  br label %247

225:                                              ; preds = %216
  %226 = load i32**, i32*** %8, align 8
  %227 = getelementptr inbounds i32*, i32** %226, i64 0
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %230 = call i32 @lstrcmpi(i32* %228, i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %225
  %233 = load i32, i32* @SERVICE_CONTROL_NETBINDDISABLE, align 4
  store i32 %233, i32* %11, align 4
  br label %246

234:                                              ; preds = %225
  %235 = load i32**, i32*** %8, align 8
  %236 = getelementptr inbounds i32*, i32** %235, i64 0
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @_ttoi(i32* %237)
  store i32 %238, i32* %11, align 4
  %239 = load i32, i32* %11, align 4
  %240 = icmp slt i32 %239, 128
  br i1 %240, label %244, label %241

241:                                              ; preds = %234
  %242 = load i32, i32* %11, align 4
  %243 = icmp sgt i32 %242, 255
  br i1 %243, label %244, label %245

244:                                              ; preds = %241, %234
  store i32 0, i32* %11, align 4
  br label %245

245:                                              ; preds = %244, %241
  br label %246

246:                                              ; preds = %245, %232
  br label %247

247:                                              ; preds = %246, %223
  br label %248

248:                                              ; preds = %247, %214
  br label %249

249:                                              ; preds = %248, %205
  br label %250

250:                                              ; preds = %249, %196
  %251 = load i32**, i32*** %8, align 8
  %252 = getelementptr inbounds i32*, i32** %251, i32 1
  store i32** %252, i32*** %8, align 8
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %9, align 4
  %255 = load i32, i32* %11, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %250
  %258 = load i32, i32* %11, align 4
  %259 = load i32*, i32** %10, align 8
  %260 = load i32**, i32*** %8, align 8
  %261 = load i32, i32* %9, align 4
  %262 = call i32 @Control(i32 %258, i32* %259, i32** %260, i32 %261)
  br label %265

263:                                              ; preds = %250
  %264 = call i32 (...) @ControlUsage()
  br label %265

265:                                              ; preds = %263, %257
  br label %268

266:                                              ; preds = %181
  %267 = call i32 (...) @ControlUsage()
  br label %268

268:                                              ; preds = %266, %265
  br label %487

269:                                              ; preds = %176
  %270 = load i32*, i32** %7, align 8
  %271 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %272 = call i32 @lstrcmpi(i32* %270, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %288, label %274

274:                                              ; preds = %269
  %275 = load i32, i32* %9, align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %274
  %278 = load i32**, i32*** %8, align 8
  %279 = getelementptr inbounds i32*, i32** %278, i32 1
  store i32** %279, i32*** %8, align 8
  %280 = load i32*, i32** %278, align 8
  store i32* %280, i32** %10, align 8
  %281 = load i32, i32* %9, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %9, align 4
  %283 = load i32*, i32** %10, align 8
  %284 = call i32 @SdShow(i32* %283)
  br label %287

285:                                              ; preds = %274
  %286 = call i32 (...) @SdShowUsage()
  br label %287

287:                                              ; preds = %285, %277
  br label %486

288:                                              ; preds = %269
  %289 = load i32*, i32** %7, align 8
  %290 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %291 = call i32 @lstrcmpi(i32* %289, i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %313, label %293

293:                                              ; preds = %288
  %294 = load i32, i32* %9, align 4
  %295 = icmp sgt i32 %294, 1
  br i1 %295, label %296, label %310

296:                                              ; preds = %293
  %297 = load i32**, i32*** %8, align 8
  %298 = getelementptr inbounds i32*, i32** %297, i32 1
  store i32** %298, i32*** %8, align 8
  %299 = load i32*, i32** %297, align 8
  store i32* %299, i32** %10, align 8
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %300, -1
  store i32 %301, i32* %9, align 4
  %302 = load i32**, i32*** %8, align 8
  %303 = getelementptr inbounds i32*, i32** %302, i32 1
  store i32** %303, i32*** %8, align 8
  %304 = load i32*, i32** %302, align 8
  store i32* %304, i32** %12, align 8
  %305 = load i32, i32* %9, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %9, align 4
  %307 = load i32*, i32** %10, align 8
  %308 = load i32*, i32** %12, align 8
  %309 = call i32 @SdSet(i32* %307, i32* %308)
  br label %312

310:                                              ; preds = %293
  %311 = call i32 (...) @SdSetUsage()
  br label %312

312:                                              ; preds = %310, %296
  br label %485

313:                                              ; preds = %288
  %314 = load i32*, i32** %7, align 8
  %315 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %316 = call i32 @lstrcmpi(i32* %314, i32 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %332, label %318

318:                                              ; preds = %313
  %319 = load i32, i32* %9, align 4
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %318
  %322 = load i32**, i32*** %8, align 8
  %323 = getelementptr inbounds i32*, i32** %322, i32 1
  store i32** %323, i32*** %8, align 8
  %324 = load i32*, i32** %322, align 8
  store i32* %324, i32** %10, align 8
  %325 = load i32, i32* %9, align 4
  %326 = add nsw i32 %325, -1
  store i32 %326, i32* %9, align 4
  %327 = load i32*, i32** %10, align 8
  %328 = call i32 @QueryConfig(i32* %327)
  br label %331

329:                                              ; preds = %318
  %330 = call i32 (...) @QueryConfigUsage()
  br label %331

331:                                              ; preds = %329, %321
  br label %484

332:                                              ; preds = %313
  %333 = load i32*, i32** %7, align 8
  %334 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %335 = call i32 @lstrcmpi(i32* %333, i32 %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %351, label %337

337:                                              ; preds = %332
  %338 = load i32, i32* %9, align 4
  %339 = icmp sgt i32 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %337
  %341 = load i32**, i32*** %8, align 8
  %342 = getelementptr inbounds i32*, i32** %341, i32 1
  store i32** %342, i32*** %8, align 8
  %343 = load i32*, i32** %341, align 8
  store i32* %343, i32** %10, align 8
  %344 = load i32, i32* %9, align 4
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %9, align 4
  %346 = load i32*, i32** %10, align 8
  %347 = call i32 @QueryDescription(i32* %346)
  br label %350

348:                                              ; preds = %337
  %349 = call i32 (...) @QueryDescriptionUsage()
  br label %350

350:                                              ; preds = %348, %340
  br label %483

351:                                              ; preds = %332
  %352 = load i32*, i32** %7, align 8
  %353 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %354 = call i32 @lstrcmpi(i32* %352, i32 %353)
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %370, label %356

356:                                              ; preds = %351
  %357 = load i32, i32* %9, align 4
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %367

359:                                              ; preds = %356
  %360 = load i32**, i32*** %8, align 8
  %361 = getelementptr inbounds i32*, i32** %360, i32 1
  store i32** %361, i32*** %8, align 8
  %362 = load i32*, i32** %360, align 8
  store i32* %362, i32** %10, align 8
  %363 = load i32, i32* %9, align 4
  %364 = add nsw i32 %363, -1
  store i32 %364, i32* %9, align 4
  %365 = load i32*, i32** %10, align 8
  %366 = call i32 @QueryFailure(i32* %365)
  br label %369

367:                                              ; preds = %356
  %368 = call i32 (...) @QueryFailureUsage()
  br label %369

369:                                              ; preds = %367, %359
  br label %482

370:                                              ; preds = %351
  %371 = load i32*, i32** %7, align 8
  %372 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %373 = call i32 @lstrcmpi(i32* %371, i32 %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %399, label %375

375:                                              ; preds = %370
  store i32* null, i32** %13, align 8
  %376 = load i32, i32* %9, align 4
  %377 = icmp sgt i32 %376, 0
  br i1 %377, label %378, label %396

378:                                              ; preds = %375
  %379 = load i32**, i32*** %8, align 8
  %380 = getelementptr inbounds i32*, i32** %379, i32 1
  store i32** %380, i32*** %8, align 8
  %381 = load i32*, i32** %379, align 8
  store i32* %381, i32** %10, align 8
  %382 = load i32, i32* %9, align 4
  %383 = add nsw i32 %382, -1
  store i32 %383, i32* %9, align 4
  %384 = load i32, i32* %9, align 4
  %385 = icmp sgt i32 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %378
  %387 = load i32**, i32*** %8, align 8
  %388 = getelementptr inbounds i32*, i32** %387, i32 1
  store i32** %388, i32*** %8, align 8
  %389 = load i32*, i32** %387, align 8
  store i32* %389, i32** %13, align 8
  %390 = load i32, i32* %9, align 4
  %391 = add nsw i32 %390, -1
  store i32 %391, i32* %9, align 4
  br label %392

392:                                              ; preds = %386, %378
  %393 = load i32*, i32** %10, align 8
  %394 = load i32*, i32** %13, align 8
  %395 = call i32 @SetDescription(i32* %393, i32* %394)
  br label %398

396:                                              ; preds = %375
  %397 = call i32 (...) @SetDescriptionUsage()
  br label %398

398:                                              ; preds = %396, %392
  br label %481

399:                                              ; preds = %370
  %400 = load i32*, i32** %7, align 8
  %401 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  %402 = call i32 @lstrcmpi(i32* %400, i32 %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %408, label %404

404:                                              ; preds = %399
  %405 = load i32**, i32*** %8, align 8
  %406 = load i32, i32* %9, align 4
  %407 = call i32 @SetConfig(i32** %405, i32 %406)
  br label %480

408:                                              ; preds = %399
  %409 = load i32*, i32** %7, align 8
  %410 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %411 = call i32 @lstrcmpi(i32* %409, i32 %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %417, label %413

413:                                              ; preds = %408
  %414 = load i32**, i32*** %8, align 8
  %415 = load i32, i32* %9, align 4
  %416 = call i32 @SetFailure(i32** %414, i32 %415)
  br label %479

417:                                              ; preds = %408
  %418 = load i32*, i32** %7, align 8
  %419 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %420 = call i32 @lstrcmpi(i32* %418, i32 %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %436, label %422

422:                                              ; preds = %417
  %423 = load i32, i32* %9, align 4
  %424 = icmp sgt i32 %423, 0
  br i1 %424, label %425, label %433

425:                                              ; preds = %422
  %426 = load i32**, i32*** %8, align 8
  %427 = getelementptr inbounds i32*, i32** %426, i32 1
  store i32** %427, i32*** %8, align 8
  %428 = load i32*, i32** %426, align 8
  store i32* %428, i32** %10, align 8
  %429 = load i32, i32* %9, align 4
  %430 = add nsw i32 %429, -1
  store i32 %430, i32* %9, align 4
  %431 = load i32*, i32** %10, align 8
  %432 = call i32 @GetDisplayName(i32* %431)
  br label %435

433:                                              ; preds = %422
  %434 = call i32 (...) @GetDisplayNameUsage()
  br label %435

435:                                              ; preds = %433, %425
  br label %478

436:                                              ; preds = %417
  %437 = load i32*, i32** %7, align 8
  %438 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  %439 = call i32 @lstrcmpi(i32* %437, i32 %438)
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %455, label %441

441:                                              ; preds = %436
  %442 = load i32, i32* %9, align 4
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %452

444:                                              ; preds = %441
  %445 = load i32**, i32*** %8, align 8
  %446 = getelementptr inbounds i32*, i32** %445, i32 1
  store i32** %446, i32*** %8, align 8
  %447 = load i32*, i32** %445, align 8
  store i32* %447, i32** %10, align 8
  %448 = load i32, i32* %9, align 4
  %449 = add nsw i32 %448, -1
  store i32 %449, i32* %9, align 4
  %450 = load i32*, i32** %10, align 8
  %451 = call i32 @GetKeyName(i32* %450)
  br label %454

452:                                              ; preds = %441
  %453 = call i32 (...) @GetKeyNameUsage()
  br label %454

454:                                              ; preds = %452, %444
  br label %477

455:                                              ; preds = %436
  %456 = load i32*, i32** %7, align 8
  %457 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  %458 = call i32 @lstrcmpi(i32* %456, i32 %457)
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %474, label %460

460:                                              ; preds = %455
  %461 = load i32, i32* %9, align 4
  %462 = icmp sgt i32 %461, 0
  br i1 %462, label %463, label %471

463:                                              ; preds = %460
  %464 = load i32**, i32*** %8, align 8
  %465 = getelementptr inbounds i32*, i32** %464, i32 1
  store i32** %465, i32*** %8, align 8
  %466 = load i32*, i32** %464, align 8
  store i32* %466, i32** %10, align 8
  %467 = load i32, i32* %9, align 4
  %468 = add nsw i32 %467, -1
  store i32 %468, i32* %9, align 4
  %469 = load i32*, i32** %10, align 8
  %470 = call i32 @EnumDepend(i32* %469)
  br label %473

471:                                              ; preds = %460
  %472 = call i32 (...) @EnumDependUsage()
  br label %473

473:                                              ; preds = %471, %463
  br label %476

474:                                              ; preds = %455
  %475 = call i32 (...) @MainUsage()
  br label %476

476:                                              ; preds = %474, %473
  br label %477

477:                                              ; preds = %476, %454
  br label %478

478:                                              ; preds = %477, %435
  br label %479

479:                                              ; preds = %478, %413
  br label %480

480:                                              ; preds = %479, %404
  br label %481

481:                                              ; preds = %480, %398
  br label %482

482:                                              ; preds = %481, %369
  br label %483

483:                                              ; preds = %482, %350
  br label %484

484:                                              ; preds = %483, %331
  br label %485

485:                                              ; preds = %484, %312
  br label %486

486:                                              ; preds = %485, %287
  br label %487

487:                                              ; preds = %486, %268
  br label %488

488:                                              ; preds = %487, %172
  br label %489

489:                                              ; preds = %488, %166
  br label %490

490:                                              ; preds = %489, %147
  br label %491

491:                                              ; preds = %490, %125
  br label %492

492:                                              ; preds = %491, %103
  br label %493

493:                                              ; preds = %492, %81
  br label %494

494:                                              ; preds = %493, %59
  br label %495

495:                                              ; preds = %494, %34
  br label %496

496:                                              ; preds = %495, %24
  store i32 0, i32* %5, align 4
  br label %497

497:                                              ; preds = %496, %16
  %498 = load i32, i32* %5, align 4
  ret i32 %498
}

declare dso_local i32 @_tprintf(i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @lstrcmpi(i32*, i32) #1

declare dso_local i32 @Query(i32**, i32, i32) #1

declare dso_local i32 @Start(i32*, i32**, i32) #1

declare dso_local i32 @StartUsage(...) #1

declare dso_local i32 @Control(i32, i32*, i32**, i32) #1

declare dso_local i32 @PauseUsage(...) #1

declare dso_local i32 @InterrogateUsage(...) #1

declare dso_local i32 @StopUsage(...) #1

declare dso_local i32 @ContinueUsage(...) #1

declare dso_local i32 @Delete(i32*) #1

declare dso_local i32 @DeleteUsage(...) #1

declare dso_local i32 @Create(i32**, i32) #1

declare dso_local i32 @_ttoi(i32*) #1

declare dso_local i32 @ControlUsage(...) #1

declare dso_local i32 @SdShow(i32*) #1

declare dso_local i32 @SdShowUsage(...) #1

declare dso_local i32 @SdSet(i32*, i32*) #1

declare dso_local i32 @SdSetUsage(...) #1

declare dso_local i32 @QueryConfig(i32*) #1

declare dso_local i32 @QueryConfigUsage(...) #1

declare dso_local i32 @QueryDescription(i32*) #1

declare dso_local i32 @QueryDescriptionUsage(...) #1

declare dso_local i32 @QueryFailure(i32*) #1

declare dso_local i32 @QueryFailureUsage(...) #1

declare dso_local i32 @SetDescription(i32*, i32*) #1

declare dso_local i32 @SetDescriptionUsage(...) #1

declare dso_local i32 @SetConfig(i32**, i32) #1

declare dso_local i32 @SetFailure(i32**, i32) #1

declare dso_local i32 @GetDisplayName(i32*) #1

declare dso_local i32 @GetDisplayNameUsage(...) #1

declare dso_local i32 @GetKeyName(i32*) #1

declare dso_local i32 @GetKeyNameUsage(...) #1

declare dso_local i32 @EnumDepend(i32*) #1

declare dso_local i32 @EnumDependUsage(...) #1

declare dso_local i32 @MainUsage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
