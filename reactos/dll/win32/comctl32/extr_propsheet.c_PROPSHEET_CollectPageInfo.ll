; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_CollectPageInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_CollectPageInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i8*, %struct.TYPE_13__, i32, %struct.TYPE_10__, i64 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_14__ = type { i32, i32, i64, %struct.TYPE_12__*, %struct.TYPE_11__, i8* }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, i8*, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PSP_USECALLBACK = common dso_local global i32 0, align 4
@PSP_HASHELP = common dso_local global i32 0, align 4
@PSP_USEHICON = common dso_local global i32 0, align 4
@PSP_USEICONID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@PSP_DLGINDIRECT = common dso_local global i32 0, align 4
@PSP_INTERNAL_UNICODE = common dso_local global i32 0, align 4
@RT_DIALOG = common dso_local global i64 0, align 8
@PSP_USEHEADERTITLE = common dso_local global i32 0, align 4
@PSP_USEHEADERSUBTITLE = common dso_local global i32 0, align 4
@PSH_HEADER = common dso_local global i32 0, align 4
@PSH_WIZARD97_OLD = common dso_local global i32 0, align 4
@PSH_WIZARD97_NEW = common dso_local global i32 0, align 4
@PSP_HIDEHEADER = common dso_local global i32 0, align 4
@WIZARD_PADDING = common dso_local global i32 0, align 4
@WIZARD_HEADER_HEIGHT = common dso_local global i64 0, align 8
@PSH_WIZARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Tab %d %s\0A\00", align 1
@PSP_USETITLE = common dso_local global i32 0, align 4
@PROPSHEET_CollectPageInfo.pszNull = internal constant [7 x i8] c"(null)\00", align 1
@SM_CXSMICON = common dso_local global i32 0, align 4
@SM_CYSMICON = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@LR_DEFAULTCOLOR = common dso_local global i32 0, align 4
@ILC_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, %struct.TYPE_14__*, i32, i8*)* @PROPSHEET_CollectPageInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @PROPSHEET_CollectPageInfo(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [256 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = icmp ne %struct.TYPE_16__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i8*, i8** @FALSE, align 8
  store i8* %27, i8** %5, align 8
  br label %455

28:                                               ; preds = %4
  %29 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = ptrtoint %struct.TYPE_16__* %30 to i64
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 6
  store i64 %31, i64* %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load i8*, i8** @FALSE, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 4
  store i8* %46, i8** %53, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @PSP_USECALLBACK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %28
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %61, %28
  %67 = phi i1 [ false, %28 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @PSP_HASHELP, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i32 %78, i32* %85, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @PSP_USEHICON, align 4
  %88 = load i32, i32* @PSP_USEICONID, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  store i32 %90, i32* %97, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %66
  %108 = load i8*, i8** @TRUE, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 5
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %107, %66
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @PSP_DLGINDIRECT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %10, align 8
  br label %164

121:                                              ; preds = %111
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @PSP_INTERNAL_UNICODE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %121
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @RT_DIALOG, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @FindResourceW(i32 %129, i64 %133, i32 %135)
  store i32 %136, i32* %15, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @LoadResource(i32 %139, i32 %140)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = call i32* @LockResource(i32 %142)
  store i32* %143, i32** %10, align 8
  br label %163

144:                                              ; preds = %121
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = load i64, i64* @RT_DIALOG, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @FindResourceA(i32 %147, i32 %152, i32 %154)
  store i32 %155, i32* %17, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @LoadResource(i32 %158, i32 %159)
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i32* @LockResource(i32 %161)
  store i32* %162, i32** %10, align 8
  br label %163

163:                                              ; preds = %144, %126
  br label %164

164:                                              ; preds = %163, %116
  %165 = load i32*, i32** %10, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %164
  %168 = load i8*, i8** @FALSE, align 8
  store i8* %168, i8** %5, align 8
  br label %455

169:                                              ; preds = %164
  %170 = load i32*, i32** %10, align 8
  store i32* %170, i32** %11, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = bitcast i32* %171 to %struct.TYPE_15__*
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 65535
  br i1 %175, label %176, label %187

176:                                              ; preds = %169
  %177 = load i32*, i32** %11, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %11, align 8
  %179 = load i32*, i32** %11, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %11, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  store i32* %182, i32** %11, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  store i32* %184, i32** %11, align 8
  %185 = load i32*, i32** %11, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  store i32* %186, i32** %11, align 8
  br label %192

187:                                              ; preds = %169
  %188 = load i32*, i32** %11, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  store i32* %189, i32** %11, align 8
  %190 = load i32*, i32** %11, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  store i32* %191, i32** %11, align 8
  br label %192

192:                                              ; preds = %187, %176
  %193 = load i32*, i32** %11, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %11, align 8
  %195 = load i32*, i32** %11, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %11, align 8
  %197 = load i32*, i32** %11, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %11, align 8
  %199 = load i32*, i32** %11, align 8
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %13, align 4
  %201 = load i32*, i32** %11, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %11, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %14, align 4
  %205 = load i32*, i32** %11, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %11, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @PSP_USEHEADERTITLE, align 4
  %211 = load i32, i32* @PSP_USEHEADERSUBTITLE, align 4
  %212 = or i32 %210, %211
  %213 = and i32 %209, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %192
  %216 = load i32, i32* @PSH_HEADER, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %216
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %215, %192
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @PSH_WIZARD97_OLD, align 4
  %228 = load i32, i32* @PSH_WIZARD97_NEW, align 4
  %229 = or i32 %227, %228
  %230 = and i32 %226, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %259

232:                                              ; preds = %222
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @PSH_HEADER, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %259

240:                                              ; preds = %232
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* @PSP_HIDEHEADER, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %259, label %245

245:                                              ; preds = %240
  %246 = load i32, i32* @WIZARD_PADDING, align 4
  %247 = mul nsw i32 2, %246
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* @WIZARD_HEADER_HEIGHT, align 8
  %250 = add nsw i64 %248, %249
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = add nsw i64 %252, %250
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %14, align 4
  %255 = load i32, i32* @WIZARD_PADDING, align 4
  %256 = mul nsw i32 2, %255
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, %256
  store i32 %258, i32* %13, align 4
  br label %259

259:                                              ; preds = %245, %240, %232, %222
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @PSH_WIZARD, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %259
  %268 = load i32, i32* @WIZARD_PADDING, align 4
  %269 = mul nsw i32 2, %268
  %270 = load i32, i32* %14, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %14, align 4
  %272 = load i32, i32* @WIZARD_PADDING, align 4
  %273 = mul nsw i32 2, %272
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %13, align 4
  br label %276

276:                                              ; preds = %267, %259
  %277 = load i8*, i8** %9, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %300

279:                                              ; preds = %276
  %280 = load i32, i32* %13, align 4
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp sgt i32 %280, %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %279
  %286 = load i32, i32* %13, align 4
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  store i32 %286, i32* %288, align 8
  br label %289

289:                                              ; preds = %285, %279
  %290 = load i32, i32* %14, align 4
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp sgt i32 %290, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %289
  %296 = load i32, i32* %14, align 4
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 1
  store i32 %296, i32* %298, align 4
  br label %299

299:                                              ; preds = %295, %289
  br label %300

300:                                              ; preds = %299, %276
  %301 = load i32*, i32** %11, align 8
  %302 = load i32, i32* %301, align 4
  switch i32 %302, label %309 [
    i32 0, label %303
    i32 65535, label %306
  ]

303:                                              ; preds = %300
  %304 = load i32*, i32** %11, align 8
  %305 = getelementptr inbounds i32, i32* %304, i32 1
  store i32* %305, i32** %11, align 8
  br label %316

306:                                              ; preds = %300
  %307 = load i32*, i32** %11, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 2
  store i32* %308, i32** %11, align 8
  br label %316

309:                                              ; preds = %300
  %310 = load i32*, i32** %11, align 8
  %311 = call i32 @lstrlenW(i32* %310)
  %312 = add nsw i32 %311, 1
  %313 = load i32*, i32** %11, align 8
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds i32, i32* %313, i64 %314
  store i32* %315, i32** %11, align 8
  br label %316

316:                                              ; preds = %309, %306, %303
  %317 = load i32*, i32** %11, align 8
  %318 = load i32, i32* %317, align 4
  switch i32 %318, label %325 [
    i32 0, label %319
    i32 65535, label %322
  ]

319:                                              ; preds = %316
  %320 = load i32*, i32** %11, align 8
  %321 = getelementptr inbounds i32, i32* %320, i32 1
  store i32* %321, i32** %11, align 8
  br label %332

322:                                              ; preds = %316
  %323 = load i32*, i32** %11, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 2
  store i32* %324, i32** %11, align 8
  br label %332

325:                                              ; preds = %316
  %326 = load i32*, i32** %11, align 8
  %327 = call i32 @lstrlenW(i32* %326)
  %328 = add nsw i32 %327, 1
  %329 = load i32*, i32** %11, align 8
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds i32, i32* %329, i64 %330
  store i32* %331, i32** %11, align 8
  br label %332

332:                                              ; preds = %325, %322, %319
  %333 = load i32*, i32** %11, align 8
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 3
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %335, align 8
  %337 = load i32, i32* %8, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 3
  store i32* %333, i32** %340, align 8
  %341 = load i32, i32* %8, align 4
  %342 = load i32*, i32** %11, align 8
  %343 = call i32 @debugstr_w(i32* %342)
  %344 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %341, i32 %343)
  %345 = load i32, i32* %12, align 4
  %346 = load i32, i32* @PSP_USETITLE, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %394

349:                                              ; preds = %332
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 1
  %352 = load i8*, i8** %351, align 8
  %353 = call i64 @IS_INTRESOURCE(i8* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %380

355:                                              ; preds = %349
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 1
  %361 = load i8*, i8** %360, align 8
  %362 = ptrtoint i8* %361 to i32
  %363 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %364 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %365 = call i32 @ARRAY_SIZE(i8* %364)
  %366 = call i64 @LoadStringW(i32 %358, i32 %362, i8* %363, i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %355
  %369 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  store i8* %369, i8** %20, align 8
  br label %379

370:                                              ; preds = %355
  %371 = load i32*, i32** %11, align 8
  %372 = load i32, i32* %371, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %370
  %375 = load i32*, i32** %11, align 8
  %376 = bitcast i32* %375 to i8*
  store i8* %376, i8** %20, align 8
  br label %378

377:                                              ; preds = %370
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @PROPSHEET_CollectPageInfo.pszNull, i64 0, i64 0), i8** %20, align 8
  br label %378

378:                                              ; preds = %377, %374
  br label %379

379:                                              ; preds = %378, %368
  br label %384

380:                                              ; preds = %349
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 1
  %383 = load i8*, i8** %382, align 8
  store i8* %383, i8** %20, align 8
  br label %384

384:                                              ; preds = %380, %379
  %385 = load i8*, i8** %20, align 8
  %386 = call i32* @heap_strdupW(i8* %385)
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 3
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %388, align 8
  %390 = load i32, i32* %8, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 3
  store i32* %386, i32** %393, align 8
  br label %394

394:                                              ; preds = %384, %332
  %395 = load i32, i32* %12, align 4
  %396 = load i32, i32* @PSP_USEHICON, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %404, label %399

399:                                              ; preds = %394
  %400 = load i32, i32* %12, align 4
  %401 = load i32, i32* @PSP_USEICONID, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %453

404:                                              ; preds = %399, %394
  %405 = load i32, i32* @SM_CXSMICON, align 4
  %406 = call i32 @GetSystemMetrics(i32 %405)
  store i32 %406, i32* %22, align 4
  %407 = load i32, i32* @SM_CYSMICON, align 4
  %408 = call i32 @GetSystemMetrics(i32 %407)
  store i32 %408, i32* %23, align 4
  %409 = load i32, i32* %12, align 4
  %410 = load i32, i32* @PSP_USEICONID, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %426

413:                                              ; preds = %404
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @IMAGE_ICON, align 4
  %422 = load i32, i32* %22, align 4
  %423 = load i32, i32* %23, align 4
  %424 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %425 = call i64 @LoadImageW(i32 %416, i32 %420, i32 %421, i32 %422, i32 %423, i32 %424)
  store i64 %425, i64* %21, align 8
  br label %431

426:                                              ; preds = %404
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 2
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %21, align 8
  br label %431

431:                                              ; preds = %426, %413
  %432 = load i64, i64* %21, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %452

434:                                              ; preds = %431
  %435 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 2
  %437 = load i64, i64* %436, align 8
  %438 = icmp eq i64 %437, 0
  br i1 %438, label %439, label %446

439:                                              ; preds = %434
  %440 = load i32, i32* %22, align 4
  %441 = load i32, i32* %23, align 4
  %442 = load i32, i32* @ILC_COLOR, align 4
  %443 = call i64 @ImageList_Create(i32 %440, i32 %441, i32 %442, i32 1, i32 1)
  %444 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 2
  store i64 %443, i64* %445, align 8
  br label %446

446:                                              ; preds = %439, %434
  %447 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* %21, align 8
  %451 = call i32 @ImageList_AddIcon(i64 %449, i64 %450)
  br label %452

452:                                              ; preds = %446, %431
  br label %453

453:                                              ; preds = %452, %399
  %454 = load i8*, i8** @TRUE, align 8
  store i8* %454, i8** %5, align 8
  br label %455

455:                                              ; preds = %453, %167, %26
  %456 = load i8*, i8** %5, align 8
  ret i8* %456
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @FindResourceW(i32, i64, i32) #1

declare dso_local i32 @LoadResource(i32, i32) #1

declare dso_local i32* @LockResource(i32) #1

declare dso_local i32 @FindResourceA(i32, i32, i32) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i64 @IS_INTRESOURCE(i8*) #1

declare dso_local i64 @LoadStringW(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32* @heap_strdupW(i8*) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i64 @LoadImageW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ImageList_AddIcon(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
