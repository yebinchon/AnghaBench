; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_ChangePrinterW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_ChangePrinterW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_17__*, i64, i64, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32, i32*, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Can't open printer %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"GetPrinterDriverA failed for %s, fix your config!\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"DocumentProperties fails on %s\0A\00", align 1
@DM_OUT_BUFFER = common dso_local global i32 0, align 4
@DM_IN_BUFFER = common dso_local global i32 0, align 4
@PD_PRINTSETUP = common dso_local global i32 0, align 4
@edt1 = common dso_local global i32 0, align 4
@edt2 = common dso_local global i32 0, align 4
@rad1 = common dso_local global i32 0, align 4
@rad3 = common dso_local global i32 0, align 4
@PD_NOSELECTION = common dso_local global i32 0, align 4
@rad2 = common dso_local global i32 0, align 4
@PD_SELECTION = common dso_local global i32 0, align 4
@PD_NOPAGENUMS = common dso_local global i32 0, align 4
@stc2 = common dso_local global i32 0, align 4
@stc3 = common dso_local global i32 0, align 4
@PD_PAGENUMS = common dso_local global i32 0, align 4
@PD_COLLATE = common dso_local global i32 0, align 4
@ico3 = common dso_local global i32 0, align 4
@STM_SETIMAGE = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@chx2 = common dso_local global i32 0, align 4
@PD_USEDEVMODECOPIESANDCOLLATE = common dso_local global i32 0, align 4
@DM_COLLATE = common dso_local global i32 0, align 4
@MAX_COPIES = common dso_local global i32 0, align 4
@edt3 = common dso_local global i32 0, align 4
@DM_COPIES = common dso_local global i32 0, align 4
@stc5 = common dso_local global i32 0, align 4
@chx1 = common dso_local global i32 0, align 4
@PD_PRINTTOFILE = common dso_local global i32 0, align 4
@PD_DISABLEPRINTTOFILE = common dso_local global i32 0, align 4
@PD_HIDEPRINTTOFILE = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@DMORIENT_PORTRAIT = common dso_local global i64 0, align 8
@cmb2 = common dso_local global i32 0, align 4
@cmb3 = common dso_local global i32 0, align 4
@ico1 = common dso_local global i32 0, align 4
@PD_SHOWHELP = common dso_local global i32 0, align 4
@pshHelp = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_15__*)* @PRINTDLG_ChangePrinterW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PRINTDLG_ChangePrinterW(i32 %0, i32* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 7
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = call i32 @HeapFree(i32 %18, i32 0, %struct.TYPE_17__* %21)
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = call i32 @HeapFree(i32 %23, i32 0, %struct.TYPE_17__* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @OpenPrinterW(i32* %28, i32* %12, i32* null)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @debugstr_w(i32* %32)
  %34 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  br label %503

36:                                               ; preds = %3
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @GetPrinterW(i32 %37, i32 2, i32* null, i32 0, i32* %11)
  %39 = call i32 (...) @GetProcessHeap()
  %40 = load i32, i32* %11, align 4
  %41 = call i8* @HeapAlloc(i32 %39, i32 0, i32 %40)
  %42 = bitcast i8* %41 to %struct.TYPE_17__*
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %44, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = bitcast %struct.TYPE_17__* %48 to i32*
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @GetPrinterW(i32 %45, i32 2, i32* %49, i32 %50, i32* %11)
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @GetPrinterDriverW(i32 %52, i32* null, i32 3, i32* null, i32 0, i32* %11)
  %54 = call i32 (...) @GetProcessHeap()
  %55 = load i32, i32* %11, align 4
  %56 = call i8* @HeapAlloc(i32 %54, i32 0, i32 %55)
  %57 = bitcast i8* %56 to %struct.TYPE_17__*
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 6
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 6
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = bitcast %struct.TYPE_17__* %63 to i32*
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @GetPrinterDriverW(i32 %60, i32* null, i32 3, i32* %64, i32 %65, i32* %11)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %36
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @debugstr_w(i32* %73)
  %75 = call i32 @ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %4, align 4
  br label %503

77:                                               ; preds = %36
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @ClosePrinter(i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = call i32 @PRINTDLG_UpdatePrinterInfoTextsW(i32 %80, %struct.TYPE_17__* %83)
  %85 = call i32 (...) @GetProcessHeap()
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = call i32 @HeapFree(i32 %85, i32 0, %struct.TYPE_17__* %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 5
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %91, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @DocumentPropertiesW(i32 0, i32 0, i32* %92, %struct.TYPE_17__* null, %struct.TYPE_17__* null, i32 0)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %101

96:                                               ; preds = %77
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @debugstr_w(i32* %97)
  %99 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %4, align 4
  br label %503

101:                                              ; preds = %77
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load i32, i32* %10, align 4
  %104 = call i8* @HeapAlloc(i32 %102, i32 0, i32 %103)
  %105 = bitcast i8* %104 to %struct.TYPE_17__*
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 5
  store %struct.TYPE_17__* %105, %struct.TYPE_17__** %107, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = load i32, i32* @DM_OUT_BUFFER, align 4
  %113 = call i32 @DocumentPropertiesW(i32 0, i32 0, i32* %108, %struct.TYPE_17__* %111, %struct.TYPE_17__* null, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %145

118:                                              ; preds = %101
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call %struct.TYPE_17__* @GlobalLock(i64 %121)
  store %struct.TYPE_17__* %122, %struct.TYPE_17__** %9, align 8
  %123 = icmp ne %struct.TYPE_17__* %122, null
  br i1 %123, label %124, label %145

124:                                              ; preds = %118
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @lstrcmpW(i32 %127, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %124
  %136 = load i32*, i32** %6, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %141 = load i32, i32* @DM_OUT_BUFFER, align 4
  %142 = load i32, i32* @DM_IN_BUFFER, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @DocumentPropertiesW(i32 0, i32 0, i32* %136, %struct.TYPE_17__* %139, %struct.TYPE_17__* %140, i32 %143)
  br label %145

145:                                              ; preds = %135, %124, %118, %101
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %147 = icmp ne %struct.TYPE_17__* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @GlobalUnlock(i64 %151)
  br label %153

153:                                              ; preds = %148, %145
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 5
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  store %struct.TYPE_17__* %156, %struct.TYPE_17__** %9, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @PD_PRINTSETUP, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %421, label %163

163:                                              ; preds = %153
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 65535
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @edt1, align 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @FALSE, align 4
  %175 = call i32 @SetDlgItemInt(i32 %169, i32 %170, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %168, %163
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 65535
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @edt2, align 4
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @FALSE, align 4
  %188 = call i32 @SetDlgItemInt(i32 %182, i32 %183, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %181, %176
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @rad1, align 4
  %192 = load i32, i32* @rad3, align 4
  %193 = load i32, i32* @rad1, align 4
  %194 = call i32 @CheckRadioButton(i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @PD_NOSELECTION, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %189
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* @rad2, align 4
  %204 = call i32 @GetDlgItem(i32 %202, i32 %203)
  %205 = load i32, i32* @FALSE, align 4
  %206 = call i32 @EnableWindow(i32 %204, i32 %205)
  br label %221

207:                                              ; preds = %189
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @PD_SELECTION, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* @rad1, align 4
  %217 = load i32, i32* @rad3, align 4
  %218 = load i32, i32* @rad2, align 4
  %219 = call i32 @CheckRadioButton(i32 %215, i32 %216, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %214, %207
  br label %221

221:                                              ; preds = %220, %201
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @PD_NOPAGENUMS, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %254

228:                                              ; preds = %221
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* @rad3, align 4
  %231 = call i32 @GetDlgItem(i32 %229, i32 %230)
  %232 = load i32, i32* @FALSE, align 4
  %233 = call i32 @EnableWindow(i32 %231, i32 %232)
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* @stc2, align 4
  %236 = call i32 @GetDlgItem(i32 %234, i32 %235)
  %237 = load i32, i32* @FALSE, align 4
  %238 = call i32 @EnableWindow(i32 %236, i32 %237)
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* @edt1, align 4
  %241 = call i32 @GetDlgItem(i32 %239, i32 %240)
  %242 = load i32, i32* @FALSE, align 4
  %243 = call i32 @EnableWindow(i32 %241, i32 %242)
  %244 = load i32, i32* %5, align 4
  %245 = load i32, i32* @stc3, align 4
  %246 = call i32 @GetDlgItem(i32 %244, i32 %245)
  %247 = load i32, i32* @FALSE, align 4
  %248 = call i32 @EnableWindow(i32 %246, i32 %247)
  %249 = load i32, i32* %5, align 4
  %250 = load i32, i32* @edt2, align 4
  %251 = call i32 @GetDlgItem(i32 %249, i32 %250)
  %252 = load i32, i32* @FALSE, align 4
  %253 = call i32 @EnableWindow(i32 %251, i32 %252)
  br label %268

254:                                              ; preds = %221
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @PD_PAGENUMS, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %254
  %262 = load i32, i32* %5, align 4
  %263 = load i32, i32* @rad1, align 4
  %264 = load i32, i32* @rad3, align 4
  %265 = load i32, i32* @rad3, align 4
  %266 = call i32 @CheckRadioButton(i32 %262, i32 %263, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %261, %254
  br label %268

268:                                              ; preds = %267, %228
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @PD_COLLATE, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %268
  %276 = load i32, i32* %5, align 4
  %277 = load i32, i32* @ico3, align 4
  %278 = load i32, i32* @STM_SETIMAGE, align 4
  %279 = load i32, i32* @IMAGE_ICON, align 4
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 4
  %282 = load i64, i64* %281, align 8
  %283 = trunc i64 %282 to i32
  %284 = call i32 @SendDlgItemMessageW(i32 %276, i32 %277, i32 %278, i32 %279, i32 %283)
  %285 = load i32, i32* %5, align 4
  %286 = load i32, i32* @chx2, align 4
  %287 = call i32 @CheckDlgButton(i32 %285, i32 %286, i32 1)
  br label %301

288:                                              ; preds = %268
  %289 = load i32, i32* %5, align 4
  %290 = load i32, i32* @ico3, align 4
  %291 = load i32, i32* @STM_SETIMAGE, align 4
  %292 = load i32, i32* @IMAGE_ICON, align 4
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = trunc i64 %295 to i32
  %297 = call i32 @SendDlgItemMessageW(i32 %289, i32 %290, i32 %291, i32 %292, i32 %296)
  %298 = load i32, i32* %5, align 4
  %299 = load i32, i32* @chx2, align 4
  %300 = call i32 @CheckDlgButton(i32 %298, i32 %299, i32 0)
  br label %301

301:                                              ; preds = %288, %275
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @PD_USEDEVMODECOPIESANDCOLLATE, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %327

308:                                              ; preds = %301
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @DM_COLLATE, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %326, label %315

315:                                              ; preds = %308
  %316 = load i32, i32* %5, align 4
  %317 = load i32, i32* @chx2, align 4
  %318 = call i32 @GetDlgItem(i32 %316, i32 %317)
  %319 = load i32, i32* @FALSE, align 4
  %320 = call i32 @EnableWindow(i32 %318, i32 %319)
  %321 = load i32, i32* %5, align 4
  %322 = load i32, i32* @ico3, align 4
  %323 = call i32 @GetDlgItem(i32 %321, i32 %322)
  %324 = load i32, i32* @FALSE, align 4
  %325 = call i32 @EnableWindow(i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %315, %308
  br label %327

327:                                              ; preds = %326, %301
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %327
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 4
  store i32 %335, i32* %13, align 4
  br label %342

336:                                              ; preds = %327
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  store i32 %341, i32* %13, align 4
  br label %342

342:                                              ; preds = %336, %332
  %343 = load i32, i32* %13, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %342
  store i32 1, i32* %13, align 4
  br label %352

346:                                              ; preds = %342
  %347 = load i32, i32* %13, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %346
  %350 = load i32, i32* @MAX_COPIES, align 4
  store i32 %350, i32* %13, align 4
  br label %351

351:                                              ; preds = %349, %346
  br label %352

352:                                              ; preds = %351, %345
  %353 = load i32, i32* %5, align 4
  %354 = load i32, i32* @edt3, align 4
  %355 = load i32, i32* %13, align 4
  %356 = load i32, i32* @FALSE, align 4
  %357 = call i32 @SetDlgItemInt(i32 %353, i32 %354, i32 %355, i32 %356)
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @PD_USEDEVMODECOPIESANDCOLLATE, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %383

364:                                              ; preds = %352
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @DM_COPIES, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %382, label %371

371:                                              ; preds = %364
  %372 = load i32, i32* %5, align 4
  %373 = load i32, i32* @edt3, align 4
  %374 = call i32 @GetDlgItem(i32 %372, i32 %373)
  %375 = load i32, i32* @FALSE, align 4
  %376 = call i32 @EnableWindow(i32 %374, i32 %375)
  %377 = load i32, i32* %5, align 4
  %378 = load i32, i32* @stc5, align 4
  %379 = call i32 @GetDlgItem(i32 %377, i32 %378)
  %380 = load i32, i32* @FALSE, align 4
  %381 = call i32 @EnableWindow(i32 %379, i32 %380)
  br label %382

382:                                              ; preds = %371, %364
  br label %383

383:                                              ; preds = %382, %352
  %384 = load i32, i32* %5, align 4
  %385 = load i32, i32* @chx1, align 4
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* @PD_PRINTTOFILE, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  %392 = zext i1 %391 to i64
  %393 = select i1 %391, i32 1, i32 0
  %394 = call i32 @CheckDlgButton(i32 %384, i32 %385, i32 %393)
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @PD_DISABLEPRINTTOFILE, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %383
  %402 = load i32, i32* %5, align 4
  %403 = load i32, i32* @chx1, align 4
  %404 = call i32 @GetDlgItem(i32 %402, i32 %403)
  %405 = load i32, i32* @FALSE, align 4
  %406 = call i32 @EnableWindow(i32 %404, i32 %405)
  br label %407

407:                                              ; preds = %401, %383
  %408 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @PD_HIDEPRINTTOFILE, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %420

414:                                              ; preds = %407
  %415 = load i32, i32* %5, align 4
  %416 = load i32, i32* @chx1, align 4
  %417 = call i32 @GetDlgItem(i32 %415, i32 %416)
  %418 = load i32, i32* @SW_HIDE, align 4
  %419 = call i32 @ShowWindow(i32 %417, i32 %418)
  br label %420

420:                                              ; preds = %414, %407
  br label %488

421:                                              ; preds = %153
  %422 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %423 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i32 0, i32 3
  %424 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 1
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* @DMORIENT_PORTRAIT, align 8
  %428 = icmp eq i64 %426, %427
  %429 = zext i1 %428 to i32
  store i32 %429, i32* %14, align 4
  %430 = load i32, i32* %5, align 4
  %431 = load i32, i32* @cmb2, align 4
  %432 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %432, i32 0, i32 2
  %434 = load %struct.TYPE_17__*, %struct.TYPE_17__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %434, i32 0, i32 2
  %436 = load i32*, i32** %435, align 8
  %437 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %438 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %437, i32 0, i32 2
  %439 = load %struct.TYPE_17__*, %struct.TYPE_17__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %443 = call i32 @PRINTDLG_SetUpPaperComboBoxW(i32 %430, i32 %431, i32* %436, i32 %441, %struct.TYPE_17__* %442)
  %444 = load i32, i32* %5, align 4
  %445 = load i32, i32* @cmb3, align 4
  %446 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %447 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %446, i32 0, i32 2
  %448 = load %struct.TYPE_17__*, %struct.TYPE_17__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %448, i32 0, i32 2
  %450 = load i32*, i32** %449, align 8
  %451 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %451, i32 0, i32 2
  %453 = load %struct.TYPE_17__*, %struct.TYPE_17__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %457 = call i32 @PRINTDLG_SetUpPaperComboBoxW(i32 %444, i32 %445, i32* %450, i32 %455, %struct.TYPE_17__* %456)
  %458 = load i32, i32* %5, align 4
  %459 = load i32, i32* @rad1, align 4
  %460 = load i32, i32* @rad2, align 4
  %461 = load i32, i32* %14, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %465

463:                                              ; preds = %421
  %464 = load i32, i32* @rad1, align 4
  br label %467

465:                                              ; preds = %421
  %466 = load i32, i32* @rad2, align 4
  br label %467

467:                                              ; preds = %465, %463
  %468 = phi i32 [ %464, %463 ], [ %466, %465 ]
  %469 = call i32 @CheckRadioButton(i32 %458, i32 %459, i32 %460, i32 %468)
  %470 = load i32, i32* %5, align 4
  %471 = load i32, i32* @ico1, align 4
  %472 = load i32, i32* @STM_SETIMAGE, align 4
  %473 = load i32, i32* @IMAGE_ICON, align 4
  %474 = load i32, i32* %14, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %480

476:                                              ; preds = %467
  %477 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %477, i32 0, i32 1
  %479 = load i64, i64* %478, align 8
  br label %484

480:                                              ; preds = %467
  %481 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %482 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  br label %484

484:                                              ; preds = %480, %476
  %485 = phi i64 [ %479, %476 ], [ %483, %480 ]
  %486 = trunc i64 %485 to i32
  %487 = call i32 @SendDlgItemMessageW(i32 %470, i32 %471, i32 %472, i32 %473, i32 %486)
  br label %488

488:                                              ; preds = %484, %420
  %489 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* @PD_SHOWHELP, align 4
  %493 = and i32 %491, %492
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %501

495:                                              ; preds = %488
  %496 = load i32, i32* %5, align 4
  %497 = load i32, i32* @pshHelp, align 4
  %498 = call i32 @GetDlgItem(i32 %496, i32 %497)
  %499 = load i32, i32* @SW_HIDE, align 4
  %500 = call i32 @ShowWindow(i32 %498, i32 %499)
  br label %501

501:                                              ; preds = %495, %488
  %502 = load i32, i32* @TRUE, align 4
  store i32 %502, i32* %4, align 4
  br label %503

503:                                              ; preds = %501, %96, %68, %31
  %504 = load i32, i32* %4, align 4
  ret i32 %504
}

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @OpenPrinterW(i32*, i32*, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @GetPrinterW(i32, i32, i32*, i32, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetPrinterDriverW(i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ClosePrinter(i32) #1

declare dso_local i32 @PRINTDLG_UpdatePrinterInfoTextsW(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @DocumentPropertiesW(i32, i32, i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_17__* @GlobalLock(i64) #1

declare dso_local i32 @lstrcmpW(i32, i32) #1

declare dso_local i32 @GlobalUnlock(i64) #1

declare dso_local i32 @SetDlgItemInt(i32, i32, i32, i32) #1

declare dso_local i32 @CheckRadioButton(i32, i32, i32, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CheckDlgButton(i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @PRINTDLG_SetUpPaperComboBoxW(i32, i32, i32*, i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
