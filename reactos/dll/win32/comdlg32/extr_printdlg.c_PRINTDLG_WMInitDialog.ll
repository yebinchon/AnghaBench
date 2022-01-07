; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_WMInitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_WMInitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@PD_PRINTSETUP = common dso_local global i32 0, align 4
@cmb1 = common dso_local global i32 0, align 4
@cmb4 = common dso_local global i32 0, align 4
@COMDLG32_hInstance = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PD32_COLLATE\00", align 1
@IMAGE_ICON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"PD32_NOCOLLATE\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"PD32_PORTRAIT\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PD32_LANDSCAPE\00", align 1
@ico3 = common dso_local global i32 0, align 4
@STM_SETIMAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"no icon in resource file\0A\00", align 1
@CDERR_LOADRESFAILURE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PD_SHOWHELP = common dso_local global i32 0, align 4
@HELPMSGSTRINGA = common dso_local global i32 0, align 4
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
@.str.5 = private unnamed_addr constant [44 x i8] c"No default printer found, expect problems!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*)* @PRINTDLG_WMInitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PRINTDLG_WMInitDialog(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [200 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %6, align 8
  store i8* null, i8** %9, align 8
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
  %30 = load i32, i32* @IMAGE_ICON, align 4
  %31 = call i8* @LoadImageA(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30, i32 0, i32 0, i32 0)
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @COMDLG32_hInstance, align 4
  %36 = load i32, i32* @IMAGE_ICON, align 4
  %37 = call i8* @LoadImageA(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 0, i32 0, i32 0)
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @COMDLG32_hInstance, align 4
  %42 = call i8* @LoadIconA(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @COMDLG32_hInstance, align 4
  %47 = call i8* @LoadIconA(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @ico3, align 4
  %53 = load i32, i32* @STM_SETIMAGE, align 4
  %54 = load i32, i32* @IMAGE_ICON, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @SendDlgItemMessageA(i32 %51, i32 %52, i32 %53, i32 %54, i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %27
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74, %69, %64, %27
  %80 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* @CDERR_LOADRESFAILURE, align 4
  %82 = call i32 @COMDLG32_SetCommDlgExtendedError(i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = call i32 @EndDialog(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @PD_SHOWHELP, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %86
  %94 = load i32, i32* @HELPMSGSTRINGA, align 4
  %95 = call i64 @RegisterWindowMessageA(i32 %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 5
  store i64 %95, i64* %97, align 8
  %98 = icmp eq i64 %95, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @CDERR_REGISTERMSGFAIL, align 4
  %101 = call i32 @COMDLG32_SetCommDlgExtendedError(i32 %100)
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %3, align 4
  br label %311

103:                                              ; preds = %93
  br label %107

104:                                              ; preds = %86
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %103
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @PD_PRINTSETUP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %138, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* @WS_CHILD, align 4
  %116 = load i32, i32* @WS_VISIBLE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @WS_BORDER, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @UDS_NOTHOUSANDS, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @UDS_ARROWKEYS, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @UDS_ALIGNRIGHT, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @UDS_SETBUDDYINT, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @UPDOWN_ID, align 4
  %130 = load i32, i32* @COMDLG32_hInstance, align 4
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @edt3, align 4
  %133 = call i64 @GetDlgItem(i32 %131, i32 %132)
  %134 = load i32, i32* @MAX_COPIES, align 4
  %135 = call i32 @CreateUpDownControl(i32 %127, i32 0, i32 0, i32 0, i32 0, i32 %128, i32 %129, i32 %130, i64 %133, i32 %134, i32 1, i32 1)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %114, %107
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %146, %138
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %155, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %152
  %161 = load i32, i32* @PD_NOPAGENUMS, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %152
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp slt i64 %169, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %166
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 3
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %174, %166
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp sgt i64 %183, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %180
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %188, %180
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp slt i64 %197, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %194
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 4
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %202, %194
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp sgt i64 %211, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %208
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 4
  store i64 %219, i64* %221, align 8
  br label %222

222:                                              ; preds = %216, %208
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* %10, align 4
  %225 = call i64 @GetDlgItem(i32 %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %294

227:                                              ; preds = %222
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = call i8* @GlobalLock(i32 %230)
  %232 = bitcast i8* %231 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %232, %struct.TYPE_9__** %7, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = call i8* @GlobalLock(i32 %235)
  %237 = bitcast i8* %236 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %237, %struct.TYPE_10__** %8, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %239 = icmp ne %struct.TYPE_9__* %238, null
  br i1 %239, label %240, label %248

240:                                              ; preds = %227
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %242 = bitcast %struct.TYPE_9__* %241 to i8*
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %242, i64 %246
  store i8* %247, i8** %9, align 8
  br label %257

248:                                              ; preds = %227
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %250 = icmp ne %struct.TYPE_10__* %249, null
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to i8*
  store i8* %255, i8** %9, align 8
  br label %256

256:                                              ; preds = %251, %248
  br label %257

257:                                              ; preds = %256, %240
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* %10, align 4
  %260 = load i8*, i8** %9, align 8
  %261 = call i32 @PRINTDLG_SetUpPrinterListComboA(i32 %258, i32 %259, i8* %260)
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %263 = icmp ne %struct.TYPE_10__* %262, null
  br i1 %263, label %264, label %269

264:                                              ; preds = %257
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @GlobalUnlock(i32 %267)
  br label %269

269:                                              ; preds = %264, %257
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %271 = icmp ne %struct.TYPE_9__* %270, null
  br i1 %271, label %272, label %277

272:                                              ; preds = %269
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @GlobalUnlock(i32 %275)
  br label %277

277:                                              ; preds = %272, %269
  %278 = call i32 (...) @GetProcessHeap()
  %279 = call i8* @HeapAlloc(i32 %278, i32 0, i32 256)
  store i8* %279, i8** %9, align 8
  %280 = load i32, i32* %4, align 4
  %281 = load i32, i32* %10, align 4
  %282 = load i8*, i8** %9, align 8
  %283 = call i64 @GetDlgItemTextA(i32 %280, i32 %281, i8* %282, i32 255)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %277
  %286 = load i32, i32* %4, align 4
  %287 = load i8*, i8** %9, align 8
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %289 = call i32 @PRINTDLG_ChangePrinterA(i32 %286, i8* %287, %struct.TYPE_7__* %288)
  br label %290

290:                                              ; preds = %285, %277
  %291 = call i32 (...) @GetProcessHeap()
  %292 = load i8*, i8** %9, align 8
  %293 = call i32 @HeapFree(i32 %291, i32 0, i8* %292)
  br label %309

294:                                              ; preds = %222
  %295 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  %296 = call i32 @ARRAY_SIZE(i8* %295)
  store i32 %296, i32* %12, align 4
  %297 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  %298 = call i64 @GetDefaultPrinterA(i8* %297, i32* %12)
  store i64 %298, i64* %13, align 8
  %299 = load i64, i64* %13, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %294
  %302 = load i32, i32* %4, align 4
  %303 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %305 = call i32 @PRINTDLG_ChangePrinterA(i32 %302, i8* %303, %struct.TYPE_7__* %304)
  br label %308

306:                                              ; preds = %294
  %307 = call i32 @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %308

308:                                              ; preds = %306, %301
  br label %309

309:                                              ; preds = %308, %290
  %310 = load i32, i32* @TRUE, align 4
  store i32 %310, i32* %3, align 4
  br label %311

311:                                              ; preds = %309, %99
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local i8* @LoadImageA(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @LoadIconA(i32, i8*) #1

declare dso_local i32 @SendDlgItemMessageA(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @COMDLG32_SetCommDlgExtendedError(i32) #1

declare dso_local i32 @EndDialog(i32, i32) #1

declare dso_local i64 @RegisterWindowMessageA(i32) #1

declare dso_local i32 @CreateUpDownControl(i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i64 @GetDlgItem(i32, i32) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @PRINTDLG_SetUpPrinterListComboA(i32, i32, i8*) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @GetDlgItemTextA(i32, i32, i8*, i32) #1

declare dso_local i32 @PRINTDLG_ChangePrinterA(i32, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @GetDefaultPrinterA(i8*, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
