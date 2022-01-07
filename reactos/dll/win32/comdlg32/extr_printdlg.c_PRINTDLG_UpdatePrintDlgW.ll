; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_UpdatePrintDlgW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_UpdatePrintDlgW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { float* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_13__ = type { i32, i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"No lpdm ptr?\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PD_PRINTSETUP = common dso_local global i32 0, align 4
@rad3 = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@edt1 = common dso_local global i32 0, align 4
@edt2 = common dso_local global i32 0, align 4
@COMDLG32_hInstance = common dso_local global i32 0, align 4
@PD32_INVALID_PAGE_RANGE = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_STRING = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4
@PD32_PRINT_TITLE = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONWARNING = common dso_local global i32 0, align 4
@PD_PAGENUMS = common dso_local global i32 0, align 4
@rad2 = common dso_local global i32 0, align 4
@PD_SELECTION = common dso_local global i32 0, align 4
@chx1 = common dso_local global i32 0, align 4
@PRINTDLG_UpdatePrintDlgW.file = internal global [6 x float] [float 7.000000e+01, float 7.300000e+01, float 7.600000e+01, float 6.900000e+01, float 5.800000e+01, float 0.000000e+00], align 16
@PD_PRINTTOFILE = common dso_local global i32 0, align 4
@chx2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Collate lppd not yet implemented as output\0A\00", align 1
@PD_USEDEVMODECOPIESANDCOLLATE = common dso_local global i32 0, align 4
@PD_COLLATE = common dso_local global i32 0, align 4
@DM_COLLATE = common dso_local global i32 0, align 4
@DM_COPIES = common dso_local global i32 0, align 4
@edt3 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*)* @PRINTDLG_UpdatePrintDlgW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PRINTDLG_UpdatePrintDlgW(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x float], align 16
  %13 = alloca [256 x float], align 16
  %14 = alloca [2 x i64], align 16
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %7, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %8, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = call i32 @FIXME(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %254

29:                                               ; preds = %2
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PD_PRINTSETUP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %252, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @rad3, align 4
  %39 = call i64 @IsDlgButtonChecked(i32 %37, i32 %38)
  %40 = load i64, i64* @BST_CHECKED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %128

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @edt1, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i8* @GetDlgItemInt(i32 %43, i32 %44, i32* null, i32 %45)
  %47 = ptrtoint i8* %46 to i64
  store i64 %47, i64* %10, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @edt2, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i8* @GetDlgItemInt(i32 %48, i32 %49, i32* %11, i32 %50)
  %52 = ptrtoint i8* %51 to i64
  store i64 %52, i64* %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %42
  %56 = load i64, i64* %10, align 8
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %55, %42
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %81, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %116

81:                                               ; preds = %75, %69, %63, %57
  %82 = load i32, i32* @COMDLG32_hInstance, align 4
  %83 = load i32, i32* @PD32_INVALID_PAGE_RANGE, align 4
  %84 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 0
  %85 = call i32 @LoadStringW(i32 %82, i32 %83, float* %84, i32 255)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  store i64 %88, i64* %89, align 16
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  store i64 %92, i64* %93, align 8
  %94 = load i32, i32* @FORMAT_MESSAGE_FROM_STRING, align 4
  %95 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %96 = or i32 %94, %95
  %97 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 0
  %98 = getelementptr inbounds [256 x float], [256 x float]* %13, i64 0, i64 0
  %99 = getelementptr inbounds [256 x float], [256 x float]* %13, i64 0, i64 0
  %100 = call i32 @ARRAY_SIZE(float* %99)
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %102 = bitcast i64* %101 to i32*
  %103 = call i32 @FormatMessageW(i32 %96, float* %97, i32 0, i32 0, float* %98, i32 %100, i32* %102)
  %104 = load i32, i32* @COMDLG32_hInstance, align 4
  %105 = load i32, i32* @PD32_PRINT_TITLE, align 4
  %106 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 0
  %107 = call i32 @LoadStringW(i32 %104, i32 %105, float* %106, i32 255)
  %108 = load i32, i32* %4, align 4
  %109 = getelementptr inbounds [256 x float], [256 x float]* %13, i64 0, i64 0
  %110 = getelementptr inbounds [256 x float], [256 x float]* %12, i64 0, i64 0
  %111 = load i32, i32* @MB_OK, align 4
  %112 = load i32, i32* @MB_ICONWARNING, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @MessageBoxW(i32 %108, float* %109, float* %110, i32 %113)
  %115 = load i32, i32* @FALSE, align 4
  store i32 %115, i32* %3, align 4
  br label %254

116:                                              ; preds = %75
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 5
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 4
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* @PD_PAGENUMS, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %135

128:                                              ; preds = %36
  %129 = load i32, i32* @PD_PAGENUMS, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %128, %116
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @rad2, align 4
  %138 = call i64 @IsDlgButtonChecked(i32 %136, i32 %137)
  %139 = load i64, i64* @BST_CHECKED, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load i32, i32* @PD_SELECTION, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %154

147:                                              ; preds = %135
  %148 = load i32, i32* @PD_SELECTION, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, %149
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %147, %141
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @chx1, align 4
  %157 = call i64 @IsDlgButtonChecked(i32 %155, i32 %156)
  %158 = load i64, i64* @BST_CHECKED, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load i32, i32* @PD_PRINTTOFILE, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  store float* getelementptr inbounds ([6 x float], [6 x float]* @PRINTDLG_UpdatePrintDlgW.file, i64 0, i64 0), float** %167, align 8
  br label %168

168:                                              ; preds = %160, %154
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @chx2, align 4
  %171 = call i64 @IsDlgButtonChecked(i32 %169, i32 %170)
  %172 = load i64, i64* @BST_CHECKED, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = call i32 @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %168
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @PD_USEDEVMODECOPIESANDCOLLATE, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %224

183:                                              ; preds = %176
  %184 = load i32, i32* @PD_COLLATE, align 4
  %185 = xor i32 %184, -1
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 3
  store i32 1, i32* %191, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @DM_COLLATE, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %183
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @chx2, align 4
  %201 = call i64 @IsDlgButtonChecked(i32 %199, i32 %200)
  %202 = load i64, i64* @BST_CHECKED, align 8
  %203 = icmp eq i64 %201, %202
  %204 = zext i1 %203 to i32
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %198, %183
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @DM_COPIES, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %207
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @edt3, align 4
  %217 = load i32, i32* @FALSE, align 4
  %218 = call i8* @GetDlgItemInt(i32 %215, i32 %216, i32* null, i32 %217)
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  store i8* %218, i8** %222, align 8
  br label %223

223:                                              ; preds = %214, %207
  br label %251

224:                                              ; preds = %176
  %225 = load i32, i32* %4, align 4
  %226 = load i32, i32* @chx2, align 4
  %227 = call i64 @IsDlgButtonChecked(i32 %225, i32 %226)
  %228 = load i64, i64* @BST_CHECKED, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = load i32, i32* @PD_COLLATE, align 4
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 8
  br label %243

236:                                              ; preds = %224
  %237 = load i32, i32* @PD_COLLATE, align 4
  %238 = xor i32 %237, -1
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = and i32 %241, %238
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %236, %230
  %244 = load i32, i32* %4, align 4
  %245 = load i32, i32* @edt3, align 4
  %246 = load i32, i32* @FALSE, align 4
  %247 = call i8* @GetDlgItemInt(i32 %244, i32 %245, i32* null, i32 %246)
  %248 = ptrtoint i8* %247 to i32
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 8
  br label %251

251:                                              ; preds = %243, %223
  br label %252

252:                                              ; preds = %251, %29
  %253 = load i32, i32* @TRUE, align 4
  store i32 %253, i32* %3, align 4
  br label %254

254:                                              ; preds = %252, %81, %26
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @IsDlgButtonChecked(i32, i32) #1

declare dso_local i8* @GetDlgItemInt(i32, i32, i32*, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, float*, i32) #1

declare dso_local i32 @FormatMessageW(i32, float*, i32, i32, float*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(float*) #1

declare dso_local i32 @MessageBoxW(i32, float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
