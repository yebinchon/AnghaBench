; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_AddToolT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_AddToolT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i8*, i32, i64, i32, i32*, i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32*, i32, i32, i64, i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"add tool (%p) %p %ld%s\0A\00", align 1
@TTF_IDISHWND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c" TTF_IDISHWND\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TTTOOLINFOW_V3_SIZE = common dso_local global i64 0, align 8
@TTF_SUBCLASS = common dso_local global i32 0, align 4
@TTTOOLINFOW_V1_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"add string id %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"add CALLBACK\0A\00", align 1
@LPSTR_TEXTCALLBACKW = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"add text %s\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"add text \22%s\22\0A\00", align 1
@TTTOOLINFOW_V2_SIZE = common dso_local global i64 0, align 8
@TOOLTIPS_SubclassProc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"subclassing installed\0A\00", align 1
@WM_NOTIFYFORMAT = common dso_local global i32 0, align 4
@NF_QUERY = common dso_local global i32 0, align 4
@NFR_ANSI = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c" -- WM_NOTIFYFORMAT returns: NFR_ANSI\0A\00", align 1
@NFR_UNICODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c" -- WM_NOTIFYFORMAT returns: NFR_UNICODE\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c" -- WM_NOTIFYFORMAT returns: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*, %struct.TYPE_10__*, i64)* @TOOLTIPS_AddToolT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @TOOLTIPS_AddToolT(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** @FALSE, align 8
  store i8* %16, i8** %4, align 8
  br label %320

17:                                               ; preds = %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TTF_IDISHWND, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %23, i64 %26, i8* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TTTOOLINFOW_V3_SIZE, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %17
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i8*, i8** @FALSE, align 8
  store i8* %45, i8** %4, align 8
  br label %320

46:                                               ; preds = %41, %17
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = call i8* @Alloc(i32 56)
  %53 = bitcast i8* %52 to %struct.TYPE_9__*
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %8, align 8
  br label %95

59:                                               ; preds = %46
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %10, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = mul i64 56, %67
  %69 = trunc i64 %68 to i32
  %70 = call i8* @Alloc(i32 %69)
  %71 = bitcast i8* %70 to %struct.TYPE_9__*
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 56
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memcpy(%struct.TYPE_9__* %76, %struct.TYPE_9__* %77, i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = call i32 @Free(%struct.TYPE_9__* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %93
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %8, align 8
  br label %95

95:                                               ; preds = %59, %51
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @TTF_SUBCLASS, align 4
  %109 = load i32, i32* @TTF_IDISHWND, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TTTOOLINFOW_V1_SIZE, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %237

139:                                              ; preds = %95
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @IS_INTRESOURCE(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @LOWORD(i32* %148)
  %150 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 6
  store i32* %153, i32** %155, align 8
  br label %236

156:                                              ; preds = %139
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %235

161:                                              ; preds = %156
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %7, align 8
  %166 = call i64 @TOOLTIPS_IsCallbackString(i32* %164, i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %161
  %169 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i32*, i32** @LPSTR_TEXTCALLBACKW, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 6
  store i32* %170, i32** %172, align 8
  br label %234

173:                                              ; preds = %161
  %174 = load i64, i64* %7, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %202

176:                                              ; preds = %173
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @lstrlenW(i32* %179)
  store i32 %180, i32* %11, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @debugstr_w(i32* %183)
  %185 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = mul i64 %188, 4
  %190 = trunc i64 %189 to i32
  %191 = call i8* @Alloc(i32 %190)
  %192 = bitcast i8* %191 to i32*
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 6
  store i32* %192, i32** %194, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 6
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @strcpyW(i32* %197, i32* %200)
  br label %233

202:                                              ; preds = %173
  %203 = load i32, i32* @CP_ACP, align 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = ptrtoint i32* %206 to i32
  %208 = call i32 @MultiByteToWideChar(i32 %203, i32 0, i32 %207, i32 -1, i32* null, i32 0)
  store i32 %208, i32* %12, align 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = bitcast i32* %211 to i8*
  %213 = call i32 @debugstr_a(i8* %212)
  %214 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = mul i64 %216, 4
  %218 = trunc i64 %217 to i32
  %219 = call i8* @Alloc(i32 %218)
  %220 = bitcast i8* %219 to i32*
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 6
  store i32* %220, i32** %222, align 8
  %223 = load i32, i32* @CP_ACP, align 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = ptrtoint i32* %226 to i32
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 6
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %12, align 4
  %232 = call i32 @MultiByteToWideChar(i32 %223, i32 0, i32 %227, i32 -1, i32* %230, i32 %231)
  br label %233

233:                                              ; preds = %202, %176
  br label %234

234:                                              ; preds = %233, %168
  br label %235

235:                                              ; preds = %234, %156
  br label %236

236:                                              ; preds = %235, %145
  br label %237

237:                                              ; preds = %236, %95
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @TTTOOLINFOW_V2_SIZE, align 8
  %242 = icmp sge i64 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %237
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 5
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %243, %237
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @TTF_SUBCLASS, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %286

256:                                              ; preds = %249
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @TTF_IDISHWND, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %256
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = trunc i64 %266 to i32
  %268 = load i32, i32* @TOOLTIPS_SubclassProc, align 4
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = trunc i64 %271 to i32
  %273 = call i32 @SetWindowSubclass(i32 %267, i32 %268, i32 1, i32 %272)
  br label %284

274:                                              ; preds = %256
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @TOOLTIPS_SubclassProc, align 4
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = trunc i64 %281 to i32
  %283 = call i32 @SetWindowSubclass(i32 %277, i32 %278, i32 1, i32 %282)
  br label %284

284:                                              ; preds = %274, %263
  %285 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284, %249
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @WM_NOTIFYFORMAT, align 4
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = trunc i64 %293 to i32
  %295 = load i32, i32* @NF_QUERY, align 4
  %296 = call i32 @SendMessageW(i32 %289, i32 %290, i32 %294, i32 %295)
  store i32 %296, i32* %9, align 4
  %297 = load i32, i32* %9, align 4
  %298 = load i32, i32* @NFR_ANSI, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %286
  %301 = load i8*, i8** @FALSE, align 8
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 2
  store i8* %301, i8** %303, align 8
  %304 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %318

305:                                              ; preds = %286
  %306 = load i32, i32* %9, align 4
  %307 = load i32, i32* @NFR_UNICODE, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = load i8*, i8** @TRUE, align 8
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 2
  store i8* %310, i8** %312, align 8
  %313 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %317

314:                                              ; preds = %305
  %315 = load i32, i32* %9, align 4
  %316 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %315)
  br label %317

317:                                              ; preds = %314, %309
  br label %318

318:                                              ; preds = %317, %300
  %319 = load i8*, i8** @TRUE, align 8
  store i8* %319, i8** %4, align 8
  br label %320

320:                                              ; preds = %318, %44, %15
  %321 = load i8*, i8** %4, align 8
  ret i8* %321
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i8* @Alloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @Free(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_INTRESOURCE(i32*) #1

declare dso_local i32 @LOWORD(i32*) #1

declare dso_local i64 @TOOLTIPS_IsCallbackString(i32*, i64) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @strcpyW(i32*, i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @SetWindowSubclass(i32, i32, i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
