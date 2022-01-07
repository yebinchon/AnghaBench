; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_WMInitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_WMInitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8*, i32, i8*, i64, i32 }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_7__*, i32 }

@BUFFILE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FD31_OFN_PROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"flags=%x initialdir=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"lpstrCustomFilter = %p\0A\00", align 1
@cmb1 = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"add str=%s associated to %s\0A\00", align 1
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"SetText of edt1 to %s\0A\00", align 1
@edt1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"nFilterIndex = %d, SetText of edt1 to %s\0A\00", align 1
@cmb2 = common dso_local global i32 0, align 4
@DDL_DRIVES = common dso_local global i32 0, align 4
@DDL_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Couldn't read initial directory %s!\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@__const.FD31_WMInitDialog.str = private unnamed_addr constant [4 x i8] c"a:\\\00", align 1
@DRIVE_NO_ROOT_DIR = common dso_local global i64 0, align 8
@OFN_SHOWHELP = common dso_local global i32 0, align 4
@pshHelp = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@OFN_HIDEREADONLY = common dso_local global i32 0, align 4
@chx1 = common dso_local global i32 0, align 4
@WM_INITDIALOG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @FD31_WMInitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FD31_WMInitDialog(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [4 x i8], align 1
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %21 = load i32, i32* @BUFFILE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %15, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %388

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @FD31_OFN_PROP, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %35 = call i32 @SetPropA(i32 %32, i32 %33, %struct.TYPE_6__* %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %14, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @debugstr_w(i8* %47)
  %49 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @SetWindowTextW(i32 %50, i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %117

59:                                               ; preds = %31
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %12, align 8
  store i32 0, i32* %9, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %69, %59
  %66 = load i8*, i8** %12, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %116

69:                                               ; preds = %65
  %70 = load i8*, i8** %12, align 8
  store i8* %70, i8** %13, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @cmb1, align 4
  %73 = load i32, i32* @CB_ADDSTRING, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = call i32 @SendDlgItemMessageW(i32 %71, i32 %72, i32 %73, i32 0, i64 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @lstrlenW(i8* %82)
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @lstrlenW(i8* %87)
  %89 = add nsw i32 %88, 1
  %90 = load i8*, i8** %12, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %12, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 @debugstr_w(i8* %93)
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @debugstr_w(i8* %95)
  %97 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @cmb1, align 4
  %100 = load i32, i32* @CB_SETITEMDATA, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = ptrtoint i8* %102 to i64
  %104 = call i32 @SendDlgItemMessageW(i32 %98, i32 %99, i32 %100, i32 %101, i64 %103)
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @lstrlenW(i8* %105)
  %107 = add nsw i32 %106, 1
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @lstrlenW(i8* %110)
  %112 = add nsw i32 %111, 1
  %113 = load i8*, i8** %12, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %12, align 8
  br label %65

116:                                              ; preds = %65
  br label %117

117:                                              ; preds = %116, %31
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %178

122:                                              ; preds = %117
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %131, %122
  %128 = load i8*, i8** %12, align 8
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %177

131:                                              ; preds = %127
  %132 = load i8*, i8** %12, align 8
  store i8* %132, i8** %13, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @cmb1, align 4
  %135 = load i32, i32* @CB_ADDSTRING, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = call i32 @SendDlgItemMessageW(i32 %133, i32 %134, i32 %135, i32 0, i64 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @lstrlenW(i8* %143)
  %145 = add nsw i32 %144, 1
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %9, align 4
  %148 = load i8*, i8** %12, align 8
  %149 = call i32 @lstrlenW(i8* %148)
  %150 = add nsw i32 %149, 1
  %151 = load i8*, i8** %12, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8* %153, i8** %12, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = call i32 @debugstr_w(i8* %154)
  %156 = load i8*, i8** %12, align 8
  %157 = call i32 @debugstr_w(i8* %156)
  %158 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %155, i32 %157)
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @cmb1, align 4
  %161 = load i32, i32* @CB_SETITEMDATA, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i8*, i8** %12, align 8
  %164 = ptrtoint i8* %163 to i64
  %165 = call i32 @SendDlgItemMessageW(i32 %159, i32 %160, i32 %161, i32 %162, i64 %164)
  %166 = load i8*, i8** %12, align 8
  %167 = call i32 @lstrlenW(i8* %166)
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %9, align 4
  %171 = load i8*, i8** %12, align 8
  %172 = call i32 @lstrlenW(i8* %171)
  %173 = add nsw i32 %172, 1
  %174 = load i8*, i8** %12, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8* %176, i8** %12, align 8
  br label %127

177:                                              ; preds = %127
  br label %178

178:                                              ; preds = %177, %117
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = icmp eq i8* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 3
  store i32 1, i32* %190, align 8
  br label %191

191:                                              ; preds = %188, %183, %178
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @cmb1, align 4
  %194 = load i32, i32* @CB_SETCURSEL, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %197, 1
  %199 = call i32 @SendDlgItemMessageW(i32 %192, i32 %193, i32 %194, i32 %198, i64 0)
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 4
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %224

204:                                              ; preds = %191
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 4
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %204
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 4
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @debugstr_w(i8* %215)
  %217 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* @edt1, align 4
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 4
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @SetDlgItemTextW(i32 %218, i32 %219, i8* %222)
  br label %246

224:                                              ; preds = %204, %191
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %233, 1
  %235 = call i8* @FD31_GetFileType(i8* %227, i64 %230, i32 %234)
  %236 = load i32, i32* @BUFFILE, align 4
  %237 = call i32 @lstrcpynW(i8* %24, i8* %235, i32 %236)
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @debugstr_w(i8* %24)
  %242 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %240, i32 %241)
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* @edt1, align 4
  %245 = call i32 @SetDlgItemTextW(i32 %243, i32 %244, i8* %24)
  br label %246

246:                                              ; preds = %224, %212
  store i8 0, i8* %24, align 16
  %247 = load i32, i32* %5, align 4
  %248 = load i32, i32* @cmb2, align 4
  %249 = load i32, i32* @DDL_DRIVES, align 4
  %250 = load i32, i32* @DDL_EXCLUSIVE, align 4
  %251 = or i32 %249, %250
  %252 = call i32 @DlgDirListComboBoxW(i32 %247, i8* %24, i32 %248, i32 0, i32 %251)
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %290

257:                                              ; preds = %246
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @lstrcpynW(i8* %24, i8* %260, i32 511)
  %262 = call i32 @lstrlenW(i8* %24)
  store i32 %262, i32* %17, align 4
  %263 = load i32, i32* %17, align 4
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %289

265:                                              ; preds = %257
  %266 = load i32, i32* %17, align 4
  %267 = sub nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %24, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp ne i32 %271, 92
  br i1 %272, label %273, label %289

273:                                              ; preds = %265
  %274 = load i32, i32* %17, align 4
  %275 = sub nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %24, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp ne i32 %279, 58
  br i1 %280, label %281, label %289

281:                                              ; preds = %273
  %282 = load i32, i32* %17, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %24, i64 %283
  store i8 92, i8* %284, align 1
  %285 = load i32, i32* %17, align 4
  %286 = add nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %24, i64 %287
  store i8 0, i8* %288, align 1
  br label %289

289:                                              ; preds = %281, %273, %265, %257
  br label %291

290:                                              ; preds = %246
  store i8 0, i8* %24, align 16
  br label %291

291:                                              ; preds = %290, %289
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %293 = load i32, i32* %5, align 4
  %294 = call i32 @FD31_ScanDir(%struct.TYPE_7__* %292, i32 %293, i8* %24)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %305, label %296

296:                                              ; preds = %291
  store i8 0, i8* %24, align 16
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %298 = load i32, i32* %5, align 4
  %299 = call i32 @FD31_ScanDir(%struct.TYPE_7__* %297, i32 %298, i8* %24)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %296
  %302 = call i32 @debugstr_w(i8* %24)
  %303 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %302)
  br label %304

304:                                              ; preds = %301, %296
  br label %305

305:                                              ; preds = %304, %291
  %306 = load i32, i32* @MAX_PATH, align 4
  %307 = zext i32 %306 to i64
  %308 = call i8* @llvm.stacksave()
  store i8* %308, i8** %18, align 8
  %309 = alloca i8, i64 %307, align 16
  store i64 %307, i64* %19, align 8
  %310 = bitcast [4 x i8]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %310, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.FD31_WMInitDialog.str, i32 0, i32 0), i64 4, i1 false)
  %311 = trunc i64 %307 to i32
  %312 = call i32 @GetCurrentDirectoryA(i32 %311, i8* %309)
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  br label %313

313:                                              ; preds = %338, %305
  %314 = load i32, i32* %8, align 4
  %315 = icmp slt i32 %314, 26
  br i1 %315, label %316, label %341

316:                                              ; preds = %313
  %317 = load i32, i32* %8, align 4
  %318 = add nsw i32 97, %317
  %319 = trunc i32 %318 to i8
  %320 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  store i8 %319, i8* %320, align 1
  %321 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %322 = call i64 @GetDriveTypeA(i8* %321)
  %323 = load i64, i64* @DRIVE_NO_ROOT_DIR, align 8
  %324 = icmp sgt i64 %322, %323
  br i1 %324, label %325, label %328

325:                                              ; preds = %316
  %326 = load i32, i32* %9, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %9, align 4
  br label %328

328:                                              ; preds = %325, %316
  %329 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %330 = load i8, i8* %329, align 1
  %331 = call i64 @toupper(i8 signext %330)
  %332 = getelementptr inbounds i8, i8* %309, i64 0
  %333 = load i8, i8* %332, align 16
  %334 = call i64 @toupper(i8 signext %333)
  %335 = icmp eq i64 %331, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %328
  br label %341

337:                                              ; preds = %328
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %8, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %8, align 4
  br label %313

341:                                              ; preds = %336, %313
  %342 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %342)
  %343 = load i32, i32* %5, align 4
  %344 = load i32, i32* @cmb2, align 4
  %345 = load i32, i32* @CB_SETCURSEL, align 4
  %346 = load i32, i32* %9, align 4
  %347 = call i32 @SendDlgItemMessageW(i32 %343, i32 %344, i32 %345, i32 %346, i64 0)
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @OFN_SHOWHELP, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %360, label %354

354:                                              ; preds = %341
  %355 = load i32, i32* %5, align 4
  %356 = load i32, i32* @pshHelp, align 4
  %357 = call i32 @GetDlgItem(i32 %355, i32 %356)
  %358 = load i32, i32* @SW_HIDE, align 4
  %359 = call i32 @ShowWindow(i32 %357, i32 %358)
  br label %360

360:                                              ; preds = %354, %341
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @OFN_HIDEREADONLY, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %360
  %368 = load i32, i32* %5, align 4
  %369 = load i32, i32* @chx1, align 4
  %370 = call i32 @GetDlgItem(i32 %368, i32 %369)
  %371 = load i32, i32* @SW_HIDE, align 4
  %372 = call i32 @ShowWindow(i32 %370, i32 %371)
  br label %373

373:                                              ; preds = %367, %360
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %386

378:                                              ; preds = %373
  %379 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %380 = load i32, i32* @WM_INITDIALOG, align 4
  %381 = load i32, i32* %6, align 4
  %382 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @FD31_CallWindowProc(%struct.TYPE_6__* %379, i32 %380, i32 %381, i32 %384)
  store i32 %385, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %388

386:                                              ; preds = %373
  %387 = load i32, i32* @TRUE, align 4
  store i32 %387, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %388

388:                                              ; preds = %386, %378, %29
  %389 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %389)
  %390 = load i32, i32* %4, align 4
  ret i32 %390
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetPropA(i32, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i32 @SetWindowTextW(i32, i32) #2

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i64) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @SetDlgItemTextW(i32, i32, i8*) #2

declare dso_local i32 @lstrcpynW(i8*, i8*, i32) #2

declare dso_local i8* @FD31_GetFileType(i8*, i64, i32) #2

declare dso_local i32 @DlgDirListComboBoxW(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @FD31_ScanDir(%struct.TYPE_7__*, i32, i8*) #2

declare dso_local i32 @WARN(i8*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @GetCurrentDirectoryA(i32, i8*) #2

declare dso_local i64 @GetDriveTypeA(i8*) #2

declare dso_local i64 @toupper(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @ShowWindow(i32, i32) #2

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i32 @FD31_CallWindowProc(%struct.TYPE_6__*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
