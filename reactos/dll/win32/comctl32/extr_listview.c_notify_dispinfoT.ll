; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_notify_dispinfoT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_notify_dispinfoT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i64* }
%struct.TYPE_10__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@LVIF_TEXT = common dso_local global i32 0, align 4
@NFR_ANSI = common dso_local global i64 0, align 8
@NFR_UNICODE = common dso_local global i64 0, align 8
@LVN_GETDISPINFOW = common dso_local global i64 0, align 8
@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" pdi->item=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" resulting code=%d\0A\00", align 1
@LVN_GETDISPINFOA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, %struct.TYPE_8__*, i32)* @notify_dispinfoT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notify_dispinfoT(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64* null, i64** %12, align 8
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %15, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @LVIF_TEXT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = call i64 @is_text(i64* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NFR_ANSI, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i1 [ false, %33 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NFR_UNICODE, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %47, %42
  %54 = phi i1 [ false, %42 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %53, %26, %4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  store i64* %64, i64** %13, align 8
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %149

70:                                               ; preds = %67, %56
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @LVN_GETDISPINFOW, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* @CP_ACP, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = bitcast i64* %82 to i8*
  %84 = call i32 @MultiByteToWideChar(i32 %78, i32 0, i8* %83, i32 -1, i64* null, i32 0)
  br label %92

85:                                               ; preds = %74
  %86 = load i32, i32* @CP_ACP, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = call i32 @WideCharToMultiByte(i32 %86, i32 0, i64* %90, i32 -1, i8* null, i32 0, i32* null, i32* null)
  br label %92

92:                                               ; preds = %85, %77
  %93 = phi i32 [ %84, %77 ], [ %91, %85 ]
  store i32 %93, i32* %10, align 4
  br label %103

94:                                               ; preds = %70
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %94, %92
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i64 4, i64 4
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %107, %109
  %111 = trunc i64 %110 to i32
  %112 = call i64* @Alloc(i32 %111)
  store i64* %112, i64** %12, align 8
  %113 = load i64*, i64** %12, align 8
  %114 = icmp ne i64* %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %103
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %5, align 4
  br label %313

117:                                              ; preds = %103
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i32, i32* @CP_ACP, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i64*, i64** %124, align 8
  %126 = bitcast i64* %125 to i8*
  %127 = load i64*, i64** %12, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @MultiByteToWideChar(i32 %121, i32 0, i8* %126, i32 -1, i64* %127, i32 %128)
  br label %140

130:                                              ; preds = %117
  %131 = load i32, i32* @CP_ACP, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %135 = load i64*, i64** %134, align 8
  %136 = load i64*, i64** %12, align 8
  %137 = bitcast i64* %136 to i8*
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @WideCharToMultiByte(i32 %131, i32 0, i64* %135, i32 -1, i8* %137, i32 %138, i32* null, i32* null)
  br label %140

140:                                              ; preds = %130, %120
  %141 = load i64*, i64** %12, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  store i64* %141, i64** %144, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  br label %149

149:                                              ; preds = %140, %67
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @NFR_ANSI, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i64, i64* %7, align 8
  %157 = call i64 @get_ansi_notification(i64 %156)
  store i64 %157, i64* %7, align 8
  br label %158

158:                                              ; preds = %155, %149
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @NFR_ANSI, align 8
  %165 = icmp ne i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i64 @debuglvitem_t(%struct.TYPE_11__* %160, i32 %166)
  %168 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %167)
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %170 = load i64, i64* %7, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = call i32 @notify_hdr(%struct.TYPE_9__* %169, i64 %170, %struct.TYPE_10__* %172)
  store i32 %173, i32* %16, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %177)
  %179 = load i32, i32* %14, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %158
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %257

184:                                              ; preds = %181, %158
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %203

187:                                              ; preds = %184
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @LVN_GETDISPINFOA, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %187
  %195 = load i64*, i64** %13, align 8
  %196 = bitcast i64* %195 to i8*
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 2
  %200 = load i64*, i64** %199, align 8
  %201 = bitcast i64* %200 to i8*
  %202 = call i32 @strcpy(i8* %196, i8* %201)
  br label %245

203:                                              ; preds = %187, %184
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %220

206:                                              ; preds = %203
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @LVN_GETDISPINFOW, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %206
  %214 = load i64*, i64** %13, align 8
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  %218 = load i64*, i64** %217, align 8
  %219 = call i32 @lstrcpyW(i64* %214, i64* %218)
  br label %244

220:                                              ; preds = %206, %203
  %221 = load i32, i32* %14, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %220
  %224 = load i32, i32* @CP_ACP, align 4
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 2
  %228 = load i64*, i64** %227, align 8
  %229 = load i64*, i64** %13, align 8
  %230 = bitcast i64* %229 to i8*
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @WideCharToMultiByte(i32 %224, i32 0, i64* %228, i32 -1, i8* %230, i32 %231, i32* null, i32* null)
  br label %243

233:                                              ; preds = %220
  %234 = load i32, i32* @CP_ACP, align 4
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  %238 = load i64*, i64** %237, align 8
  %239 = bitcast i64* %238 to i8*
  %240 = load i64*, i64** %13, align 8
  %241 = load i32, i32* %11, align 4
  %242 = call i32 @MultiByteToWideChar(i32 %234, i32 0, i8* %239, i32 -1, i64* %240, i32 %241)
  br label %243

243:                                              ; preds = %233, %223
  br label %244

244:                                              ; preds = %243, %213
  br label %245

245:                                              ; preds = %244, %194
  %246 = load i64*, i64** %13, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 2
  store i64* %246, i64** %249, align 8
  %250 = load i32, i32* %11, align 4
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 1
  store i32 %250, i32* %253, align 4
  %254 = load i64*, i64** %12, align 8
  %255 = call i32 @Free(i64* %254)
  %256 = load i32, i32* %16, align 4
  store i32 %256, i32* %5, align 4
  br label %313

257:                                              ; preds = %181
  %258 = load i32, i32* %9, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %311, label %260

260:                                              ; preds = %257
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @LVN_GETDISPINFOW, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %311

267:                                              ; preds = %260
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @LVIF_TEXT, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %311

275:                                              ; preds = %267
  %276 = load i32, i32* @CP_ACP, align 4
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 2
  %280 = load i64*, i64** %279, align 8
  %281 = call i32 @WideCharToMultiByte(i32 %276, i32 0, i64* %280, i32 -1, i8* null, i32 0, i32* null, i32* null)
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = mul i64 %283, 4
  %285 = trunc i64 %284 to i32
  %286 = call i64* @Alloc(i32 %285)
  store i64* %286, i64** %12, align 8
  %287 = load i64*, i64** %12, align 8
  %288 = icmp ne i64* %287, null
  br i1 %288, label %291, label %289

289:                                              ; preds = %275
  %290 = load i32, i32* @FALSE, align 4
  store i32 %290, i32* %5, align 4
  br label %313

291:                                              ; preds = %275
  %292 = load i32, i32* @CP_ACP, align 4
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 2
  %296 = load i64*, i64** %295, align 8
  %297 = load i64*, i64** %12, align 8
  %298 = bitcast i64* %297 to i8*
  %299 = load i32, i32* %11, align 4
  %300 = call i32 @WideCharToMultiByte(i32 %292, i32 0, i64* %296, i32 -1, i8* %298, i32 %299, i32* null, i32* null)
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 2
  %304 = load i64*, i64** %303, align 8
  %305 = bitcast i64* %304 to i8*
  %306 = load i64*, i64** %12, align 8
  %307 = bitcast i64* %306 to i8*
  %308 = call i32 @strcpy(i8* %305, i8* %307)
  %309 = load i64*, i64** %12, align 8
  %310 = call i32 @Free(i64* %309)
  br label %311

311:                                              ; preds = %291, %267, %260, %257
  %312 = load i32, i32* %16, align 4
  store i32 %312, i32* %5, align 4
  br label %313

313:                                              ; preds = %311, %289, %245, %115
  %314 = load i32, i32* %5, align 4
  ret i32 %314
}

declare dso_local i64 @is_text(i64*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i64*, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i64*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i64* @Alloc(i32) #1

declare dso_local i64 @get_ansi_notification(i64) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @debuglvitem_t(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @notify_hdr(%struct.TYPE_9__*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @lstrcpyW(i64*, i64*) #1

declare dso_local i32 @Free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
