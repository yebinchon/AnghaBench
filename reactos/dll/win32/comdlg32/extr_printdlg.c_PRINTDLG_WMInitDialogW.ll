; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_WMInitDialogW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_WMInitDialogW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32* }

@PD_PRINTSETUP = common dso_local global i32 0, align 4
@cmb1 = common dso_local global i32 0, align 4
@cmb4 = common dso_local global i32 0, align 4
@COMDLG32_hInstance = common dso_local global i32 0, align 4
@pd32_collateW = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@pd32_nocollateW = common dso_local global i32 0, align 4
@pd32_portraitW = common dso_local global i32 0, align 4
@pd32_landscapeW = common dso_local global i32 0, align 4
@ico3 = common dso_local global i32 0, align 4
@STM_SETIMAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no icon in resource file\0A\00", align 1
@CDERR_LOADRESFAILURE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PD_SHOWHELP = common dso_local global i32 0, align 4
@HELPMSGSTRINGW = common dso_local global i32 0, align 4
@CDERR_REGISTERMSGFAIL = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@UDS_NOTHOUSANDS = common dso_local global i32 0, align 4
@UDS_ARROWKEYS = common dso_local global i32 0, align 4
@UDS_ALIGNRIGHT = common dso_local global i32 0, align 4
@UDS_SETBUDDYINT = common dso_local global i32 0, align 4
@UPDOWN_ID = common dso_local global i32 0, align 4
@edt3 = common dso_local global i32 0, align 4
@MAX_COPIES = common dso_local global i32 0, align 4
@PD_NOPAGENUMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"No default printer found, expect problems!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*)* @PRINTDLG_WMInitDialogW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PRINTDLG_WMInitDialogW(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [200 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %6, align 8
  store i32* null, i32** %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PD_PRINTSETUP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @cmb1, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @cmb4, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @COMDLG32_hInstance, align 4
  %30 = load i32, i32* @pd32_collateW, align 4
  %31 = load i32, i32* @IMAGE_ICON, align 4
  %32 = call i8* @LoadImageW(i32 %29, i32 %30, i32 %31, i32 0, i32 0, i32 0)
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @COMDLG32_hInstance, align 4
  %37 = load i32, i32* @pd32_nocollateW, align 4
  %38 = load i32, i32* @IMAGE_ICON, align 4
  %39 = call i8* @LoadImageW(i32 %36, i32 %37, i32 %38, i32 0, i32 0, i32 0)
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @COMDLG32_hInstance, align 4
  %44 = load i32, i32* @pd32_portraitW, align 4
  %45 = call i8* @LoadIconW(i32 %43, i32 %44)
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @COMDLG32_hInstance, align 4
  %50 = load i32, i32* @pd32_landscapeW, align 4
  %51 = call i8* @LoadIconW(i32 %49, i32 %50)
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @ico3, align 4
  %57 = load i32, i32* @STM_SETIMAGE, align 4
  %58 = load i32, i32* @IMAGE_ICON, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @SendDlgItemMessageW(i32 %55, i32 %56, i32 %57, i32 %58, i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %27
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78, %73, %68, %27
  %84 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @CDERR_LOADRESFAILURE, align 4
  %86 = call i32 @COMDLG32_SetCommDlgExtendedError(i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32 @EndDialog(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %78
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PD_SHOWHELP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load i32, i32* @HELPMSGSTRINGW, align 4
  %99 = call i64 @RegisterWindowMessageW(i32 %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  %102 = icmp eq i64 %99, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, i32* @CDERR_REGISTERMSGFAIL, align 4
  %105 = call i32 @COMDLG32_SetCommDlgExtendedError(i32 %104)
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %3, align 4
  br label %314

107:                                              ; preds = %97
  br label %111

108:                                              ; preds = %90
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 5
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %108, %107
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @PD_PRINTSETUP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %142, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* @WS_CHILD, align 4
  %120 = load i32, i32* @WS_VISIBLE, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @WS_BORDER, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @UDS_NOTHOUSANDS, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @UDS_ARROWKEYS, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @UDS_ALIGNRIGHT, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @UDS_SETBUDDYINT, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @UPDOWN_ID, align 4
  %134 = load i32, i32* @COMDLG32_hInstance, align 4
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @edt3, align 4
  %137 = call i64 @GetDlgItem(i32 %135, i32 %136)
  %138 = load i32, i32* @MAX_COPIES, align 4
  %139 = call i32 @CreateUpDownControl(i32 %131, i32 0, i32 0, i32 0, i32 0, i32 %132, i32 %133, i32 %134, i64 %137, i32 %138, i32 1, i32 1)
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %118, %111
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %145, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %150, %142
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %156
  %165 = load i32, i32* @PD_NOPAGENUMS, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %164, %156
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp slt i64 %173, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %170
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %178, %170
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp sgt i64 %187, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %184
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 3
  store i64 %195, i64* %197, align 8
  br label %198

198:                                              ; preds = %192, %184
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp slt i64 %201, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %198
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 4
  store i64 %209, i64* %211, align 8
  br label %212

212:                                              ; preds = %206, %198
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp sgt i64 %215, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %212
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 4
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %220, %212
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* %10, align 4
  %229 = call i64 @GetDlgItem(i32 %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %297

231:                                              ; preds = %226
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = call i8* @GlobalLock(i32 %234)
  %236 = bitcast i8* %235 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %236, %struct.TYPE_9__** %7, align 8
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @GlobalLock(i32 %239)
  %241 = bitcast i8* %240 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %241, %struct.TYPE_10__** %8, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %243 = icmp ne %struct.TYPE_9__* %242, null
  br i1 %243, label %244, label %252

244:                                              ; preds = %231
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %246 = bitcast %struct.TYPE_9__* %245 to i32*
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %246, i64 %250
  store i32* %251, i32** %9, align 8
  br label %260

252:                                              ; preds = %231
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %254 = icmp ne %struct.TYPE_10__* %253, null
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  store i32* %258, i32** %9, align 8
  br label %259

259:                                              ; preds = %255, %252
  br label %260

260:                                              ; preds = %259, %244
  %261 = load i32, i32* %4, align 4
  %262 = load i32, i32* %10, align 4
  %263 = load i32*, i32** %9, align 8
  %264 = call i32 @PRINTDLG_SetUpPrinterListComboW(i32 %261, i32 %262, i32* %263)
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %266 = icmp ne %struct.TYPE_10__* %265, null
  br i1 %266, label %267, label %272

267:                                              ; preds = %260
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @GlobalUnlock(i32 %270)
  br label %272

272:                                              ; preds = %267, %260
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %274 = icmp ne %struct.TYPE_9__* %273, null
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @GlobalUnlock(i32 %278)
  br label %280

280:                                              ; preds = %275, %272
  %281 = call i32 (...) @GetProcessHeap()
  %282 = call i32* @HeapAlloc(i32 %281, i32 0, i32 1024)
  store i32* %282, i32** %9, align 8
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* %10, align 4
  %285 = load i32*, i32** %9, align 8
  %286 = call i64 @GetDlgItemTextW(i32 %283, i32 %284, i32* %285, i32 255)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %280
  %289 = load i32, i32* %4, align 4
  %290 = load i32*, i32** %9, align 8
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %292 = call i32 @PRINTDLG_ChangePrinterW(i32 %289, i32* %290, %struct.TYPE_7__* %291)
  br label %293

293:                                              ; preds = %288, %280
  %294 = call i32 (...) @GetProcessHeap()
  %295 = load i32*, i32** %9, align 8
  %296 = call i32 @HeapFree(i32 %294, i32 0, i32* %295)
  br label %312

297:                                              ; preds = %226
  %298 = getelementptr inbounds [200 x i32], [200 x i32]* %11, i64 0, i64 0
  %299 = call i32 @ARRAY_SIZE(i32* %298)
  store i32 %299, i32* %12, align 4
  %300 = getelementptr inbounds [200 x i32], [200 x i32]* %11, i64 0, i64 0
  %301 = call i64 @GetDefaultPrinterW(i32* %300, i32* %12)
  store i64 %301, i64* %13, align 8
  %302 = load i64, i64* %13, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %297
  %305 = load i32, i32* %4, align 4
  %306 = getelementptr inbounds [200 x i32], [200 x i32]* %11, i64 0, i64 0
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %308 = call i32 @PRINTDLG_ChangePrinterW(i32 %305, i32* %306, %struct.TYPE_7__* %307)
  br label %311

309:                                              ; preds = %297
  %310 = call i32 @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %311

311:                                              ; preds = %309, %304
  br label %312

312:                                              ; preds = %311, %293
  %313 = load i32, i32* @TRUE, align 4
  store i32 %313, i32* %3, align 4
  br label %314

314:                                              ; preds = %312, %103
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local i8* @LoadImageW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @LoadIconW(i32, i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @COMDLG32_SetCommDlgExtendedError(i32) #1

declare dso_local i32 @EndDialog(i32, i32) #1

declare dso_local i64 @RegisterWindowMessageW(i32) #1

declare dso_local i32 @CreateUpDownControl(i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i64 @GetDlgItem(i32, i32) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @PRINTDLG_SetUpPrinterListComboW(i32, i32, i32*) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @GetDlgItemTextW(i32, i32, i32*, i32) #1

declare dso_local i32 @PRINTDLG_ChangePrinterW(i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @GetDefaultPrinterW(i32*, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
