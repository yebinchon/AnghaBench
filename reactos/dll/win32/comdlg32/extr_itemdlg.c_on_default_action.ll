; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_on_default_action.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_on_default_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i8*, i32*, i32, i32, i32, %struct.TYPE_7__*, i64, i64 }
%struct.TYPE_7__ = type { i32 }

@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to get pidl for current directory.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Acting on %d file(s).\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@FOS_NOVALIDATE = common dso_local global i32 0, align 4
@FOS_FILEMUSTEXIST = common dso_local global i32 0, align 4
@ITEMDLG_TYPE_SAVE = common dso_local global i64 0, align 8
@on_default_action.dotW = internal constant [2 x i8] c".\00", align 1
@IDS_FILENOTEXISTING = common dso_local global i32 0, align 4
@FOS_PICKFOLDERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Filtering not implemented.\0A\00", align 1
@SBSP_DEFBROWSER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to browse to directory: %08x\0A\00", align 1
@SIATTRIBFLAGS_AND = common dso_local global i32 0, align 4
@SFGAO_FOLDER = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@COMDLG32_hInstance = common dso_local global i32 0, align 4
@IDS_INVALID_FOLDERNAME = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONEXCLAMATION = common dso_local global i32 0, align 4
@FOS_OVERWRITEPROMPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @on_default_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_default_action(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca [64 x i8], align 16
  %26 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %27 = load i32, i32* @E_FAIL, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = call i32 @get_file_name(%struct.TYPE_8__* %28, i32** %10)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @COMDLG32_SplitFileNames(i32* %33, i32 %34, i32** %9, i32* %17)
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @CoTaskMemFree(i32* %36)
  br label %38

38:                                               ; preds = %32, %1
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @E_FAIL, align 4
  store i32 %42, i32* %2, align 4
  br label %440

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 10
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32 @SHGetIDListFromObject(i32* %47, i32* %7)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i64 @FAILED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %54 = call i32 (...) @GetProcessHeap()
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @HeapFree(i32 %54, i32 0, i32* %55)
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %2, align 4
  br label %440

58:                                               ; preds = %43
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32* @HeapAlloc(i32 %61, i32 0, i32 %65)
  store i32* %66, i32** %6, align 8
  store i32 129, i32* %14, align 4
  %67 = load i32*, i32** %9, align 8
  store i32* %67, i32** %8, align 8
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %243, %58
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, 129
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi i1 [ false, %68 ], [ %74, %72 ]
  br i1 %76, label %77, label %246

77:                                               ; preds = %75
  %78 = load i32, i32* @MAX_PATH, align 4
  %79 = zext i32 %78 to i64
  %80 = call i8* @llvm.stacksave()
  store i8* %80, i8** %18, align 8
  %81 = alloca i8, i64 %79, align 16
  store i64 %79, i64* %19, align 8
  store i32* null, i32** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @COMDLG32_GetCanonicalPath(i32 %82, i32* %83, i8* %81)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @FOS_NOVALIDATE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %77
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FOS_FILEMUSTEXIST, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  store i32 129, i32* %14, align 4
  br label %100

99:                                               ; preds = %91, %77
  store i32 130, i32* %14, align 4
  br label %100

100:                                              ; preds = %99, %98
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @FOS_FILEMUSTEXIST, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @ITEMDLG_TYPE_SAVE, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @FILEDLG95_ValidatePathAction(i8* %81, i32** %4, i32 %103, i32 %109, i32 %115, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp eq i32 %118, 129
  br i1 %119, label %120, label %219

120:                                              ; preds = %100
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ITEMDLG_TYPE_SAVE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %173

126:                                              ; preds = %120
  %127 = load i32, i32* @MAX_PATH, align 4
  %128 = zext i32 %127 to i64
  %129 = call i8* @llvm.stacksave()
  store i8* %129, i8** %20, align 8
  %130 = alloca i8, i64 %128, align 16
  store i64 %128, i64* %21, align 8
  store i8* null, i8** %22, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 9
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %126
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @get_first_ext_from_spec(i8* %130, i32 %144)
  store i8* %145, i8** %22, align 8
  br label %158

146:                                              ; preds = %126
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = call i32 @lstrcpyW(i8* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @on_default_action.dotW, i64 0, i64 0))
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @lstrcatW(i8* %130, i8* %155)
  store i8* %130, i8** %22, align 8
  br label %157

157:                                              ; preds = %151, %146
  br label %158

158:                                              ; preds = %157, %135
  %159 = load i8*, i8** %22, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = call i8* @PathFindExtensionW(i8* %81)
  store i8* %162, i8** %23, align 8
  %163 = load i8*, i8** %23, align 8
  %164 = load i8*, i8** %22, align 8
  %165 = call i64 @lstrcmpW(i8* %163, i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load i8*, i8** %22, align 8
  %169 = call i32 @lstrcatW(i8* %81, i8* %168)
  br label %170

170:                                              ; preds = %167, %161
  br label %171

171:                                              ; preds = %170, %158
  %172 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %172)
  br label %218

173:                                              ; preds = %120
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @FOS_NOVALIDATE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %217, label %180

180:                                              ; preds = %173
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @FOS_FILEMUSTEXIST, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %217

187:                                              ; preds = %180
  %188 = call i32 @PathFileExistsW(i8* %81)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %217, label %190

190:                                              ; preds = %187
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 3
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  %196 = call i32 @lstrcatW(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @on_default_action.dotW, i64 0, i64 0))
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 3
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @lstrcatW(i8* %81, i8* %199)
  %201 = call i32 @PathFileExistsW(i8* %81)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %195
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @IDS_FILENOTEXISTING, align 4
  %208 = call i32 @FILEDLG95_OnOpenMessage(i32 %206, i32 0, i32 %207)
  store i32 130, i32* %14, align 4
  br label %209

209:                                              ; preds = %203, %195
  br label %216

210:                                              ; preds = %190
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @IDS_FILENOTEXISTING, align 4
  %215 = call i32 @FILEDLG95_OnOpenMessage(i32 %213, i32 0, i32 %214)
  store i32 130, i32* %14, align 4
  br label %216

216:                                              ; preds = %210, %209
  br label %217

217:                                              ; preds = %216, %187, %180, %173
  br label %218

218:                                              ; preds = %217, %171
  br label %219

219:                                              ; preds = %218, %100
  %220 = call i32 @COMDLG32_SHSimpleIDListFromPathAW(i8* %81)
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %220, i32* %224, align 4
  %225 = load i32*, i32** %4, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %233

227:                                              ; preds = %219
  %228 = load i32, i32* %14, align 4
  %229 = icmp eq i32 %228, 130
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i32*, i32** %4, align 8
  %232 = call i32 @IShellFolder_Release(i32* %231)
  br label %233

233:                                              ; preds = %230, %227, %219
  %234 = load i32*, i32** %8, align 8
  %235 = call i64 @lstrlenW(i32* %234)
  %236 = trunc i64 %235 to i8
  %237 = sext i8 %236 to i32
  %238 = add nsw i32 %237, 1
  %239 = load i32*, i32** %8, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %8, align 8
  %242 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %242)
  br label %243

243:                                              ; preds = %233
  %244 = load i32, i32* %13, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %13, align 4
  br label %68

246:                                              ; preds = %75
  %247 = call i32 (...) @GetProcessHeap()
  %248 = load i32*, i32** %9, align 8
  %249 = call i32 @HeapFree(i32 %247, i32 0, i32* %248)
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @ILFree(i32 %250)
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @FOS_PICKFOLDERS, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %246
  %259 = load i32, i32* %14, align 4
  %260 = icmp eq i32 %259, 130
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  store i32 129, i32* %14, align 4
  br label %262

262:                                              ; preds = %261, %258, %246
  %263 = load i32, i32* %14, align 4
  switch i32 %263, label %418 [
    i32 128, label %264
    i32 130, label %266
    i32 129, label %282
  ]

264:                                              ; preds = %262
  %265 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %420

266:                                              ; preds = %262
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 8
  %270 = load i32*, i32** %4, align 8
  %271 = load i32, i32* @SBSP_DEFBROWSER, align 4
  %272 = call i32 @IExplorerBrowser_BrowseToObject(i32 %269, i32* %270, i32 %271)
  store i32 %272, i32* %15, align 4
  %273 = load i32, i32* %15, align 4
  %274 = call i64 @FAILED(i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %266
  %277 = load i32, i32* %15, align 4
  %278 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %277)
  br label %279

279:                                              ; preds = %276, %266
  %280 = load i32*, i32** %4, align 8
  %281 = call i32 @IShellFolder_Release(i32* %280)
  br label %420

282:                                              ; preds = %262
  %283 = call i32 @SHGetDesktopFolder(i32** %5)
  store i32 %283, i32* %15, align 4
  %284 = load i32, i32* %15, align 4
  %285 = call i32 @SUCCEEDED(i32 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %417

287:                                              ; preds = %282
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 4
  %290 = load i32*, i32** %289, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %299

292:                                              ; preds = %287
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 4
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @IShellItemArray_Release(i32* %295)
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 4
  store i32* null, i32** %298, align 8
  br label %299

299:                                              ; preds = %292, %287
  %300 = load i32*, i32** %5, align 8
  %301 = load i32, i32* %11, align 4
  %302 = load i32*, i32** %6, align 8
  %303 = ptrtoint i32* %302 to i32
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 4
  %306 = call i32 @SHCreateShellItemArray(i32* null, i32* %300, i32 %301, i32 %303, i32** %305)
  store i32 %306, i32* %15, align 4
  %307 = load i32*, i32** %5, align 8
  %308 = call i32 @IShellFolder_Release(i32* %307)
  %309 = load i32, i32* %15, align 4
  %310 = call i64 @FAILED(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %299
  br label %420

313:                                              ; preds = %299
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @FOS_PICKFOLDERS, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %355

320:                                              ; preds = %313
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 4
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* @SIATTRIBFLAGS_AND, align 4
  %325 = load i32, i32* @SFGAO_FOLDER, align 4
  %326 = call i32 @IShellItemArray_GetAttributes(i32* %323, i32 %324, i32 %325, i32* %24)
  store i32 %326, i32* %15, align 4
  %327 = load i32, i32* %15, align 4
  %328 = load i32, i32* @S_OK, align 4
  %329 = icmp ne i32 %327, %328
  br i1 %329, label %330, label %354

330:                                              ; preds = %320
  %331 = load i32, i32* @COMDLG32_hInstance, align 4
  %332 = load i32, i32* @IDS_INVALID_FOLDERNAME, align 4
  %333 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %334 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %335 = call i32 @ARRAY_SIZE(i8* %334)
  %336 = call i32 @LoadStringW(i32 %331, i32 %332, i8* %333, i32 %335)
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @MB_OK, align 4
  %345 = load i32, i32* @MB_ICONEXCLAMATION, align 4
  %346 = or i32 %344, %345
  %347 = call i32 @MessageBoxW(i32 %339, i8* %340, i32 %343, i32 %346)
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 4
  %350 = load i32*, i32** %349, align 8
  %351 = call i32 @IShellItemArray_Release(i32* %350)
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 4
  store i32* null, i32** %353, align 8
  br label %420

354:                                              ; preds = %320
  br label %355

355:                                              ; preds = %354, %313
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @FOS_OVERWRITEPROMPT, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %409

362:                                              ; preds = %355
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @ITEMDLG_TYPE_SAVE, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %409

368:                                              ; preds = %362
  store i32 0, i32* %13, align 4
  br label %369

369:                                              ; preds = %400, %368
  %370 = load i32, i32* %15, align 4
  %371 = call i32 @SUCCEEDED(i32 %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %369
  %374 = load i32, i32* %13, align 4
  %375 = load i32, i32* %11, align 4
  %376 = icmp slt i32 %374, %375
  br label %377

377:                                              ; preds = %373, %369
  %378 = phi i1 [ false, %369 ], [ %376, %373 ]
  br i1 %378, label %379, label %403

379:                                              ; preds = %377
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 4
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %13, align 4
  %384 = call i32 @IShellItemArray_GetItemAt(i32* %382, i32 %383, i32** %26)
  store i32 %384, i32* %15, align 4
  %385 = load i32, i32* %15, align 4
  %386 = call i32 @SUCCEEDED(i32 %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %399

388:                                              ; preds = %379
  %389 = load i32*, i32** %26, align 8
  %390 = call i32 @shell_item_exists(i32* %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %388
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %394 = load i32*, i32** %26, align 8
  %395 = call i32 @events_OnOverwrite(%struct.TYPE_8__* %393, i32* %394)
  store i32 %395, i32* %15, align 4
  br label %396

396:                                              ; preds = %392, %388
  %397 = load i32*, i32** %26, align 8
  %398 = call i32 @IShellItem_Release(i32* %397)
  br label %399

399:                                              ; preds = %396, %379
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %13, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %13, align 4
  br label %369

403:                                              ; preds = %377
  %404 = load i32, i32* %15, align 4
  %405 = call i64 @FAILED(i32 %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %403
  br label %420

408:                                              ; preds = %403
  br label %409

409:                                              ; preds = %408, %362, %355
  %410 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %411 = call i32 @events_OnFileOk(%struct.TYPE_8__* %410)
  %412 = load i32, i32* @S_OK, align 4
  %413 = icmp eq i32 %411, %412
  br i1 %413, label %414, label %416

414:                                              ; preds = %409
  %415 = load i32, i32* @S_OK, align 4
  store i32 %415, i32* %16, align 4
  br label %416

416:                                              ; preds = %414, %409
  br label %417

417:                                              ; preds = %416, %282
  br label %420

418:                                              ; preds = %262
  %419 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %420

420:                                              ; preds = %418, %417, %407, %330, %312, %279, %264
  store i32 0, i32* %13, align 4
  br label %421

421:                                              ; preds = %432, %420
  %422 = load i32, i32* %13, align 4
  %423 = load i32, i32* %11, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %435

425:                                              ; preds = %421
  %426 = load i32*, i32** %6, align 8
  %427 = load i32, i32* %13, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @ILFree(i32 %430)
  br label %432

432:                                              ; preds = %425
  %433 = load i32, i32* %13, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %13, align 4
  br label %421

435:                                              ; preds = %421
  %436 = call i32 (...) @GetProcessHeap()
  %437 = load i32*, i32** %6, align 8
  %438 = call i32 @HeapFree(i32 %436, i32 0, i32* %437)
  %439 = load i32, i32* %16, align 4
  store i32 %439, i32* %2, align 4
  br label %440

440:                                              ; preds = %435, %52, %41
  %441 = load i32, i32* %2, align 4
  ret i32 %441
}

declare dso_local i32 @get_file_name(%struct.TYPE_8__*, i32**) #1

declare dso_local i32 @COMDLG32_SplitFileNames(i32*, i32, i32**, i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @SHGetIDListFromObject(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @COMDLG32_GetCanonicalPath(i32, i32*, i8*) #1

declare dso_local i32 @FILEDLG95_ValidatePathAction(i8*, i32**, i32, i32, i32, i32) #1

declare dso_local i8* @get_first_ext_from_spec(i8*, i32) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i8* @PathFindExtensionW(i8*) #1

declare dso_local i64 @lstrcmpW(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @PathFileExistsW(i8*) #1

declare dso_local i32 @FILEDLG95_OnOpenMessage(i32, i32, i32) #1

declare dso_local i32 @COMDLG32_SHSimpleIDListFromPathAW(i8*) #1

declare dso_local i32 @IShellFolder_Release(i32*) #1

declare dso_local i64 @lstrlenW(i32*) #1

declare dso_local i32 @ILFree(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @IExplorerBrowser_BrowseToObject(i32, i32*, i32) #1

declare dso_local i32 @SHGetDesktopFolder(i32**) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @IShellItemArray_Release(i32*) #1

declare dso_local i32 @SHCreateShellItemArray(i32*, i32*, i32, i32, i32**) #1

declare dso_local i32 @IShellItemArray_GetAttributes(i32*, i32, i32, i32*) #1

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @MessageBoxW(i32, i8*, i32, i32) #1

declare dso_local i32 @IShellItemArray_GetItemAt(i32*, i32, i32**) #1

declare dso_local i32 @shell_item_exists(i32*) #1

declare dso_local i32 @events_OnOverwrite(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @IShellItem_Release(i32*) #1

declare dso_local i32 @events_OnFileOk(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
