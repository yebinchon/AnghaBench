; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_NCCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_NCCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i8, i32, i32, i32, %struct.TYPE_7__*, i64, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Creating edit control, style = %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@ES_COMBO = common dso_local global i32 0, align 4
@ID_CB_LISTBOX = common dso_local global i32 0, align 4
@WS_EX_RIGHT = common dso_local global i32 0, align 4
@ES_RIGHT = common dso_local global i32 0, align 4
@ES_NUMBER = common dso_local global i32 0, align 4
@ES_LOWERCASE = common dso_local global i32 0, align 4
@ES_UPPERCASE = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@BUFLIMIT_INITIAL = common dso_local global i8* null, align 8
@WS_VSCROLL = common dso_local global i32 0, align 4
@ES_AUTOVSCROLL = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@ES_PASSWORD = common dso_local global i32 0, align 4
@ES_CENTER = common dso_local global i32 0, align 4
@LMEM_MOVEABLE = common dso_local global i32 0, align 4
@LMEM_ZEROINIT = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*)* @EDIT_WM_NCCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_WM_NCCreate(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i8* @heap_alloc_zero(i32 80)
  %13 = bitcast i8* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %356

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = ptrtoint %struct.TYPE_7__* %19 to i32
  %21 = call i32 @SetWindowLongPtrW(i32 %18, i32 0, i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @WS_DISABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ES_COMBO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %17
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 12
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ID_CB_LISTBOX, align 4
  %56 = call i32 @GetDlgItem(i32 %54, i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 13
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %17
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WS_EX_RIGHT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @ES_RIGHT, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %59
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ES_NUMBER, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %95

80:                                               ; preds = %72
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ES_LOWERCASE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load i32, i32* @ES_UPPERCASE, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %87, %80
  br label %95

95:                                               ; preds = %94, %79
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ES_MULTILINE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %179

102:                                              ; preds = %95
  %103 = load i8*, i8** @BUFLIMIT_INITIAL, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 11
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @WS_VSCROLL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %102
  %113 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %112, %102
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @WS_HSCROLL, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %125, %118
  %132 = load i32, i32* @ES_PASSWORD, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @ES_CENTER, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %131
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @ES_RIGHT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %178

151:                                              ; preds = %144, %131
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @ES_RIGHT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load i32, i32* @ES_CENTER, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %158, %151
  %166 = load i32, i32* @WS_HSCROLL, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %165, %144
  br label %226

179:                                              ; preds = %95
  %180 = load i8*, i8** @BUFLIMIT_INITIAL, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 11
  store i8* %180, i8** %182, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @ES_RIGHT, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %179
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @ES_CENTER, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %189
  %197 = load i32, i32* @ES_CENTER, align 4
  %198 = xor i32 %197, -1
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = and i32 %201, %198
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %196, %189, %179
  %204 = load i32, i32* @WS_HSCROLL, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 8
  %210 = load i32, i32* @WS_VSCROLL, align 4
  %211 = xor i32 %210, -1
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @ES_PASSWORD, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %203
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 2
  store i8 42, i8* %224, align 8
  br label %225

225:                                              ; preds = %222, %203
  br label %226

226:                                              ; preds = %225, %178
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = mul i64 %231, 4
  %233 = trunc i64 %232 to i32
  %234 = call i32 @ROUND_TO_GROW(i32 %233)
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* @LMEM_MOVEABLE, align 4
  %236 = load i32, i32* @LMEM_ZEROINIT, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* %7, align 4
  %239 = call i64 @LocalAlloc(i32 %237, i32 %238)
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 7
  store i64 %239, i64* %241, align 8
  %242 = icmp ne i64 %239, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %226
  br label %324

244:                                              ; preds = %226
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 7
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @LocalSize(i64 %247)
  %249 = sext i32 %248 to i64
  %250 = udiv i64 %249, 4
  %251 = sub i64 %250, 1
  %252 = trunc i64 %251 to i32
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 4
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = mul i64 %259, 4
  %261 = trunc i64 %260 to i32
  %262 = call i8* @heap_alloc_zero(i32 %261)
  %263 = bitcast i8* %262 to %struct.TYPE_7__*
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 8
  store %struct.TYPE_7__* %263, %struct.TYPE_7__** %265, align 8
  %266 = icmp ne %struct.TYPE_7__* %263, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %244
  br label %324

268:                                              ; preds = %244
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 4
  store i32 %271, i32* %273, align 8
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @ES_MULTILINE, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %268
  %281 = call i8* @heap_alloc_zero(i32 4)
  %282 = bitcast i8* %281 to %struct.TYPE_7__*
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 9
  store %struct.TYPE_7__* %282, %struct.TYPE_7__** %284, align 8
  %285 = icmp ne %struct.TYPE_7__* %282, null
  br i1 %285, label %287, label %286

286:                                              ; preds = %280
  br label %324

287:                                              ; preds = %280
  br label %288

288:                                              ; preds = %287, %268
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 5
  store i32 1, i32* %290, align 4
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %288
  %298 = load i32, i32* @WS_BORDER, align 4
  %299 = xor i32 %298, -1
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = and i32 %302, %299
  store i32 %303, i32* %301, align 8
  br label %322

304:                                              ; preds = %288
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @WS_BORDER, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %321

311:                                              ; preds = %304
  %312 = load i32, i32* %4, align 4
  %313 = load i32, i32* @GWL_STYLE, align 4
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @WS_BORDER, align 4
  %318 = xor i32 %317, -1
  %319 = and i32 %316, %318
  %320 = call i32 @SetWindowLongW(i32 %312, i32 %313, i32 %319)
  br label %321

321:                                              ; preds = %311, %304
  br label %322

322:                                              ; preds = %321, %297
  %323 = load i32, i32* @TRUE, align 4
  store i32 %323, i32* %3, align 4
  br label %356

324:                                              ; preds = %286, %267, %243
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 10
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @SetWindowLongPtrW(i32 %327, i32 0, i32 0)
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %330 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_7__* %329)
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 9
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %332, align 8
  %334 = call i32 @heap_free(%struct.TYPE_7__* %333)
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 8
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %336, align 8
  %338 = call i32 @heap_free(%struct.TYPE_7__* %337)
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 7
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %324
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 7
  %346 = load i64, i64* %345, align 8
  %347 = call i32 @LocalFree(i64 %346)
  br label %348

348:                                              ; preds = %343, %324
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 6
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %350, align 8
  %352 = call i32 @heap_free(%struct.TYPE_7__* %351)
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %354 = call i32 @heap_free(%struct.TYPE_7__* %353)
  %355 = load i32, i32* @FALSE, align 4
  store i32 %355, i32* %3, align 4
  br label %356

356:                                              ; preds = %348, %322, %15
  %357 = load i32, i32* %3, align 4
  ret i32 %357
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i8* @heap_alloc_zero(i32) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ROUND_TO_GROW(i32) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @LocalSize(i64) #1

declare dso_local i32 @SetWindowLongW(i32, i32, i32) #1

declare dso_local i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_7__*) #1

declare dso_local i32 @heap_free(%struct.TYPE_7__*) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
