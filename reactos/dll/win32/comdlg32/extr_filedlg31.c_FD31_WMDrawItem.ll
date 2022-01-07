; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_WMDrawItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_WMDrawItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@ODT_LISTBOX = common dso_local global i64 0, align 8
@lst1 = common dso_local global i64 0, align 8
@BUFFILEALLOC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@ODS_SELECTED = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHT = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHTTEXT = common dso_local global i32 0, align 4
@COLOR_GRAYTEXT = common dso_local global i32 0, align 4
@ETO_OPAQUE = common dso_local global i32 0, align 4
@ETO_CLIPPED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@lst2 = common dso_local global i64 0, align 8
@fldrWidth = common dso_local global i64 0, align 8
@hFolder = common dso_local global i32 0, align 4
@DI_NORMAL = common dso_local global i32 0, align 4
@ODT_COMBOBOX = common dso_local global i64 0, align 8
@cmb2 = common dso_local global i64 0, align 8
@__const.FD31_WMDrawItem.root = private unnamed_addr constant [3 x i8] c"a:\00", align 1
@CB_GETLBTEXT = common dso_local global i32 0, align 4
@hFloppy = common dso_local global i32 0, align 4
@hCDRom = common dso_local global i32 0, align 4
@hNet = common dso_local global i32 0, align 4
@hHDisk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.TYPE_5__*)* @FD31_WMDrawItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FD31_WMDrawItem(i32 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x i8], align 1
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ODT_LISTBOX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %138

22:                                               ; preds = %5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @lst1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %138

28:                                               ; preds = %22
  %29 = load i32, i32* @BUFFILEALLOC, align 4
  %30 = call i8* @heap_alloc(i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %6, align 4
  br label %391

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @LB_GETTEXT, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = call i32 @SendMessageW(i32 %37, i32 %38, i32 %41, i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ODS_SELECTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %34
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @COLOR_HIGHLIGHT, align 4
  %59 = call i32 @GetSysColor(i32 %58)
  %60 = call i32 @SetBkColor(i32 %57, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @COLOR_HIGHLIGHTTEXT, align 4
  %65 = call i32 @GetSysColor(i32 %64)
  %66 = call i32 @SetTextColor(i32 %63, i32 %65)
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %54, %51, %34
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @COLOR_GRAYTEXT, align 4
  %75 = call i32 @GetSysColor(i32 %74)
  %76 = call i32 @SetTextColor(i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %70, %67
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  %91 = load i32, i32* @ETO_OPAQUE, align 4
  %92 = load i32, i32* @ETO_CLIPPED, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 @lstrlenW(i8* %97)
  %99 = call i32 @ExtTextOutW(i32 %80, i64 %85, i64 %90, i32 %93, %struct.TYPE_6__* %95, i8* %96, i32 %98, i32* null)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ODS_SELECTED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %77
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = call i32 @DrawFocusRect(i32 %109, %struct.TYPE_6__* %111)
  br label %113

113:                                              ; preds = %106, %77
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ODS_SELECTED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %113
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @SetBkColor(i32 %126, i32 %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @SetTextColor(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %123, %120, %113
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @heap_free(i8* %135)
  %137 = load i32, i32* @TRUE, align 4
  store i32 %137, i32* %6, align 4
  br label %391

138:                                              ; preds = %22, %5
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @ODT_LISTBOX, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %259

144:                                              ; preds = %138
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @lst2, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %259

150:                                              ; preds = %144
  %151 = load i32, i32* @BUFFILEALLOC, align 4
  %152 = call i8* @heap_alloc(i32 %151)
  store i8* %152, i8** %12, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %6, align 4
  br label %391

156:                                              ; preds = %150
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @LB_GETTEXT, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load i8*, i8** %12, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = call i32 @SendMessageW(i32 %159, i32 %160, i32 %163, i32 %165)
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ODS_SELECTED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %156
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @COLOR_HIGHLIGHT, align 4
  %178 = call i32 @GetSysColor(i32 %177)
  %179 = call i32 @SetBkColor(i32 %176, i32 %178)
  store i32 %179, i32* %15, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @COLOR_HIGHLIGHTTEXT, align 4
  %184 = call i32 @GetSysColor(i32 %183)
  %185 = call i32 @SetTextColor(i32 %182, i32 %184)
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %173, %156
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @fldrWidth, align 8
  %195 = add nsw i64 %193, %194
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 1
  %201 = load i32, i32* @ETO_OPAQUE, align 4
  %202 = load i32, i32* @ETO_CLIPPED, align 4
  %203 = or i32 %201, %202
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 3
  %206 = load i8*, i8** %12, align 8
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 @lstrlenW(i8* %207)
  %209 = call i32 @ExtTextOutW(i32 %189, i64 %195, i64 %200, i32 %203, %struct.TYPE_6__* %205, i8* %206, i32 %208, i32* null)
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @ODS_SELECTED, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %186
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 3
  %222 = call i32 @DrawFocusRect(i32 %219, %struct.TYPE_6__* %221)
  br label %223

223:                                              ; preds = %216, %186
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @ODS_SELECTED, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %223
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @SetBkColor(i32 %233, i32 %234)
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %14, align 4
  %240 = call i32 @SetTextColor(i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %230, %223
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i32, i32* @hFolder, align 4
  %254 = load i32, i32* @DI_NORMAL, align 4
  %255 = call i32 @DrawIconEx(i32 %244, i64 %248, i64 %252, i32 %253, i32 16, i32 16, i32 0, i32 0, i32 %254)
  %256 = load i8*, i8** %12, align 8
  %257 = call i32 @heap_free(i8* %256)
  %258 = load i32, i32* @TRUE, align 4
  store i32 %258, i32* %6, align 4
  br label %391

259:                                              ; preds = %144, %138
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @ODT_COMBOBOX, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %389

265:                                              ; preds = %259
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @cmb2, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %389

271:                                              ; preds = %265
  %272 = bitcast [3 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %272, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.FD31_WMDrawItem.root, i32 0, i32 0), i64 3, i1 false)
  %273 = load i32, i32* @BUFFILEALLOC, align 4
  %274 = call i8* @heap_alloc(i32 %273)
  store i8* %274, i8** %12, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %278, label %276

276:                                              ; preds = %271
  %277 = load i32, i32* @FALSE, align 4
  store i32 %277, i32* %6, align 4
  br label %391

278:                                              ; preds = %271
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @CB_GETLBTEXT, align 4
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = load i8*, i8** %12, align 8
  %287 = ptrtoint i8* %286 to i32
  %288 = call i32 @SendMessageW(i32 %281, i32 %282, i32 %285, i32 %287)
  %289 = load i8*, i8** %12, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 2
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = sub nsw i32 %292, 97
  %294 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = add nsw i32 %296, %293
  %298 = trunc i32 %297 to i8
  store i8 %298, i8* %294, align 1
  %299 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %300 = call i32 @GetDriveTypeA(i8* %299)
  switch i32 %300, label %308 [
    i32 128, label %301
    i32 131, label %303
    i32 129, label %305
    i32 130, label %307
  ]

301:                                              ; preds = %278
  %302 = load i32, i32* @hFloppy, align 4
  store i32 %302, i32* %13, align 4
  br label %310

303:                                              ; preds = %278
  %304 = load i32, i32* @hCDRom, align 4
  store i32 %304, i32* %13, align 4
  br label %310

305:                                              ; preds = %278
  %306 = load i32, i32* @hNet, align 4
  store i32 %306, i32* %13, align 4
  br label %310

307:                                              ; preds = %278
  br label %308

308:                                              ; preds = %278, %307
  %309 = load i32, i32* @hHDisk, align 4
  store i32 %309, i32* %13, align 4
  br label %310

310:                                              ; preds = %308, %305, %303, %301
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @ODS_SELECTED, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %330

317:                                              ; preds = %310
  %318 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @COLOR_HIGHLIGHT, align 4
  %322 = call i32 @GetSysColor(i32 %321)
  %323 = call i32 @SetBkColor(i32 %320, i32 %322)
  store i32 %323, i32* %15, align 4
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @COLOR_HIGHLIGHTTEXT, align 4
  %328 = call i32 @GetSysColor(i32 %327)
  %329 = call i32 @SetTextColor(i32 %326, i32 %328)
  store i32 %329, i32* %14, align 4
  br label %330

330:                                              ; preds = %317, %310
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 3
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @fldrWidth, align 8
  %339 = add nsw i64 %337, %338
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %343, 1
  %345 = load i32, i32* @ETO_OPAQUE, align 4
  %346 = load i32, i32* @ETO_CLIPPED, align 4
  %347 = or i32 %345, %346
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 3
  %350 = load i8*, i8** %12, align 8
  %351 = load i8*, i8** %12, align 8
  %352 = call i32 @lstrlenW(i8* %351)
  %353 = call i32 @ExtTextOutW(i32 %333, i64 %339, i64 %344, i32 %347, %struct.TYPE_6__* %349, i8* %350, i32 %352, i32* null)
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @ODS_SELECTED, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %371

360:                                              ; preds = %330
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* %15, align 4
  %365 = call i32 @SetBkColor(i32 %363, i32 %364)
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 4
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %14, align 4
  %370 = call i32 @SetTextColor(i32 %368, i32 %369)
  br label %371

371:                                              ; preds = %360, %330
  %372 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 3
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load i32, i32* %13, align 4
  %384 = load i32, i32* @DI_NORMAL, align 4
  %385 = call i32 @DrawIconEx(i32 %374, i64 %378, i64 %382, i32 %383, i32 16, i32 16, i32 0, i32 0, i32 %384)
  %386 = load i8*, i8** %12, align 8
  %387 = call i32 @heap_free(i8* %386)
  %388 = load i32, i32* @TRUE, align 4
  store i32 %388, i32* %6, align 4
  br label %391

389:                                              ; preds = %265, %259
  %390 = load i32, i32* @FALSE, align 4
  store i32 %390, i32* %6, align 4
  br label %391

391:                                              ; preds = %389, %371, %276, %241, %154, %134, %32
  %392 = load i32, i32* %6, align 4
  ret i32 %392
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @ExtTextOutW(i32, i64, i64, i32, %struct.TYPE_6__*, i8*, i32, i32*) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @DrawFocusRect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @DrawIconEx(i32, i64, i64, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GetDriveTypeA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
