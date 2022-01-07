; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_WMCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_WMCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i64, i32, %struct.TYPE_15__*, %struct.TYPE_14__, i32, i32, i32, i32, i32, i64, i32, i32, i8* }
%struct.TYPE_15__ = type { i32, i8*, i64, i64, i8* }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i8* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i64, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CLR_DEFAULT = common dso_local global i32 0, align 4
@HORZ_BORDER = common dso_local global i32 0, align 4
@VERT_BORDER = common dso_local global i32 0, align 4
@HORZ_GAP = common dso_local global i32 0, align 4
@SM_CYSIZE = common dso_local global i32 0, align 4
@NF_REQUERY = common dso_local global i32 0, align 4
@SPI_GETNONCLIENTMETRICS = common dso_local global i32 0, align 4
@themeClass = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@SBT_TOOLTIPS = common dso_local global i32 0, align 4
@TOOLTIPS_CLASSW = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@TTS_ALWAYSTIP = common dso_local global i32 0, align 4
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@NM_TOOLTIPSCREATED = common dso_local global i32 0, align 4
@WM_NOTIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"    failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_20__*)* @STATUSBAR_WMCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @STATUSBAR_WMCreate(i8* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = call i8* @Alloc(i32 120)
  %14 = bitcast i8* %13 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = icmp ne %struct.TYPE_17__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %251

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = ptrtoint %struct.TYPE_17__* %20 to i32
  %22 = call i32 @SetWindowLongPtrW(i8* %19, i32 0, i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 14
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %34, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 13
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @CLR_DEFAULT, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 12
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 11
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @HORZ_BORDER, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @VERT_BORDER, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @HORZ_GAP, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @SM_CYSIZE, align 4
  %53 = call i32 @GetSystemMetrics(i32 %52)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %18
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %18
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NF_REQUERY, align 4
  %72 = call i32 @STATUSBAR_NotifyFormat(%struct.TYPE_17__* %67, i32 %70, i32 %71)
  %73 = call i32 @ZeroMemory(%struct.TYPE_18__* %7, i32 8)
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store i32 8, i32* %74, align 4
  %75 = load i32, i32* @SPI_GETNONCLIENTMETRICS, align 4
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SystemParametersInfoW(i32 %75, i32 %77, %struct.TYPE_18__* %7, i32 0)
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %80 = call i32 @CreateFontIndirectW(i32* %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @GetClientRect(i8* %83, i8** %9)
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 4
  store i8* %85, i8** %88, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = call i8* @Alloc(i32 4)
  %102 = bitcast i8* %101 to %struct.TYPE_15__*
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 4
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %104, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = icmp ne %struct.TYPE_15__* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %66
  br label %251

110:                                              ; preds = %66
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 4
  store i8* %111, i8** %116, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  store i8* null, i8** %121, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  store i32 -1, i32* %126, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  store i64 0, i64* %136, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = load i32, i32* @themeClass, align 4
  %139 = call i32 @OpenThemeData(i8* %137, i32 %138)
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %183

144:                                              ; preds = %110
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 @strlenW(i32 %148)
  store i32 %149, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %183

151:                                              ; preds = %144
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = call i8* @Alloc(i32 %156)
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  store i8* %157, i8** %162, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %151
  br label %251

171:                                              ; preds = %151
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = call i32 @strcpyW(i8* %177, i32 %181)
  br label %183

183:                                              ; preds = %171, %144, %110
  %184 = load i8*, i8** %4, align 8
  %185 = load i32, i32* @GWL_STYLE, align 4
  %186 = call i32 @GetWindowLongW(i8* %184, i32 %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* @WS_BORDER, align 4
  %188 = xor i32 %187, -1
  %189 = load i32, i32* %8, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %8, align 4
  %191 = load i8*, i8** %4, align 8
  %192 = load i32, i32* @GWL_STYLE, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @SetWindowLongW(i8* %191, i32 %192, i32 %193)
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %196 = call i32 @STATUSBAR_ComputeHeight(%struct.TYPE_17__* %195)
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @SBT_TOOLTIPS, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %250

203:                                              ; preds = %183
  %204 = load i32, i32* @TOOLTIPS_CLASSW, align 4
  %205 = load i32, i32* @WS_POPUP, align 4
  %206 = load i32, i32* @TTS_ALWAYSTIP, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @CW_USEDEFAULT, align 4
  %209 = load i32, i32* @CW_USEDEFAULT, align 4
  %210 = load i32, i32* @CW_USEDEFAULT, align 4
  %211 = load i32, i32* @CW_USEDEFAULT, align 4
  %212 = load i8*, i8** %4, align 8
  %213 = load i8*, i8** %4, align 8
  %214 = load i32, i32* @GWLP_HINSTANCE, align 4
  %215 = call i64 @GetWindowLongPtrW(i8* %213, i32 %214)
  %216 = trunc i64 %215 to i32
  %217 = call i64 @CreateWindowExW(i32 0, i32 %204, i32* null, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i8* %212, i32 0, i32 %216, i32* null)
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %249

224:                                              ; preds = %203
  %225 = load i8*, i8** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 2
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** %4, align 8
  %229 = load i32, i32* @GWLP_ID, align 4
  %230 = call i64 @GetWindowLongPtrW(i8* %228, i32 %229)
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  %233 = load i32, i32* @NM_TOOLTIPSCREATED, align 4
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i64 %238, i64* %239, align 8
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @WM_NOTIFY, align 4
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = ptrtoint %struct.TYPE_19__* %11 to i32
  %248 = call i32 @SendMessageW(i32 %242, i32 %243, i64 %246, i32 %247)
  br label %249

249:                                              ; preds = %224, %203
  br label %250

250:                                              ; preds = %249, %183
  store i32 0, i32* %3, align 4
  br label %259

251:                                              ; preds = %170, %109, %17
  %252 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %254 = icmp ne %struct.TYPE_17__* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %257 = call i32 @STATUSBAR_WMDestroy(%struct.TYPE_17__* %256)
  br label %258

258:                                              ; preds = %255, %251
  store i32 -1, i32* %3, align 4
  br label %259

259:                                              ; preds = %258, %250
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i8* @Alloc(i32) #1

declare dso_local i32 @SetWindowLongPtrW(i8*, i32, i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @STATUSBAR_NotifyFormat(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @SystemParametersInfoW(i32, i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @CreateFontIndirectW(i32*) #1

declare dso_local i32 @GetClientRect(i8*, i8**) #1

declare dso_local i32 @OpenThemeData(i8*, i32) #1

declare dso_local i32 @strlenW(i32) #1

declare dso_local i32 @strcpyW(i8*, i32) #1

declare dso_local i32 @GetWindowLongW(i8*, i32) #1

declare dso_local i32 @SetWindowLongW(i8*, i32, i32) #1

declare dso_local i32 @STATUSBAR_ComputeHeight(%struct.TYPE_17__*) #1

declare dso_local i64 @CreateWindowExW(i32, i32, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @GetWindowLongPtrW(i8*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i64, i32) #1

declare dso_local i32 @STATUSBAR_WMDestroy(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
