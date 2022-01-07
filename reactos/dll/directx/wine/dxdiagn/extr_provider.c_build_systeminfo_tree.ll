; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_build_systeminfo_tree.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_build_systeminfo_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i8* }

@build_systeminfo_tree.dwDirectXVersionMajor = internal constant [22 x i8] c"dwDirectXVersionMajor\00", align 16
@build_systeminfo_tree.dwDirectXVersionMinor = internal constant [22 x i8] c"dwDirectXVersionMinor\00", align 16
@build_systeminfo_tree.szDirectXVersionLetter = internal constant [23 x i8] c"szDirectXVersionLetter\00", align 16
@build_systeminfo_tree.szDirectXVersionLetter_v = internal constant [2 x i8] c"c\00", align 1
@build_systeminfo_tree.bDebug = internal constant [7 x i8] c"bDebug\00", align 1
@build_systeminfo_tree.bNECPC98 = internal constant [9 x i8] c"bNECPC98\00", align 1
@build_systeminfo_tree.szDirectXVersionEnglish = internal constant [24 x i8] c"szDirectXVersionEnglish\00", align 16
@build_systeminfo_tree.szDirectXVersionEnglish_v = internal constant [15 x i8] c"4.09.0000.0904\00", align 1
@build_systeminfo_tree.szDirectXVersionLongEnglish = internal constant [28 x i8] c"szDirectXVersionLongEnglish\00", align 16
@build_systeminfo_tree.szDirectXVersionLongEnglish_v = internal constant [33 x i8] c"= \22DirectX 9.0c (4.09.0000.0904)\00", align 16
@build_systeminfo_tree.ullPhysicalMemory = internal constant [18 x i8] c"ullPhysicalMemory\00", align 16
@build_systeminfo_tree.ullUsedPageFile = internal constant [16 x i8] c"ullUsedPageFile\00", align 16
@build_systeminfo_tree.ullAvailPageFile = internal constant [17 x i8] c"ullAvailPageFile\00", align 16
@build_systeminfo_tree.bNetMeetingRunning = internal constant [19 x i8] c"bNetMeetingRunning\00", align 16
@build_systeminfo_tree.szWindowsDir = internal constant [13 x i8] c"szWindowsDir\00", align 1
@build_systeminfo_tree.dwOSMajorVersion = internal constant [17 x i8] c"dwOSMajorVersion\00", align 16
@build_systeminfo_tree.dwOSMinorVersion = internal constant [17 x i8] c"dwOSMinorVersion\00", align 16
@build_systeminfo_tree.dwOSBuildNumber = internal constant [16 x i8] c"dwOSBuildNumber\00", align 16
@build_systeminfo_tree.dwOSPlatformID = internal constant [15 x i8] c"dwOSPlatformID\00", align 1
@build_systeminfo_tree.szCSDVersion = internal constant [13 x i8] c"szCSDVersion\00", align 1
@build_systeminfo_tree.szPhysicalMemoryEnglish = internal constant [24 x i8] c"szPhysicalMemoryEnglish\00", align 16
@build_systeminfo_tree.szPageFileLocalized = internal constant [20 x i8] c"szPageFileLocalized\00", align 16
@build_systeminfo_tree.szPageFileEnglish = internal constant [18 x i8] c"szPageFileEnglish\00", align 16
@build_systeminfo_tree.szMachineNameLocalized = internal constant [23 x i8] c"szMachineNameLocalized\00", align 16
@build_systeminfo_tree.szMachineNameEnglish = internal constant [21 x i8] c"szMachineNameEnglish\00", align 16
@build_systeminfo_tree.szSystemManufacturerEnglish = internal constant [28 x i8] c"szSystemManufacturerEnglish\00", align 16
@build_systeminfo_tree.szSystemModelEnglish = internal constant [21 x i8] c"szSystemModelEnglish\00", align 16
@build_systeminfo_tree.szBIOSEnglish = internal constant [14 x i8] c"szBIOSEnglish\00", align 1
@build_systeminfo_tree.szSetupParamEnglish = internal constant [20 x i8] c"szSetupParamEnglish\00", align 16
@build_systeminfo_tree.szDxDiagVersion = internal constant [16 x i8] c"szDxDiagVersion\00", align 16
@build_systeminfo_tree.notpresentW = internal constant [12 x i8] c"Not present\00", align 1
@build_systeminfo_tree.pagefile_fmtW = internal constant [26 x i8] c"%uMB used, %uMB available\00", align 16
@build_systeminfo_tree.physmem_fmtW = internal constant [9 x i8] c"%uMB RAM\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@MAX_COMPUTERNAME_LENGTH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@dxdiagn_instance = common dso_local global i32 0, align 4
@IDS_PAGE_FILE_FORMAT = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_STRING = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@szEmpty = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @build_systeminfo_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_systeminfo_tree(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [200 x i8], align 16
  %14 = alloca [200 x i8], align 16
  %15 = alloca [2 x i8*], align 16
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @MAX_COMPUTERNAME_LENGTH, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @add_ui4_property(i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @build_systeminfo_tree.dwDirectXVersionMajor, i64 0, i64 0), i32 9)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

32:                                               ; preds = %1
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @add_ui4_property(i32* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @build_systeminfo_tree.dwDirectXVersionMinor, i64 0, i64 0), i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

40:                                               ; preds = %32
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @add_bstr_property(i32* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @build_systeminfo_tree.szDirectXVersionLetter, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_systeminfo_tree.szDirectXVersionLetter_v, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

48:                                               ; preds = %40
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @add_bstr_property(i32* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @build_systeminfo_tree.szDirectXVersionEnglish, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @build_systeminfo_tree.szDirectXVersionEnglish_v, i64 0, i64 0))
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @FAILED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

56:                                               ; preds = %48
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @add_bstr_property(i32* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @build_systeminfo_tree.szDirectXVersionLongEnglish, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @build_systeminfo_tree.szDirectXVersionLongEnglish_v, i64 0, i64 0))
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

64:                                               ; preds = %56
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @FALSE, align 4
  %67 = call i32 @add_bool_property(i32* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @build_systeminfo_tree.bDebug, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

73:                                               ; preds = %64
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @add_bool_property(i32* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @build_systeminfo_tree.bNECPC98, i64 0, i64 0), i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i64 @FAILED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 16, i32* %83, align 4
  %84 = call i32 @GlobalMemoryStatusEx(%struct.TYPE_7__* %5)
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @add_ull_as_bstr_property(i32* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @build_systeminfo_tree.ullPhysicalMemory, i64 0, i64 0), i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @FAILED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

94:                                               ; preds = %82
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %97, %99
  %101 = call i32 @add_ull_as_bstr_property(i32* %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @build_systeminfo_tree.ullUsedPageFile, i64 0, i64 0), i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i64 @FAILED(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

107:                                              ; preds = %94
  %108 = load i32*, i32** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @add_ull_as_bstr_property(i32* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @build_systeminfo_tree.ullAvailPageFile, i64 0, i64 0), i32 %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i64 @FAILED(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

117:                                              ; preds = %107
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 (...) @is_netmeeting_running()
  %120 = call i32 @add_bool_property(i32* %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @build_systeminfo_tree.bNetMeetingRunning, i64 0, i64 0), i32 %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i64 @FAILED(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 32, i32* %127, align 8
  %128 = call i32 @GetVersionExW(%struct.TYPE_6__* %6)
  %129 = load i32*, i32** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @add_ui4_property(i32* %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @build_systeminfo_tree.dwOSMajorVersion, i64 0, i64 0), i32 %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i64 @FAILED(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* %4, align 4
  store i32 %137, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

138:                                              ; preds = %126
  %139 = load i32*, i32** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @add_ui4_property(i32* %139, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @build_systeminfo_tree.dwOSMinorVersion, i64 0, i64 0), i32 %141)
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = call i64 @FAILED(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

148:                                              ; preds = %138
  %149 = load i32*, i32** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @add_ui4_property(i32* %149, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @build_systeminfo_tree.dwOSBuildNumber, i64 0, i64 0), i32 %151)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = call i64 @FAILED(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* %4, align 4
  store i32 %157, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

158:                                              ; preds = %148
  %159 = load i32*, i32** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @add_ui4_property(i32* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @build_systeminfo_tree.dwOSPlatformID, i64 0, i64 0), i32 %161)
  store i32 %162, i32* %4, align 4
  %163 = load i32, i32* %4, align 4
  %164 = call i64 @FAILED(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

168:                                              ; preds = %158
  %169 = load i32*, i32** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @add_bstr_property(i32* %169, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @build_systeminfo_tree.szCSDVersion, i64 0, i64 0), i8* %171)
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = call i64 @FAILED(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i32, i32* %4, align 4
  store i32 %177, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

178:                                              ; preds = %168
  %179 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sdiv i32 %181, 1048576
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i8*
  %185 = call i32 (i8*, i8*, i8*, ...) @swprintf(i8* %179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @build_systeminfo_tree.physmem_fmtW, i64 0, i64 0), i8* %184)
  %186 = load i32*, i32** %3, align 8
  %187 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %188 = call i32 @add_bstr_property(i32* %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @build_systeminfo_tree.szPhysicalMemoryEnglish, i64 0, i64 0), i8* %187)
  store i32 %188, i32* %4, align 4
  %189 = load i32, i32* %4, align 4
  %190 = call i64 @FAILED(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %178
  %193 = load i32, i32* %4, align 4
  store i32 %193, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

194:                                              ; preds = %178
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %196, %198
  %200 = sdiv i32 %199, 1048576
  %201 = sext i32 %200 to i64
  %202 = inttoptr i64 %201 to i8*
  store i8* %202, i8** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = sdiv i32 %204, 1048576
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8*
  store i8* %207, i8** %9, align 8
  %208 = load i32, i32* @dxdiagn_instance, align 4
  %209 = load i32, i32* @IDS_PAGE_FILE_FORMAT, align 4
  %210 = getelementptr inbounds [200 x i8], [200 x i8]* %14, i64 0, i64 0
  %211 = getelementptr inbounds [200 x i8], [200 x i8]* %14, i64 0, i64 0
  %212 = call i8* @ARRAY_SIZE(i8* %211)
  %213 = call i32 @LoadStringW(i32 %208, i32 %209, i8* %210, i8* %212)
  %214 = load i8*, i8** %8, align 8
  %215 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  store i8* %214, i8** %215, align 16
  %216 = load i8*, i8** %9, align 8
  %217 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 1
  store i8* %216, i8** %217, align 8
  %218 = load i32, i32* @FORMAT_MESSAGE_FROM_STRING, align 4
  %219 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %220 = or i32 %218, %219
  %221 = getelementptr inbounds [200 x i8], [200 x i8]* %14, i64 0, i64 0
  %222 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %223 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %224 = call i8* @ARRAY_SIZE(i8* %223)
  %225 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  %226 = bitcast i8** %225 to i32*
  %227 = call i32 @FormatMessageW(i32 %220, i8* %221, i32 0, i32 0, i8* %222, i8* %224, i32* %226)
  %228 = load i32*, i32** %3, align 8
  %229 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %230 = call i32 @add_bstr_property(i32* %228, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @build_systeminfo_tree.szPageFileLocalized, i64 0, i64 0), i8* %229)
  store i32 %230, i32* %4, align 4
  %231 = load i32, i32* %4, align 4
  %232 = call i64 @FAILED(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %194
  %235 = load i32, i32* %4, align 4
  store i32 %235, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

236:                                              ; preds = %194
  %237 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %238 = load i8*, i8** %8, align 8
  %239 = load i8*, i8** %9, align 8
  %240 = call i32 (i8*, i8*, i8*, ...) @swprintf(i8* %237, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @build_systeminfo_tree.pagefile_fmtW, i64 0, i64 0), i8* %238, i8* %239)
  %241 = load i32*, i32** %3, align 8
  %242 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %243 = call i32 @add_bstr_property(i32* %241, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @build_systeminfo_tree.szPageFileEnglish, i64 0, i64 0), i8* %242)
  store i32 %243, i32* %4, align 4
  %244 = load i32, i32* %4, align 4
  %245 = call i64 @FAILED(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %236
  %248 = load i32, i32* %4, align 4
  store i32 %248, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

249:                                              ; preds = %236
  %250 = load i32, i32* @MAX_PATH, align 4
  %251 = call i32 @GetWindowsDirectoryW(i8* %20, i32 %250)
  %252 = load i32*, i32** %3, align 8
  %253 = call i32 @add_bstr_property(i32* %252, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @build_systeminfo_tree.szWindowsDir, i64 0, i64 0), i8* %20)
  store i32 %253, i32* %4, align 4
  %254 = load i32, i32* %4, align 4
  %255 = call i64 @FAILED(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %249
  %258 = load i32, i32* %4, align 4
  store i32 %258, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

259:                                              ; preds = %249
  %260 = call i8* @ARRAY_SIZE(i8* %24)
  store i8* %260, i8** %7, align 8
  %261 = call i32 @GetComputerNameW(i8* %24, i8** %7)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %259
  %264 = load i32, i32* @E_FAIL, align 4
  store i32 %264, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

265:                                              ; preds = %259
  %266 = load i32*, i32** %3, align 8
  %267 = call i32 @add_bstr_property(i32* %266, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @build_systeminfo_tree.szMachineNameLocalized, i64 0, i64 0), i8* %24)
  store i32 %267, i32* %4, align 4
  %268 = load i32, i32* %4, align 4
  %269 = call i64 @FAILED(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = load i32, i32* %4, align 4
  store i32 %272, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

273:                                              ; preds = %265
  %274 = load i32*, i32** %3, align 8
  %275 = call i32 @add_bstr_property(i32* %274, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @build_systeminfo_tree.szMachineNameEnglish, i64 0, i64 0), i8* %24)
  store i32 %275, i32* %4, align 4
  %276 = load i32, i32* %4, align 4
  %277 = call i64 @FAILED(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %273
  %280 = load i32, i32* %4, align 4
  store i32 %280, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

281:                                              ; preds = %273
  %282 = load i32*, i32** %3, align 8
  %283 = load i8*, i8** @szEmpty, align 8
  %284 = call i32 @add_bstr_property(i32* %282, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @build_systeminfo_tree.szSystemManufacturerEnglish, i64 0, i64 0), i8* %283)
  store i32 %284, i32* %4, align 4
  %285 = load i32, i32* %4, align 4
  %286 = call i64 @FAILED(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %281
  %289 = load i32, i32* %4, align 4
  store i32 %289, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

290:                                              ; preds = %281
  %291 = load i32*, i32** %3, align 8
  %292 = load i8*, i8** @szEmpty, align 8
  %293 = call i32 @add_bstr_property(i32* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @build_systeminfo_tree.szSystemModelEnglish, i64 0, i64 0), i8* %292)
  store i32 %293, i32* %4, align 4
  %294 = load i32, i32* %4, align 4
  %295 = call i64 @FAILED(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %290
  %298 = load i32, i32* %4, align 4
  store i32 %298, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

299:                                              ; preds = %290
  %300 = load i32*, i32** %3, align 8
  %301 = load i8*, i8** @szEmpty, align 8
  %302 = call i32 @add_bstr_property(i32* %300, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @build_systeminfo_tree.szBIOSEnglish, i64 0, i64 0), i8* %301)
  store i32 %302, i32* %4, align 4
  %303 = load i32, i32* %4, align 4
  %304 = call i64 @FAILED(i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %299
  %307 = load i32, i32* %4, align 4
  store i32 %307, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

308:                                              ; preds = %299
  %309 = load i32*, i32** %3, align 8
  %310 = call i32 @fill_processor_information(i32* %309)
  store i32 %310, i32* %4, align 4
  %311 = load i32, i32* %4, align 4
  %312 = call i64 @FAILED(i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %308
  %315 = load i32, i32* %4, align 4
  store i32 %315, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

316:                                              ; preds = %308
  %317 = load i32*, i32** %3, align 8
  %318 = call i32 @add_bstr_property(i32* %317, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @build_systeminfo_tree.szSetupParamEnglish, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @build_systeminfo_tree.notpresentW, i64 0, i64 0))
  store i32 %318, i32* %4, align 4
  %319 = load i32, i32* %4, align 4
  %320 = call i64 @FAILED(i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %316
  %323 = load i32, i32* %4, align 4
  store i32 %323, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

324:                                              ; preds = %316
  %325 = load i32*, i32** %3, align 8
  %326 = load i8*, i8** @szEmpty, align 8
  %327 = call i32 @add_bstr_property(i32* %325, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @build_systeminfo_tree.szDxDiagVersion, i64 0, i64 0), i8* %326)
  store i32 %327, i32* %4, align 4
  %328 = load i32, i32* %4, align 4
  %329 = call i64 @FAILED(i32 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %324
  %332 = load i32, i32* %4, align 4
  store i32 %332, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

333:                                              ; preds = %324
  %334 = load i32*, i32** %3, align 8
  %335 = call i32 @fill_language_information(i32* %334)
  store i32 %335, i32* %4, align 4
  %336 = load i32, i32* %4, align 4
  %337 = call i64 @FAILED(i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %333
  %340 = load i32, i32* %4, align 4
  store i32 %340, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

341:                                              ; preds = %333
  %342 = load i32*, i32** %3, align 8
  %343 = call i32 @fill_datetime_information(i32* %342)
  store i32 %343, i32* %4, align 4
  %344 = load i32, i32* %4, align 4
  %345 = call i64 @FAILED(i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %341
  %348 = load i32, i32* %4, align 4
  store i32 %348, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

349:                                              ; preds = %341
  %350 = load i32*, i32** %3, align 8
  %351 = call i32 @fill_os_string_information(i32* %350, %struct.TYPE_6__* %6)
  store i32 %351, i32* %4, align 4
  %352 = load i32, i32* %4, align 4
  %353 = call i64 @FAILED(i32 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %349
  %356 = load i32, i32* %4, align 4
  store i32 %356, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

357:                                              ; preds = %349
  %358 = load i32, i32* @S_OK, align 4
  store i32 %358, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %359

359:                                              ; preds = %357, %355, %347, %339, %331, %322, %314, %306, %297, %288, %279, %271, %263, %257, %247, %234, %192, %176, %166, %156, %146, %136, %124, %115, %105, %92, %80, %71, %62, %54, %46, %38, %30
  %360 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %360)
  %361 = load i32, i32* %2, align 4
  ret i32 %361
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @add_ui4_property(i32*, i8*, i32) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @add_bstr_property(i32*, i8*, i8*) #2

declare dso_local i32 @add_bool_property(i32*, i8*, i32) #2

declare dso_local i32 @GlobalMemoryStatusEx(%struct.TYPE_7__*) #2

declare dso_local i32 @add_ull_as_bstr_property(i32*, i8*, i32) #2

declare dso_local i32 @is_netmeeting_running(...) #2

declare dso_local i32 @GetVersionExW(%struct.TYPE_6__*) #2

declare dso_local i32 @swprintf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @LoadStringW(i32, i32, i8*, i8*) #2

declare dso_local i8* @ARRAY_SIZE(i8*) #2

declare dso_local i32 @FormatMessageW(i32, i8*, i32, i32, i8*, i8*, i32*) #2

declare dso_local i32 @GetWindowsDirectoryW(i8*, i32) #2

declare dso_local i32 @GetComputerNameW(i8*, i8**) #2

declare dso_local i32 @fill_processor_information(i32*) #2

declare dso_local i32 @fill_language_information(i32*) #2

declare dso_local i32 @fill_datetime_information(i32*) #2

declare dso_local i32 @fill_os_string_information(i32*, %struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
