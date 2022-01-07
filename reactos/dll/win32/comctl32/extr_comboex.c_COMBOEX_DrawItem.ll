; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_DrawItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_DrawItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, i32, i32 }
%struct.TYPE_37__ = type { i32, i32, i32, i64, i64, %struct.TYPE_38__, i64, i64 }
%struct.TYPE_38__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_36__ = type { i64, i32, i32, i32, i32, %struct.TYPE_33__, i32, i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32 }

@COMBOEX_DrawItem.nil = internal constant [1 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [45 x i8] c"DRAWITEMSTRUCT: CtlType=0x%08x CtlID=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"itemID=0x%08x itemAction=0x%08x itemState=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"hWnd=%p hDC=%p (%s) itemData=0x%08lx\0A\00", align 1
@ODA_FOCUS = common dso_local global i32 0, align 4
@ODS_SELECTED = common dso_local global i32 0, align 4
@ODA_SELECT = common dso_local global i32 0, align 4
@ODA_DRAWENTIRE = common dso_local global i32 0, align 4
@ODS_FOCUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"drawing item -1 special focus, rect=(%s)\0A\00", align 1
@ODT_COMBOBOX = common dso_local global i64 0, align 8
@comboex = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"window rects ex=(%s), cb=(%s), ed=(%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"NOT drawing item  -1 special focus, rect=(%s), action=%08x, state=%08x\0A\00", align 1
@CBEIF_TEXT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"edit control hwndEdit=%p, text len=%d str=%s\0A\00", align 1
@CB_ERR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"invalid item for id %d\0A\00", align 1
@CBE_STARTOFFSET = common dso_local global i32 0, align 4
@CBEIF_INDENT = common dso_local global i32 0, align 4
@ODS_COMBOEXLBOX = common dso_local global i32 0, align 4
@I_INDENTCALLBACK = common dso_local global i32 0, align 4
@CBEN_GETDISPINFOW = common dso_local global i32 0, align 4
@CBEIF_DI_SETITEM = common dso_local global i32 0, align 4
@CBE_INDENT = common dso_local global i32 0, align 4
@ILD_NORMAL = common dso_local global i32 0, align 4
@CBEIF_IMAGE = common dso_local global i32 0, align 4
@CBEIF_SELECTEDIMAGE = common dso_local global i32 0, align 4
@ILD_SELECTED = common dso_local global i32 0, align 4
@WCBE_EDITFOCUSED = common dso_local global i32 0, align 4
@CBES_EX_NOEDITIMAGEINDENT = common dso_local global i32 0, align 4
@CBE_SEP = common dso_local global i32 0, align 4
@I_IMAGECALLBACK = common dso_local global i32 0, align 4
@CBEIF_OVERLAY = common dso_local global i32 0, align 4
@CBES_EX_NOEDITIMAGE = common dso_local global i32 0, align 4
@comctl32_color = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"drawing item %d text, rect=(%s)\0A\00", align 1
@ETO_OPAQUE = common dso_local global i32 0, align 4
@ETO_CLIPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_37__*, %struct.TYPE_36__*)* @COMBOEX_DrawItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBOEX_DrawItem(%struct.TYPE_37__* %0, %struct.TYPE_36__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_32__, align 4
  %8 = alloca %struct.TYPE_33__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_33__, align 4
  %23 = alloca %struct.TYPE_33__, align 4
  %24 = alloca %struct.TYPE_33__, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_34__, align 4
  %27 = alloca %struct.TYPE_35__, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_34__, align 4
  %30 = alloca %struct.TYPE_34__, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %4, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %5, align 8
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %6, align 8
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @COMBOEX_DrawItem.nil, i64 0, i64 0), i32** %9, align 8
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %36)
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %41, i32 %44, i32 %47)
  %49 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %56, i32 0, i32 5
  %58 = call i32 @wine_dbgstr_rect(%struct.TYPE_33__* %57)
  %59 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %52, i32 %55, i32 %58, i32 %61)
  %63 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %158

67:                                               ; preds = %2
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ODA_FOCUS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ODS_SELECTED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %74, %67
  %82 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ODA_SELECT, align 4
  %86 = load i32, i32* @ODA_DRAWENTIRE, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %81
  %91 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ODS_FOCUS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90, %74
  %98 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %98, i32 0, i32 5
  %100 = call i32 @wine_dbgstr_rect(%struct.TYPE_33__* %99)
  %101 = sext i32 %100 to i64
  %102 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %101)
  br label %157

103:                                              ; preds = %90, %81
  %104 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ODT_COMBOBOX, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %145

109:                                              ; preds = %103
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ODA_DRAWENTIRE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %145

115:                                              ; preds = %109
  %116 = load i32, i32* @comboex, align 4
  %117 = call i64 @TRACE_ON(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %144

119:                                              ; preds = %115
  %120 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @GetWindowRect(i64 %122, %struct.TYPE_33__* %22)
  %124 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @GetWindowRect(i64 %126, %struct.TYPE_33__* %23)
  %128 = call i32 @SetRect(%struct.TYPE_33__* %24, i32 -1, i32 -1, i32 -1, i32 -1)
  %129 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %119
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @GetWindowRect(i64 %136, %struct.TYPE_33__* %24)
  br label %138

138:                                              ; preds = %133, %119
  %139 = call i32 @wine_dbgstr_rect(%struct.TYPE_33__* %22)
  %140 = sext i32 %139 to i64
  %141 = call i32 @wine_dbgstr_rect(%struct.TYPE_33__* %23)
  %142 = call i32 @wine_dbgstr_rect(%struct.TYPE_33__* %24)
  %143 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %138, %115
  br label %156

145:                                              ; preds = %109, %103
  %146 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %146, i32 0, i32 5
  %148 = call i32 @wine_dbgstr_rect(%struct.TYPE_33__* %147)
  %149 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i32 %148, i32 %151, i32 %154)
  store i32 0, i32* %3, align 4
  br label %737

156:                                              ; preds = %144
  br label %157

157:                                              ; preds = %156, %97
  br label %158

158:                                              ; preds = %157, %2
  %159 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %224

163:                                              ; preds = %158
  %164 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %164, i32 0, i32 5
  store %struct.TYPE_38__* %165, %struct.TYPE_38__** %6, align 8
  %166 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %223

170:                                              ; preds = %163
  %171 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %172 = call i32 @COMBOEX_FreeText(%struct.TYPE_38__* %171)
  %173 = load i32, i32* @CBEIF_TEXT, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @GetWindowTextLengthW(i64 %181)
  store i32 %182, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %222

184:                                              ; preds = %170
  %185 = load i32, i32* @CBEIF_TEXT, align 4
  %186 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = call i64 @Alloc(i32 %194)
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i32 0, i32 6
  store i64 %195, i64* %197, align 8
  %198 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %184
  %203 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %206, i32 0, i32 6
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 1
  %211 = call i32 @GetWindowTextW(i64 %205, i64 %208, i32 %210)
  br label %212

212:                                              ; preds = %202, %184
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @debugstr_txt(i64 %219)
  %221 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %215, i32 %216, i32 %220)
  br label %222

222:                                              ; preds = %212, %170
  br label %223

223:                                              ; preds = %222, %163
  br label %224

224:                                              ; preds = %223, %158
  %225 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %226 = icmp ne %struct.TYPE_38__* %225, null
  br i1 %226, label %243, label %227

227:                                              ; preds = %224
  %228 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %229 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call %struct.TYPE_38__* @get_item_data(%struct.TYPE_37__* %228, i32 %231)
  store %struct.TYPE_38__* %232, %struct.TYPE_38__** %6, align 8
  %233 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %234 = load i64, i64* @CB_ERR, align 8
  %235 = inttoptr i64 %234 to %struct.TYPE_38__*
  %236 = icmp eq %struct.TYPE_38__* %233, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %227
  %238 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %240)
  store i32 0, i32* %3, align 4
  br label %737

242:                                              ; preds = %227
  br label %243

243:                                              ; preds = %242, %224
  %244 = load i32, i32* @comboex, align 4
  %245 = call i64 @TRACE_ON(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  %248 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %249 = call i32 @COMBOEX_DumpItem(%struct.TYPE_38__* %248)
  br label %250

250:                                              ; preds = %247, %243
  %251 = load i32, i32* @CBE_STARTOFFSET, align 4
  store i32 %251, i32* %10, align 4
  %252 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @CBEIF_INDENT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %312

258:                                              ; preds = %250
  %259 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @ODS_COMBOEXLBOX, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %312

265:                                              ; preds = %258
  %266 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %25, align 4
  %269 = load i32, i32* %25, align 4
  %270 = load i32, i32* @I_INDENTCALLBACK, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %306

272:                                              ; preds = %265
  %273 = call i32 @ZeroMemory(%struct.TYPE_34__* %26, i32 28)
  %274 = load i32, i32* @CBEIF_INDENT, align 4
  %275 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 4
  %277 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %280, i32 0, i32 6
  store i32 %279, i32* %281, align 4
  %282 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 4
  %287 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %288 = load i32, i32* @CBEN_GETDISPINFOW, align 4
  %289 = call i32 @COMBOEX_NotifyItem(%struct.TYPE_37__* %287, i32 %288, %struct.TYPE_34__* %26)
  %290 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @CBEIF_DI_SETITEM, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %272
  %297 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %300, i32 0, i32 1
  store i32 %299, i32* %301, align 4
  br label %302

302:                                              ; preds = %296, %272
  %303 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %25, align 4
  br label %306

306:                                              ; preds = %302, %265
  %307 = load i32, i32* %25, align 4
  %308 = load i32, i32* @CBE_INDENT, align 4
  %309 = mul nsw i32 %307, %308
  %310 = load i32, i32* %10, align 4
  %311 = add nsw i32 %310, %309
  store i32 %311, i32* %10, align 4
  br label %312

312:                                              ; preds = %306, %258, %250
  store i32 -2, i32* %18, align 4
  %313 = load i32, i32* @ILD_NORMAL, align 4
  store i32 %313, i32* %19, align 4
  %314 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = icmp eq i32 %316, %319
  %321 = zext i1 %320 to i32
  store i32 %321, i32* %21, align 4
  %322 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @CBEIF_IMAGE, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %312
  %329 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  store i32 %331, i32* %18, align 4
  br label %332

332:                                              ; preds = %328, %312
  %333 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @CBEIF_SELECTEDIMAGE, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %346

339:                                              ; preds = %332
  %340 = load i32, i32* %21, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %339
  %343 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  store i32 %345, i32* %18, align 4
  br label %346

346:                                              ; preds = %342, %339, %332
  %347 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @ODS_COMBOEXLBOX, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %363

353:                                              ; preds = %346
  %354 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @ODS_SELECTED, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %353
  %361 = load i32, i32* @ILD_SELECTED, align 4
  store i32 %361, i32* %19, align 4
  br label %362

362:                                              ; preds = %360, %353
  br label %390

363:                                              ; preds = %346
  %364 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %364, i32 0, i32 3
  %366 = load i64, i64* %365, align 8
  %367 = call i64 @IsWindowVisible(i64 %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %379

369:                                              ; preds = %363
  %370 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @WCBE_EDITFOCUSED, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %369
  %377 = load i32, i32* @ILD_SELECTED, align 4
  store i32 %377, i32* %19, align 4
  br label %378

378:                                              ; preds = %376, %369
  br label %389

379:                                              ; preds = %363
  %380 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @ODS_SELECTED, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %379
  %387 = load i32, i32* @ILD_SELECTED, align 4
  store i32 %387, i32* %19, align 4
  br label %388

388:                                              ; preds = %386, %379
  br label %389

389:                                              ; preds = %388, %378
  br label %390

390:                                              ; preds = %389, %362
  %391 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %391, i32 0, i32 4
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %420

395:                                              ; preds = %390
  %396 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @CBES_EX_NOEDITIMAGEINDENT, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %420, label %402

402:                                              ; preds = %395
  %403 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %403, i32 0, i32 1
  store i32 0, i32* %404, align 4
  %405 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %405, i32 0, i32 0
  store i32 0, i32* %406, align 4
  %407 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %407, i32 0, i32 4
  %409 = load i64, i64* %408, align 8
  %410 = call i32 @ImageList_GetImageInfo(i64 %409, i32 0, %struct.TYPE_35__* %27)
  %411 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = sub nsw i32 %413, %416
  %418 = load i32, i32* @CBE_SEP, align 4
  %419 = add nsw i32 %417, %418
  store i32 %419, i32* %20, align 4
  br label %421

420:                                              ; preds = %395, %390
  store i32 0, i32* %20, align 4
  br label %421

421:                                              ; preds = %420, %402
  %422 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %423 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %424 = call i32* @COMBOEX_GetText(%struct.TYPE_37__* %422, %struct.TYPE_38__* %423)
  store i32* %424, i32** %9, align 8
  %425 = load i32*, i32** %9, align 8
  %426 = icmp ne i32* %425, null
  br i1 %426, label %428, label %427

427:                                              ; preds = %421
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @COMBOEX_DrawItem.nil, i64 0, i64 0), i32** %9, align 8
  br label %428

428:                                              ; preds = %427, %421
  %429 = load i32*, i32** %9, align 8
  %430 = call i32 @strlenW(i32* %429)
  store i32 %430, i32* %13, align 4
  %431 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %431, i32 0, i32 4
  %433 = load i32, i32* %432, align 4
  %434 = load i32*, i32** %9, align 8
  %435 = load i32, i32* %13, align 4
  %436 = call i32 @GetTextExtentPoint32W(i32 %433, i32* %434, i32 %435, %struct.TYPE_32__* %7)
  %437 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* @ODA_SELECT, align 4
  %441 = load i32, i32* @ODA_DRAWENTIRE, align 4
  %442 = or i32 %440, %441
  %443 = and i32 %439, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %702

445:                                              ; preds = %428
  %446 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %447 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %446, i32 0, i32 4
  %448 = load i32, i32* %447, align 8
  store i32 %448, i32* %28, align 4
  %449 = load i32, i32* %18, align 4
  %450 = load i32, i32* @I_IMAGECALLBACK, align 4
  %451 = icmp eq i32 %449, %450
  br i1 %451, label %452, label %514

452:                                              ; preds = %445
  %453 = call i32 @ZeroMemory(%struct.TYPE_34__* %29, i32 28)
  %454 = load i32, i32* %21, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %452
  %457 = load i32, i32* @CBEIF_SELECTEDIMAGE, align 4
  br label %460

458:                                              ; preds = %452
  %459 = load i32, i32* @CBEIF_IMAGE, align 4
  br label %460

460:                                              ; preds = %458, %456
  %461 = phi i32 [ %457, %456 ], [ %459, %458 ]
  %462 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %462, i32 0, i32 0
  store i32 %461, i32* %463, align 4
  %464 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %464, i32 0, i32 5
  %466 = load i32, i32* %465, align 4
  %467 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %467, i32 0, i32 6
  store i32 %466, i32* %468, align 4
  %469 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %472, i32 0, i32 1
  store i32 %471, i32* %473, align 4
  %474 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %475 = load i32, i32* @CBEN_GETDISPINFOW, align 4
  %476 = call i32 @COMBOEX_NotifyItem(%struct.TYPE_37__* %474, i32 %475, %struct.TYPE_34__* %29)
  %477 = load i32, i32* %21, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %496, label %479

479:                                              ; preds = %460
  %480 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @CBEIF_DI_SETITEM, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %492

486:                                              ; preds = %479
  %487 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %487, i32 0, i32 3
  %489 = load i32, i32* %488, align 4
  %490 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %491 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %490, i32 0, i32 2
  store i32 %489, i32* %491, align 8
  br label %492

492:                                              ; preds = %486, %479
  %493 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %493, i32 0, i32 3
  %495 = load i32, i32* %494, align 4
  store i32 %495, i32* %18, align 4
  br label %513

496:                                              ; preds = %460
  %497 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* @CBEIF_DI_SETITEM, align 4
  %501 = and i32 %499, %500
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %509

503:                                              ; preds = %496
  %504 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %504, i32 0, i32 4
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %507, i32 0, i32 3
  store i32 %506, i32* %508, align 4
  br label %509

509:                                              ; preds = %503, %496
  %510 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %510, i32 0, i32 4
  %512 = load i32, i32* %511, align 4
  store i32 %512, i32* %18, align 4
  br label %513

513:                                              ; preds = %509, %492
  br label %514

514:                                              ; preds = %513, %445
  %515 = load i32, i32* %28, align 4
  %516 = load i32, i32* @I_IMAGECALLBACK, align 4
  %517 = icmp eq i32 %515, %516
  br i1 %517, label %518, label %552

518:                                              ; preds = %514
  %519 = call i32 @ZeroMemory(%struct.TYPE_34__* %30, i32 28)
  %520 = load i32, i32* @CBEIF_OVERLAY, align 4
  %521 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %30, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %521, i32 0, i32 0
  store i32 %520, i32* %522, align 4
  %523 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %524 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %523, i32 0, i32 5
  %525 = load i32, i32* %524, align 4
  %526 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %30, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %526, i32 0, i32 6
  store i32 %525, i32* %527, align 4
  %528 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %30, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %531, i32 0, i32 1
  store i32 %530, i32* %532, align 4
  %533 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %534 = load i32, i32* @CBEN_GETDISPINFOW, align 4
  %535 = call i32 @COMBOEX_NotifyItem(%struct.TYPE_37__* %533, i32 %534, %struct.TYPE_34__* %30)
  %536 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %30, i32 0, i32 0
  %537 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 4
  %539 = load i32, i32* @CBEIF_DI_SETITEM, align 4
  %540 = and i32 %538, %539
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %548

542:                                              ; preds = %518
  %543 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %30, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %543, i32 0, i32 5
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %546, i32 0, i32 4
  store i32 %545, i32* %547, align 8
  br label %548

548:                                              ; preds = %542, %518
  %549 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %30, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %549, i32 0, i32 5
  %551 = load i32, i32* %550, align 4
  store i32 %551, i32* %28, align 4
  br label %552

552:                                              ; preds = %548, %514
  %553 = load i32, i32* %18, align 4
  %554 = icmp sge i32 %553, 0
  br i1 %554, label %555, label %596

555:                                              ; preds = %552
  %556 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %557 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = load i32, i32* @CBES_EX_NOEDITIMAGE, align 4
  %560 = load i32, i32* @CBES_EX_NOEDITIMAGEINDENT, align 4
  %561 = or i32 %559, %560
  %562 = and i32 %558, %561
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %596, label %564

564:                                              ; preds = %555
  %565 = load i32, i32* %28, align 4
  %566 = icmp sgt i32 %565, 0
  br i1 %566, label %567, label %573

567:                                              ; preds = %564
  %568 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %569 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %568, i32 0, i32 4
  %570 = load i64, i64* %569, align 8
  %571 = load i32, i32* %28, align 4
  %572 = call i32 @ImageList_SetOverlayImage(i64 %570, i32 %571, i32 1)
  br label %573

573:                                              ; preds = %567, %564
  %574 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %575 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %574, i32 0, i32 4
  %576 = load i64, i64* %575, align 8
  %577 = load i32, i32* %18, align 4
  %578 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %579 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %578, i32 0, i32 4
  %580 = load i32, i32* %579, align 4
  %581 = load i32, i32* %10, align 4
  %582 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %583 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %582, i32 0, i32 5
  %584 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 8
  %586 = load i32, i32* %19, align 4
  %587 = load i32, i32* %28, align 4
  %588 = icmp sgt i32 %587, 0
  br i1 %588, label %589, label %591

589:                                              ; preds = %573
  %590 = call i32 @INDEXTOOVERLAYMASK(i32 1)
  br label %592

591:                                              ; preds = %573
  br label %592

592:                                              ; preds = %591, %589
  %593 = phi i32 [ %590, %589 ], [ 0, %591 ]
  %594 = or i32 %586, %593
  %595 = call i32 @ImageList_Draw(i64 %576, i32 %577, i32 %580, i32 %581, i32 %585, i32 %594)
  br label %596

596:                                              ; preds = %592, %555, %552
  %597 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %598 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %597, i32 0, i32 3
  %599 = load i64, i64* %598, align 8
  %600 = call i64 @IsWindowVisible(i64 %599)
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %701, label %602

602:                                              ; preds = %596
  %603 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %604 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %603, i32 0, i32 3
  %605 = load i32, i32* %604, align 8
  %606 = load i32, i32* @ODS_SELECTED, align 4
  %607 = and i32 %605, %606
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %611

609:                                              ; preds = %602
  %610 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @comctl32_color, i32 0, i32 3), align 4
  br label %613

611:                                              ; preds = %602
  %612 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @comctl32_color, i32 0, i32 2), align 4
  br label %613

613:                                              ; preds = %611, %609
  %614 = phi i32 [ %610, %609 ], [ %612, %611 ]
  store i32 %614, i32* %14, align 4
  %615 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %616 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %615, i32 0, i32 4
  %617 = load i32, i32* %616, align 4
  %618 = load i32, i32* %14, align 4
  %619 = call i32 @SetBkColor(i32 %617, i32 %618)
  store i32 %619, i32* %16, align 4
  %620 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %621 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %620, i32 0, i32 3
  %622 = load i32, i32* %621, align 8
  %623 = load i32, i32* @ODS_SELECTED, align 4
  %624 = and i32 %622, %623
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %628

626:                                              ; preds = %613
  %627 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @comctl32_color, i32 0, i32 1), align 4
  br label %630

628:                                              ; preds = %613
  %629 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @comctl32_color, i32 0, i32 0), align 4
  br label %630

630:                                              ; preds = %628, %626
  %631 = phi i32 [ %627, %626 ], [ %629, %628 ]
  store i32 %631, i32* %15, align 4
  %632 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %633 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %632, i32 0, i32 4
  %634 = load i32, i32* %633, align 4
  %635 = load i32, i32* %15, align 4
  %636 = call i32 @SetTextColor(i32 %634, i32 %635)
  store i32 %636, i32* %17, align 4
  %637 = load i32, i32* %10, align 4
  %638 = load i32, i32* %20, align 4
  %639 = add nsw i32 %637, %638
  store i32 %639, i32* %11, align 4
  %640 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %641 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %640, i32 0, i32 5
  %642 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %641, i32 0, i32 0
  %643 = load i32, i32* %642, align 8
  %644 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %645 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %644, i32 0, i32 5
  %646 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 4
  %648 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %649 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %648, i32 0, i32 5
  %650 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 8
  %652 = sub nsw i32 %647, %651
  %653 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  %654 = load i32, i32* %653, align 4
  %655 = sub nsw i32 %652, %654
  %656 = sdiv i32 %655, 2
  %657 = add nsw i32 %643, %656
  store i32 %657, i32* %12, align 4
  %658 = load i32, i32* %11, align 4
  %659 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %660 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %659, i32 0, i32 5
  %661 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 8
  %663 = add nsw i32 %662, 1
  %664 = load i32, i32* %11, align 4
  %665 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  %666 = load i32, i32* %665, align 4
  %667 = add nsw i32 %664, %666
  %668 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %669 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %668, i32 0, i32 5
  %670 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %669, i32 0, i32 1
  %671 = load i32, i32* %670, align 4
  %672 = sub nsw i32 %671, 1
  %673 = call i32 @SetRect(%struct.TYPE_33__* %8, i32 %658, i32 %663, i32 %667, i32 %672)
  %674 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %675 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %674, i32 0, i32 1
  %676 = load i32, i32* %675, align 8
  %677 = sext i32 %676 to i64
  %678 = call i32 @wine_dbgstr_rect(%struct.TYPE_33__* %8)
  %679 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %677, i32 %678)
  %680 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %681 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %680, i32 0, i32 4
  %682 = load i32, i32* %681, align 4
  %683 = load i32, i32* %11, align 4
  %684 = load i32, i32* %12, align 4
  %685 = load i32, i32* @ETO_OPAQUE, align 4
  %686 = load i32, i32* @ETO_CLIPPED, align 4
  %687 = or i32 %685, %686
  %688 = load i32*, i32** %9, align 8
  %689 = load i32, i32* %13, align 4
  %690 = call i32 @ExtTextOutW(i32 %682, i32 %683, i32 %684, i32 %687, %struct.TYPE_33__* %8, i32* %688, i32 %689, i32 0)
  %691 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %692 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %691, i32 0, i32 4
  %693 = load i32, i32* %692, align 4
  %694 = load i32, i32* %16, align 4
  %695 = call i32 @SetBkColor(i32 %693, i32 %694)
  %696 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %697 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %696, i32 0, i32 4
  %698 = load i32, i32* %697, align 4
  %699 = load i32, i32* %17, align 4
  %700 = call i32 @SetTextColor(i32 %698, i32 %699)
  br label %701

701:                                              ; preds = %630, %596
  br label %702

702:                                              ; preds = %701, %428
  %703 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %704 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %703, i32 0, i32 2
  %705 = load i32, i32* %704, align 4
  %706 = load i32, i32* @ODA_FOCUS, align 4
  %707 = and i32 %705, %706
  %708 = icmp ne i32 %707, 0
  br i1 %708, label %709, label %736

709:                                              ; preds = %702
  %710 = load i32, i32* %10, align 4
  %711 = load i32, i32* %20, align 4
  %712 = add nsw i32 %710, %711
  %713 = sub nsw i32 %712, 1
  %714 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 2
  store i32 %713, i32* %714, align 4
  %715 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 2
  %716 = load i32, i32* %715, align 4
  %717 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  %718 = load i32, i32* %717, align 4
  %719 = add nsw i32 %716, %718
  %720 = add nsw i32 %719, 2
  %721 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 3
  store i32 %720, i32* %721, align 4
  %722 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %723 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %722, i32 0, i32 5
  %724 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %723, i32 0, i32 0
  %725 = load i32, i32* %724, align 8
  %726 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 0
  store i32 %725, i32* %726, align 4
  %727 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %728 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %727, i32 0, i32 5
  %729 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %728, i32 0, i32 1
  %730 = load i32, i32* %729, align 4
  %731 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 1
  store i32 %730, i32* %731, align 4
  %732 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %733 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %732, i32 0, i32 4
  %734 = load i32, i32* %733, align 4
  %735 = call i32 @DrawFocusRect(i32 %734, %struct.TYPE_33__* %8)
  br label %736

736:                                              ; preds = %709, %702
  store i32 0, i32* %3, align 4
  br label %737

737:                                              ; preds = %736, %237, %145
  %738 = load i32, i32* %3, align 4
  ret i32 %738
}

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_33__*) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @GetWindowRect(i64, %struct.TYPE_33__*) #1

declare dso_local i32 @SetRect(%struct.TYPE_33__*, i32, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, i32, ...) #1

declare dso_local i32 @COMBOEX_FreeText(%struct.TYPE_38__*) #1

declare dso_local i32 @GetWindowTextLengthW(i64) #1

declare dso_local i64 @Alloc(i32) #1

declare dso_local i32 @GetWindowTextW(i64, i64, i32) #1

declare dso_local i32 @debugstr_txt(i64) #1

declare dso_local %struct.TYPE_38__* @get_item_data(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @COMBOEX_DumpItem(%struct.TYPE_38__*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @COMBOEX_NotifyItem(%struct.TYPE_37__*, i32, %struct.TYPE_34__*) #1

declare dso_local i64 @IsWindowVisible(i64) #1

declare dso_local i32 @ImageList_GetImageInfo(i64, i32, %struct.TYPE_35__*) #1

declare dso_local i32* @COMBOEX_GetText(%struct.TYPE_37__*, %struct.TYPE_38__*) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @GetTextExtentPoint32W(i32, i32*, i32, %struct.TYPE_32__*) #1

declare dso_local i32 @ImageList_SetOverlayImage(i64, i32, i32) #1

declare dso_local i32 @ImageList_Draw(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INDEXTOOVERLAYMASK(i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @ExtTextOutW(i32, i32, i32, i32, %struct.TYPE_33__*, i32*, i32, i32) #1

declare dso_local i32 @DrawFocusRect(i32, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
