; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_settings.c_NOTEPAD_LoadSettingsFromRegistry.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_settings.c_NOTEPAD_LoadSettingsFromRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@SM_CXSCREEN = common dso_local global i32 0, align 4
@SM_CYSCREEN = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@s_szRegistryKey = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"lfCharSet\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"lfClipPrecision\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"lfEscapement\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"lfFaceName\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"lfItalic\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"lfOrientation\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"lfOutPrecision\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"lfPitchAndFamily\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"lfQuality\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"lfStrikeOut\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"lfUnderline\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"lfWeight\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"iPointSize\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"fWrap\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"fStatusBar\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"szHeader\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"szTrailer\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"iMarginLeft\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"iMarginTop\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"iMarginRight\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"iMarginBottom\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"iWindowPosX\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"iWindowPosY\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"iWindowPosDX\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"iWindowPosDY\00", align 1
@FALSE = common dso_local global i8* null, align 8
@STRING_PAGESETUP_HEADERVALUE = common dso_local global i32 0, align 4
@STRING_PAGESETUP_FOOTERVALUE = common dso_local global i32 0, align 4
@ANSI_CHARSET = common dso_local global i32 0, align 4
@CLIP_STROKE_PRECIS = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [15 x i8] c"Lucida Console\00", align 1
@OUT_STRING_PRECIS = common dso_local global i32 0, align 4
@FIXED_PITCH = common dso_local global i32 0, align 4
@FF_MODERN = common dso_local global i32 0, align 4
@PROOF_QUALITY = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i64 0, align 8
@WM_SETFONT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NOTEPAD_LoadSettingsFromRegistry() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32* null, i32** %1, align 8
  store i64 0, i64* %3, align 8
  %7 = load i32, i32* @SM_CXSCREEN, align 4
  %8 = call i64 @GetSystemMetrics(i32 %7)
  %9 = load i32, i32* @SM_CYSCREEN, align 4
  %10 = call i64 @GetSystemMetrics(i32 %9)
  %11 = icmp sgt i64 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @SM_CYSCREEN, align 4
  %14 = call i64 @GetSystemMetrics(i32 %13)
  br label %18

15:                                               ; preds = %0
  %16 = load i32, i32* @SM_CXSCREEN, align 4
  %17 = call i64 @GetSystemMetrics(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i64 [ %14, %12 ], [ %17, %15 ]
  %20 = sitofp i64 %19 to double
  store double %20, double* %4, align 8
  %21 = load double, double* %4, align 8
  %22 = fmul double %21, 0x3FEE666666666666
  store double %22, double* %5, align 8
  %23 = load double, double* %5, align 8
  %24 = fmul double %23, 3.000000e+00
  %25 = fdiv double %24, 4.000000e+00
  store double %25, double* %6, align 8
  %26 = load double, double* %5, align 8
  %27 = fptosi double %26 to i32
  %28 = load double, double* %6, align 8
  %29 = fptosi double %28 to i32
  %30 = call i32 @SetRect(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 9), i32 0, i32 0, i32 %27, i32 %29)
  %31 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %32 = load i32, i32* @s_szRegistryKey, align 4
  %33 = call i64 @RegOpenKey(i32 %31, i32 %32, i32** %1)
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %148

36:                                               ; preds = %18
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @QueryByte(i32* %37, i32 %38, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 0))
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @QueryByte(i32* %40, i32 %41, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 1))
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @QueryDword(i32* %43, i32 %44, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 12))
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 11), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 11), align 8
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = call i32 @QueryString(i32* %46, i32 %47, i32 %48, i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %54 = call i32 @QueryByte(i32* %52, i32 %53, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 2))
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %57 = call i32 @QueryDword(i32* %55, i32 %56, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 10))
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %60 = call i32 @QueryByte(i32* %58, i32 %59, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 3))
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @_T(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %63 = call i32 @QueryByte(i32* %61, i32 %62, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 4))
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %66 = call i32 @QueryByte(i32* %64, i32 %65, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 5))
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %69 = call i32 @QueryByte(i32* %67, i32 %68, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 6))
  %70 = load i32*, i32** %1, align 8
  %71 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %72 = call i32 @QueryByte(i32* %70, i32 %71, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 7))
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %75 = call i32 @QueryDword(i32* %73, i32 %74, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 9))
  %76 = load i32*, i32** %1, align 8
  %77 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %78 = call i32 @QueryDword(i32* %76, i32 %77, i64* %3)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %81 = call i32 @QueryBool(i32* %79, i32 %80, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0))
  %82 = load i32*, i32** %1, align 8
  %83 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %84 = call i32 @QueryBool(i32* %82, i32 %83, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 1))
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 7), align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 7), align 8
  %89 = call i32 @ARRAY_SIZE(i32 %88)
  %90 = call i32 @QueryString(i32* %85, i32 %86, i32 %87, i32 %89)
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 5), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 5), align 8
  %95 = call i32 @ARRAY_SIZE(i32 %94)
  %96 = call i32 @QueryString(i32* %91, i32 %92, i32 %93, i32 %95)
  %97 = load i32*, i32** %1, align 8
  %98 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %99 = call i32 @QueryDword(i32* %97, i32 %98, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 8, i32 2))
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %102 = call i32 @QueryDword(i32* %100, i32 %101, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 8, i32 0))
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %105 = call i32 @QueryDword(i32* %103, i32 %104, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 8, i32 3))
  %106 = load i32*, i32** %1, align 8
  %107 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %108 = call i32 @QueryDword(i32* %106, i32 %107, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 8, i32 1))
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %111 = call i32 @QueryDword(i32* %109, i32 %110, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 9, i32 2))
  %112 = load i32*, i32** %1, align 8
  %113 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %114 = call i32 @QueryDword(i32* %112, i32 %113, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 9, i32 0))
  %115 = load i32*, i32** %1, align 8
  %116 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %117 = bitcast double* %5 to i64*
  %118 = call i32 @QueryDword(i32* %115, i32 %116, i64* %117)
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %121 = bitcast double* %6 to i64*
  %122 = call i32 @QueryDword(i32* %119, i32 %120, i64* %121)
  %123 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 9, i32 2), align 8
  %124 = sitofp i64 %123 to double
  %125 = load double, double* %5, align 8
  %126 = fadd double %124, %125
  %127 = fptosi double %126 to i64
  store i64 %127, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 9, i32 3), align 8
  %128 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 9, i32 0), align 8
  %129 = sitofp i64 %128 to double
  %130 = load double, double* %6, align 8
  %131 = fadd double %129, %130
  %132 = fptosi double %131 to i64
  store i64 %132, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 9, i32 1), align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 1), align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  store i32 %136, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 1), align 4
  %137 = load i64, i64* %3, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %36
  %140 = load i64, i64* %3, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i8* @HeightFromPointSize(i32 %141)
  store i8* %142, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 8), align 8
  br label %145

143:                                              ; preds = %36
  %144 = call i8* @HeightFromPointSize(i32 100)
  store i8* %144, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 8), align 8
  br label %145

145:                                              ; preds = %143, %139
  %146 = load i32*, i32** %1, align 8
  %147 = call i32 @RegCloseKey(i32* %146)
  br label %185

148:                                              ; preds = %18
  %149 = load i8*, i8** @FALSE, align 8
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 1), align 4
  %151 = load i8*, i8** @FALSE, align 8
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0), align 8
  %153 = call i32 @SetRect(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 8), i32 750, i32 1000, i32 750, i32 1000)
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6), align 4
  %155 = load i32, i32* @STRING_PAGESETUP_HEADERVALUE, align 4
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 7), align 8
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 7), align 8
  %158 = call i32 @ARRAY_SIZE(i32 %157)
  %159 = call i32 @LoadString(i32 %154, i32 %155, i32 %156, i32 %158)
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6), align 4
  %161 = load i32, i32* @STRING_PAGESETUP_FOOTERVALUE, align 4
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 5), align 8
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 5), align 8
  %164 = call i32 @ARRAY_SIZE(i32 %163)
  %165 = call i32 @LoadString(i32 %160, i32 %161, i32 %162, i32 %164)
  %166 = call i32 @ZeroMemory(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4), i32 72)
  %167 = load i32, i32* @ANSI_CHARSET, align 4
  store i32 %167, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 0), align 8
  %168 = load i32, i32* @CLIP_STROKE_PRECIS, align 4
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 12), align 8
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 11), align 8
  %170 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %171 = call i32 @_tcscpy(i32 %169, i32 %170)
  %172 = load i8*, i8** @FALSE, align 8
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 10), align 8
  %174 = load i32, i32* @OUT_STRING_PRECIS, align 4
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 3), align 4
  %175 = load i32, i32* @FIXED_PITCH, align 4
  %176 = load i32, i32* @FF_MODERN, align 4
  %177 = or i32 %175, %176
  store i32 %177, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 4), align 8
  %178 = load i32, i32* @PROOF_QUALITY, align 4
  store i32 %178, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 5), align 4
  %179 = load i8*, i8** @FALSE, align 8
  %180 = ptrtoint i8* %179 to i32
  store i32 %180, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 6), align 8
  %181 = load i8*, i8** @FALSE, align 8
  %182 = ptrtoint i8* %181 to i32
  store i32 %182, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 7), align 4
  %183 = load i64, i64* @FW_NORMAL, align 8
  store i64 %183, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 9), align 8
  %184 = call i8* @HeightFromPointSize(i32 100)
  store i8* %184, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4, i32 8), align 8
  br label %185

185:                                              ; preds = %148, %145
  %186 = call i64 @CreateFontIndirect(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4))
  store i64 %186, i64* %2, align 8
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 3), align 8
  %188 = load i32, i32* @WM_SETFONT, align 4
  %189 = load i64, i64* %2, align 8
  %190 = trunc i64 %189 to i32
  %191 = load i64, i64* @TRUE, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 @SendMessage(i32 %187, i32 %188, i32 %190, i32 %192)
  %194 = load i64, i64* %2, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %185
  %197 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 2), align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 2), align 8
  %201 = call i32 @DeleteObject(i64 %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i64, i64* %2, align 8
  store i64 %203, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 2), align 8
  br label %204

204:                                              ; preds = %202, %185
  ret void
}

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i32 @SetRect(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i64 @RegOpenKey(i32, i32, i32**) #1

declare dso_local i32 @QueryByte(i32*, i32, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @QueryDword(i32*, i32, i64*) #1

declare dso_local i32 @QueryString(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @QueryBool(i32*, i32, i32*) #1

declare dso_local i8* @HeightFromPointSize(i32) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i32 @LoadString(i32, i32, i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @_tcscpy(i32, i32) #1

declare dso_local i64 @CreateFontIndirect(%struct.TYPE_5__*) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
