; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_UpdatePrintDlgA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_UpdatePrintDlgA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
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
@PD32_PRINT_TITLE = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONWARNING = common dso_local global i32 0, align 4
@PD_PAGENUMS = common dso_local global i32 0, align 4
@rad2 = common dso_local global i32 0, align 4
@PD_SELECTION = common dso_local global i32 0, align 4
@chx1 = common dso_local global i32 0, align 4
@PRINTDLG_UpdatePrintDlgA.file = internal global [6 x i8] c"FILE:\00", align 1
@PD_PRINTTOFILE = common dso_local global i32 0, align 4
@chx2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Collate lppd not yet implemented as output\0A\00", align 1
@PD_USEDEVMODECOPIESANDCOLLATE = common dso_local global i32 0, align 4
@PD_COLLATE = common dso_local global i32 0, align 4
@DM_COLLATE = common dso_local global i32 0, align 4
@DM_COPIES = common dso_local global i32 0, align 4
@edt3 = common dso_local global i32 0, align 4
@cmb1 = common dso_local global i32 0, align 4
@CB_GETCURSEL = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i32 0, align 4
@CB_GETITEMDATA = common dso_local global i32 0, align 4
@DM_PRINTQUALITY = common dso_local global i32 0, align 4
@DM_YRESOLUTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_10__*)* @PRINTDLG_UpdatePrintDlgA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PRINTDLG_UpdatePrintDlgA(i64 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x i32], align 16
  %13 = alloca [256 x i32], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %8, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = call i32 @FIXME(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %291

31:                                               ; preds = %2
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PD_PRINTSETUP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %289, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @rad3, align 4
  %41 = call i64 @IsDlgButtonChecked(i64 %39, i32 %40)
  %42 = load i64, i64* @BST_CHECKED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %121

44:                                               ; preds = %38
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* @edt1, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i8* @GetDlgItemInt(i64 %45, i32 %46, i32* null, i32 %47)
  %49 = ptrtoint i8* %48 to i64
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* @edt2, align 4
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i8* @GetDlgItemInt(i64 %50, i32 %51, i32* %11, i32 %52)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %44
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %57, %44
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %83, label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %77, %71, %65, %59
  %84 = load i32, i32* @COMDLG32_hInstance, align 4
  %85 = load i32, i32* @PD32_INVALID_PAGE_RANGE, align 4
  %86 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %87 = call i32 @LoadStringW(i32 %84, i32 %85, i32* %86, i32 255)
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %89 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @wsprintfW(i32* %88, i32* %89, i64 %92, i64 %95)
  %97 = load i32, i32* @COMDLG32_hInstance, align 4
  %98 = load i32, i32* @PD32_PRINT_TITLE, align 4
  %99 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %100 = call i32 @LoadStringW(i32 %97, i32 %98, i32* %99, i32 255)
  %101 = load i64, i64* %4, align 8
  %102 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %103 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %104 = load i32, i32* @MB_OK, align 4
  %105 = load i32, i32* @MB_ICONWARNING, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @MessageBoxW(i64 %101, i32* %102, i32* %103, i32 %106)
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %3, align 4
  br label %291

109:                                              ; preds = %77
  %110 = load i64, i64* %10, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 5
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 4
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @PD_PAGENUMS, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %128

121:                                              ; preds = %38
  %122 = load i32, i32* @PD_PAGENUMS, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %121, %109
  %129 = load i64, i64* %4, align 8
  %130 = load i32, i32* @rad2, align 4
  %131 = call i64 @IsDlgButtonChecked(i64 %129, i32 %130)
  %132 = load i64, i64* @BST_CHECKED, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load i32, i32* @PD_SELECTION, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %147

140:                                              ; preds = %128
  %141 = load i32, i32* @PD_SELECTION, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %140, %134
  %148 = load i64, i64* %4, align 8
  %149 = load i32, i32* @chx1, align 4
  %150 = call i64 @IsDlgButtonChecked(i64 %148, i32 %149)
  %151 = load i64, i64* @BST_CHECKED, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load i32, i32* @PD_PRINTTOFILE, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PRINTDLG_UpdatePrintDlgA.file, i64 0, i64 0), i8** %160, align 8
  br label %161

161:                                              ; preds = %153, %147
  %162 = load i64, i64* %4, align 8
  %163 = load i32, i32* @chx2, align 4
  %164 = call i64 @IsDlgButtonChecked(i64 %162, i32 %163)
  %165 = load i64, i64* @BST_CHECKED, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = call i32 @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %161
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @PD_USEDEVMODECOPIESANDCOLLATE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %218

176:                                              ; preds = %169
  %177 = load i32, i32* @PD_COLLATE, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 3
  store i32 1, i32* %184, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @DM_COLLATE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %176
  %192 = load i64, i64* %4, align 8
  %193 = load i32, i32* @chx2, align 4
  %194 = call i64 @IsDlgButtonChecked(i64 %192, i32 %193)
  %195 = load i64, i64* @BST_CHECKED, align 8
  %196 = icmp eq i64 %194, %195
  %197 = zext i1 %196 to i32
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  br label %200

200:                                              ; preds = %191, %176
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @DM_COPIES, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %200
  %208 = load i64, i64* %4, align 8
  %209 = load i32, i32* @edt3, align 4
  %210 = load i32, i32* @FALSE, align 4
  %211 = call i8* @GetDlgItemInt(i64 %208, i32 %209, i32* null, i32 %210)
  %212 = ptrtoint i8* %211 to i32
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  store i32 %212, i32* %216, align 4
  br label %217

217:                                              ; preds = %207, %200
  br label %249

218:                                              ; preds = %169
  %219 = load i64, i64* %4, align 8
  %220 = load i32, i32* @chx2, align 4
  %221 = call i64 @IsDlgButtonChecked(i64 %219, i32 %220)
  %222 = load i64, i64* @BST_CHECKED, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %218
  %225 = load i32, i32* @PD_COLLATE, align 4
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  br label %237

230:                                              ; preds = %218
  %231 = load i32, i32* @PD_COLLATE, align 4
  %232 = xor i32 %231, -1
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = and i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %230, %224
  %238 = load i64, i64* %4, align 8
  %239 = load i32, i32* @edt3, align 4
  %240 = load i32, i32* @FALSE, align 4
  %241 = call i8* @GetDlgItemInt(i64 %238, i32 %239, i32* null, i32 %240)
  %242 = ptrtoint i8* %241 to i32
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 3
  store i32 %242, i32* %244, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  store i32 1, i32* %248, align 4
  br label %249

249:                                              ; preds = %237, %217
  %250 = load i64, i64* %4, align 8
  %251 = load i32, i32* @cmb1, align 4
  %252 = call i64 @GetDlgItem(i64 %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %288

254:                                              ; preds = %249
  %255 = load i64, i64* %4, align 8
  %256 = load i32, i32* @cmb1, align 4
  %257 = call i64 @GetDlgItem(i64 %255, i32 %256)
  store i64 %257, i64* %14, align 8
  %258 = load i64, i64* %14, align 8
  %259 = load i32, i32* @CB_GETCURSEL, align 4
  %260 = call i8* @SendMessageA(i64 %258, i32 %259, i32 0, i32 0)
  %261 = ptrtoint i8* %260 to i32
  store i32 %261, i32* %15, align 4
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* @CB_ERR, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %287

265:                                              ; preds = %254
  %266 = load i64, i64* %14, align 8
  %267 = load i32, i32* @CB_GETITEMDATA, align 4
  %268 = load i32, i32* %15, align 4
  %269 = call i8* @SendMessageA(i64 %266, i32 %267, i32 %268, i32 0)
  store i8* %269, i8** %16, align 8
  %270 = load i32, i32* @DM_PRINTQUALITY, align 4
  %271 = load i32, i32* @DM_YRESOLUTION, align 4
  %272 = or i32 %270, %271
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 4
  %277 = load i8*, i8** %16, align 8
  %278 = call i32 @LOWORD(i8* %277)
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  store i32 %278, i32* %282, align 4
  %283 = load i8*, i8** %16, align 8
  %284 = call i32 @HIWORD(i8* %283)
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 2
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %265, %254
  br label %288

288:                                              ; preds = %287, %249
  br label %289

289:                                              ; preds = %288, %31
  %290 = load i32, i32* @TRUE, align 4
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %289, %83, %28
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @IsDlgButtonChecked(i64, i32) #1

declare dso_local i8* @GetDlgItemInt(i64, i32, i32*, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @wsprintfW(i32*, i32*, i64, i64) #1

declare dso_local i32 @MessageBoxW(i64, i32*, i32*, i32) #1

declare dso_local i64 @GetDlgItem(i64, i32) #1

declare dso_local i8* @SendMessageA(i64, i32, i32, i32) #1

declare dso_local i32 @LOWORD(i8*) #1

declare dso_local i32 @HIWORD(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
