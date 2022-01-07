; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_WMCommandA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_WMCommandA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8*, i8* }
%struct.TYPE_14__ = type { i32, i8*, i8*, i32 }

@PD_PRINTSETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c" OK button was hit\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Update printdlg was not successful!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c" CANCEL button was hit\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" HELP button was hit\0A\00", align 1
@BST_CHECKED = common dso_local global i32 0, align 4
@ico3 = common dso_local global i32 0, align 4
@STM_SETIMAGE = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@EN_CHANGE = common dso_local global i32 0, align 4
@rad3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c" Call to OpenPrinter did not succeed!\0A\00", align 1
@DM_IN_BUFFER = common dso_local global i32 0, align 4
@DM_OUT_BUFFER = common dso_local global i32 0, align 4
@DM_IN_PROMPT = common dso_local global i32 0, align 4
@DMORIENT_PORTRAIT = common dso_local global i8* null, align 8
@ico1 = common dso_local global i32 0, align 4
@DMORIENT_LANDSCAPE = common dso_local global i8* null, align 8
@CBN_SELCHANGE = common dso_local global i32 0, align 4
@CB_GETCURSEL = common dso_local global i32 0, align 4
@CB_GETLBTEXTLEN = common dso_local global i32 0, align 4
@CB_GETLBTEXT = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i32 0, align 4
@CB_GETITEMDATA = common dso_local global i32 0, align 4
@CCHFORMNAME = common dso_local global i32 0, align 4
@stc10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_13__*)* @PRINTDLG_WMCommandA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PRINTDLG_WMCommandA(i32 %0, i32 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [256 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %8, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PD_PRINTSETUP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 138, i32 135
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @LOWORD(i32 %35)
  switch i32 %36, label %306 [
    i32 140, label %37
    i32 141, label %51
    i32 130, label %57
    i32 139, label %69
    i32 134, label %93
    i32 133, label %93
    i32 132, label %123
    i32 131, label %147
    i32 129, label %175
    i32 128, label %197
    i32 138, label %219
    i32 135, label %226
    i32 137, label %263
    i32 136, label %288
  ]

37:                                               ; preds = %3
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = call i32 @PRINTDLG_UpdatePrintDlgA(i32 %39, %struct.TYPE_13__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = call i32 @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %4, align 4
  br label %387

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @EndDialog(i32 %47, i32 %48)
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %4, align 4
  br label %387

51:                                               ; preds = %3
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @EndDialog(i32 %53, i32 %54)
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %4, align 4
  br label %387

57:                                               ; preds = %3
  %58 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = ptrtoint %struct.TYPE_14__* %66 to i32
  %68 = call i32 @SendMessageA(i32 %61, i32 %64, i32 %65, i32 %67)
  br label %306

69:                                               ; preds = %3
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @IsDlgButtonChecked(i32 %70, i32 139)
  %72 = load i32, i32* @BST_CHECKED, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @ico3, align 4
  %77 = load i32, i32* @STM_SETIMAGE, align 4
  %78 = load i32, i32* @IMAGE_ICON, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @SendDlgItemMessageA(i32 %75, i32 %76, i32 %77, i32 %78, i32 %81)
  br label %92

83:                                               ; preds = %69
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @ico3, align 4
  %86 = load i32, i32* @STM_SETIMAGE, align 4
  %87 = load i32, i32* @IMAGE_ICON, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @SendDlgItemMessageA(i32 %84, i32 %85, i32 %86, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %83, %74
  br label %306

93:                                               ; preds = %3, %3
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @HIWORD(i32 %94)
  %96 = load i32, i32* @EN_CHANGE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i8* @GetDlgItemInt(i32 %99, i32 134, i32* null, i32 %100)
  store i8* %101, i8** %12, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i8* @GetDlgItemInt(i32 %102, i32 133, i32* null, i32 %103)
  store i8* %104, i8** %11, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %105, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %98
  %111 = load i8*, i8** %11, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %111, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110, %98
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @rad3, align 4
  %119 = load i32, i32* @rad3, align 4
  %120 = call i32 @CheckRadioButton(i32 %117, i32 129, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %110
  br label %122

122:                                              ; preds = %121, %93
  br label %306

123:                                              ; preds = %3
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @HIWORD(i32 %124)
  %126 = load i32, i32* @EN_CHANGE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %123
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @FALSE, align 4
  %131 = call i8* @GetDlgItemInt(i32 %129, i32 132, i32* null, i32 %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp sle i32 %133, 1
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @GetDlgItem(i32 %136, i32 139)
  %138 = load i32, i32* @FALSE, align 4
  %139 = call i32 @EnableWindow(i32 %137, i32 %138)
  br label %145

140:                                              ; preds = %128
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @GetDlgItem(i32 %141, i32 139)
  %143 = load i32, i32* @TRUE, align 4
  %144 = call i32 @EnableWindow(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %135
  br label %146

146:                                              ; preds = %145, %123
  br label %306

147:                                              ; preds = %3
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %9, align 4
  %150 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %151 = call i32 @GetDlgItemTextA(i32 %148, i32 %149, i8* %150, i32 255)
  %152 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %153 = call i32 @OpenPrinterA(i8* %152, i32* %14, i32* null)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %147
  %156 = call i32 @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %306

157:                                              ; preds = %147
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %14, align 4
  %160 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = load i32, i32* @DM_IN_BUFFER, align 4
  %168 = load i32, i32* @DM_OUT_BUFFER, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @DM_IN_PROMPT, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @DocumentPropertiesA(i32 %158, i32 %159, i8* %160, %struct.TYPE_15__* %163, %struct.TYPE_15__* %166, i32 %171)
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @ClosePrinter(i32 %173)
  br label %306

175:                                              ; preds = %3
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @PD_PRINTSETUP, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %175
  %183 = load i8*, i8** @DMORIENT_PORTRAIT, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  store i8* %183, i8** %187, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @ico1, align 4
  %190 = load i32, i32* @STM_SETIMAGE, align 4
  %191 = load i32, i32* @IMAGE_ICON, align 4
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @SendDlgItemMessageA(i32 %188, i32 %189, i32 %190, i32 %191, i32 %194)
  br label %196

196:                                              ; preds = %182, %175
  br label %306

197:                                              ; preds = %3
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @PD_PRINTSETUP, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %218

204:                                              ; preds = %197
  %205 = load i8*, i8** @DMORIENT_LANDSCAPE, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  store i8* %205, i8** %209, align 8
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* @ico1, align 4
  %212 = load i32, i32* @STM_SETIMAGE, align 4
  %213 = load i32, i32* @IMAGE_ICON, align 4
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i8* @SendDlgItemMessageA(i32 %210, i32 %211, i32 %212, i32 %213, i32 %216)
  br label %218

218:                                              ; preds = %204, %197
  br label %306

219:                                              ; preds = %3
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @LOWORD(i32 %221)
  %223 = icmp ne i32 %220, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  br label %306

225:                                              ; preds = %219
  br label %226

226:                                              ; preds = %3, %225
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @HIWORD(i32 %227)
  %229 = load i32, i32* @CBN_SELCHANGE, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %262

231:                                              ; preds = %226
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @LOWORD(i32 %233)
  %235 = load i32, i32* @CB_GETCURSEL, align 4
  %236 = call i32 @SendDlgItemMessageW(i32 %232, i32 %234, i32 %235, i32 0, i32 0)
  store i32 %236, i32* %17, align 4
  %237 = load i32, i32* %5, align 4
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @LOWORD(i32 %238)
  %240 = load i32, i32* @CB_GETLBTEXTLEN, align 4
  %241 = load i32, i32* %17, align 4
  %242 = call i32 @SendDlgItemMessageW(i32 %237, i32 %239, i32 %240, i32 %241, i32 0)
  store i32 %242, i32* %18, align 4
  %243 = call i32 (...) @GetProcessHeap()
  %244 = load i32, i32* %18, align 4
  %245 = add nsw i32 %244, 1
  %246 = call i8* @HeapAlloc(i32 %243, i32 0, i32 %245)
  store i8* %246, i8** %16, align 8
  %247 = load i32, i32* %5, align 4
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @LOWORD(i32 %248)
  %250 = load i32, i32* @CB_GETLBTEXT, align 4
  %251 = load i32, i32* %17, align 4
  %252 = load i8*, i8** %16, align 8
  %253 = ptrtoint i8* %252 to i32
  %254 = call i8* @SendDlgItemMessageA(i32 %247, i32 %249, i32 %250, i32 %251, i32 %253)
  %255 = load i32, i32* %5, align 4
  %256 = load i8*, i8** %16, align 8
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %258 = call i32 @PRINTDLG_ChangePrinterA(i32 %255, i8* %256, %struct.TYPE_13__* %257)
  %259 = call i32 (...) @GetProcessHeap()
  %260 = load i8*, i8** %16, align 8
  %261 = call i32 @HeapFree(i32 %259, i32 0, i8* %260)
  br label %262

262:                                              ; preds = %231, %226
  br label %306

263:                                              ; preds = %3
  %264 = load i32, i32* %5, align 4
  %265 = load i32, i32* @CB_GETCURSEL, align 4
  %266 = call i8* @SendDlgItemMessageA(i32 %264, i32 137, i32 %265, i32 0, i32 0)
  %267 = ptrtoint i8* %266 to i32
  store i32 %267, i32* %19, align 4
  %268 = load i32, i32* %19, align 4
  %269 = load i32, i32* @CB_ERR, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %287

271:                                              ; preds = %263
  %272 = load i32, i32* %5, align 4
  %273 = load i32, i32* @CB_GETITEMDATA, align 4
  %274 = load i32, i32* %19, align 4
  %275 = call i8* @SendDlgItemMessageA(i32 %272, i32 137, i32 %273, i32 %274, i32 0)
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 2
  store i8* %275, i8** %279, align 8
  %280 = load i32, i32* %5, align 4
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = inttoptr i64 %283 to i8*
  %285 = load i32, i32* @CCHFORMNAME, align 4
  %286 = call i32 @GetDlgItemTextA(i32 %280, i32 137, i8* %284, i32 %285)
  br label %287

287:                                              ; preds = %271, %263
  br label %306

288:                                              ; preds = %3
  %289 = load i32, i32* %5, align 4
  %290 = load i32, i32* @CB_GETCURSEL, align 4
  %291 = call i8* @SendDlgItemMessageA(i32 %289, i32 136, i32 %290, i32 0, i32 0)
  %292 = ptrtoint i8* %291 to i32
  store i32 %292, i32* %20, align 4
  %293 = load i32, i32* %20, align 4
  %294 = load i32, i32* @CB_ERR, align 4
  %295 = icmp ne i32 %293, %294
  br i1 %295, label %296, label %305

296:                                              ; preds = %288
  %297 = load i32, i32* %5, align 4
  %298 = load i32, i32* @CB_GETITEMDATA, align 4
  %299 = load i32, i32* %20, align 4
  %300 = call i8* @SendDlgItemMessageA(i32 %297, i32 136, i32 %298, i32 %299, i32 0)
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 1
  store i8* %300, i8** %304, align 8
  br label %305

305:                                              ; preds = %296, %288
  br label %306

306:                                              ; preds = %3, %305, %287, %262, %224, %218, %196, %157, %155, %146, %122, %92, %57
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @PD_PRINTSETUP, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %385

313:                                              ; preds = %306
  %314 = load i32, i32* %6, align 4
  %315 = call i32 @LOWORD(i32 %314)
  switch i32 %315, label %384 [
    i32 129, label %316
    i32 128, label %316
  ]

316:                                              ; preds = %313, %313
  %317 = load i32, i32* %5, align 4
  %318 = call i32 @IsDlgButtonChecked(i32 %317, i32 129)
  %319 = load i32, i32* @BST_CHECKED, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %352

321:                                              ; preds = %316
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = load i8*, i8** @DMORIENT_PORTRAIT, align 8
  %328 = icmp ne i8* %326, %327
  br i1 %328, label %329, label %351

329:                                              ; preds = %321
  %330 = load i8*, i8** @DMORIENT_PORTRAIT, align 8
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 0
  store i8* %330, i8** %334, align 8
  %335 = load i32, i32* %5, align 4
  %336 = load i32, i32* @stc10, align 4
  %337 = load i32, i32* @STM_SETIMAGE, align 4
  %338 = load i32, i32* @IMAGE_ICON, align 4
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i8* @SendDlgItemMessageA(i32 %335, i32 %336, i32 %337, i32 %338, i32 %341)
  %343 = load i32, i32* %5, align 4
  %344 = load i32, i32* @ico1, align 4
  %345 = load i32, i32* @STM_SETIMAGE, align 4
  %346 = load i32, i32* @IMAGE_ICON, align 4
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = call i8* @SendDlgItemMessageA(i32 %343, i32 %344, i32 %345, i32 %346, i32 %349)
  br label %351

351:                                              ; preds = %329, %321
  br label %383

352:                                              ; preds = %316
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = load i8*, i8** @DMORIENT_LANDSCAPE, align 8
  %359 = icmp ne i8* %357, %358
  br i1 %359, label %360, label %382

360:                                              ; preds = %352
  %361 = load i8*, i8** @DMORIENT_LANDSCAPE, align 8
  %362 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 0
  store i8* %361, i8** %365, align 8
  %366 = load i32, i32* %5, align 4
  %367 = load i32, i32* @stc10, align 4
  %368 = load i32, i32* @STM_SETIMAGE, align 4
  %369 = load i32, i32* @IMAGE_ICON, align 4
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = call i8* @SendDlgItemMessageA(i32 %366, i32 %367, i32 %368, i32 %369, i32 %372)
  %374 = load i32, i32* %5, align 4
  %375 = load i32, i32* @ico1, align 4
  %376 = load i32, i32* @STM_SETIMAGE, align 4
  %377 = load i32, i32* @IMAGE_ICON, align 4
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = call i8* @SendDlgItemMessageA(i32 %374, i32 %375, i32 %376, i32 %377, i32 %380)
  br label %382

382:                                              ; preds = %360, %352
  br label %383

383:                                              ; preds = %382, %351
  br label %384

384:                                              ; preds = %313, %383
  br label %385

385:                                              ; preds = %384, %306
  %386 = load i32, i32* @FALSE, align 4
  store i32 %386, i32* %4, align 4
  br label %387

387:                                              ; preds = %385, %51, %46, %43
  %388 = load i32, i32* %4, align 4
  ret i32 %388
}

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @PRINTDLG_UpdatePrintDlgA(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @EndDialog(i32, i32) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @IsDlgButtonChecked(i32, i32) #1

declare dso_local i8* @SendDlgItemMessageA(i32, i32, i32, i32, i32) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i8* @GetDlgItemInt(i32, i32, i32*, i32) #1

declare dso_local i32 @CheckRadioButton(i32, i32, i32, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetDlgItemTextA(i32, i32, i8*, i32) #1

declare dso_local i32 @OpenPrinterA(i8*, i32*, i32*) #1

declare dso_local i32 @DocumentPropertiesA(i32, i32, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ClosePrinter(i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @PRINTDLG_ChangePrinterA(i32, i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
