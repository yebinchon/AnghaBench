; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_parse.c_IniParseFile.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_parse.c_IniParseFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i8*, %struct.TYPE_22__*, i8* }

@.str = private unnamed_addr constant [32 x i8] c"IniParseFile() IniFileSize: %d\0A\00", align 1
@IniFileSectionInitialized = common dso_local global i64 0, align 8
@IniFileSectionListHead = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@TAG_INI_FILE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TAG_INI_SECTION = common dso_local global i32 0, align 4
@TAG_INI_NAME = common dso_local global i32 0, align 4
@IniFileSectionCount = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Error: freeldr.ini:%lu: Setting '%s' found outside of a [section].\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Press any key to continue...\0A\00", align 1
@TAG_INI_SECTION_ITEM = common dso_local global i32 0, align 4
@TAG_INI_VALUE = common dso_local global i32 0, align 4
@IniFileSettingCount = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Parsed %d sections and %d settings.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"IniParseFile() done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @IniParseFile(%struct.TYPE_22__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* @IniFileSectionInitialized, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = call i32 @InitializeListHead(i32* @IniFileSectionListHead)
  %19 = load i64, i64* @TRUE, align 8
  store i64 %19, i64* @IniFileSectionInitialized, align 8
  br label %20

20:                                               ; preds = %17, %2
  store i64 80, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @TAG_INI_FILE, align 4
  %24 = call i8* @FrLdrTempAlloc(i32 %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %8, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %27 = icmp ne %struct.TYPE_22__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %3, align 8
  br label %249

30:                                               ; preds = %20
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %237, %211, %144, %119, %78, %30
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %240

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @IniGetNextLineSize(%struct.TYPE_22__* %37, i64 %38, i64 %39)
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %35
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @IniGetNextLineSize(%struct.TYPE_22__* %43, i64 %44, i64 %45)
  store i64 %46, i64* %9, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %48 = load i32, i32* @TAG_INI_FILE, align 4
  %49 = call i32 @FrLdrTempFree(%struct.TYPE_22__* %47, i32 %48)
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @TAG_INI_FILE, align 4
  %53 = call i8* @FrLdrTempAlloc(i32 %51, i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %54, %struct.TYPE_22__** %8, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %56 = icmp ne %struct.TYPE_22__* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %42
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %3, align 8
  br label %249

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %35
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @IniGetNextLine(%struct.TYPE_22__* %61, i64 %62, %struct.TYPE_22__* %63, i64 %64, i64 %65)
  store i64 %66, i64* %6, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %68 = call i64 @strlen(%struct.TYPE_22__* %67)
  store i64 %68, i64* %10, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i64 @IniIsLineEmpty(%struct.TYPE_22__* %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %60
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i64 @IniIsCommentLine(%struct.TYPE_22__* %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %60
  %79 = load i64, i64* %7, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %7, align 8
  br label %31

81:                                               ; preds = %73
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i64 @IniIsSectionName(%struct.TYPE_22__* %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %136

86:                                               ; preds = %81
  %87 = load i32, i32* @TAG_INI_SECTION, align 4
  %88 = call i8* @FrLdrTempAlloc(i32 4, i32 %87)
  %89 = bitcast i8* %88 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %89, %struct.TYPE_22__** %11, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %91 = icmp ne %struct.TYPE_22__* %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %94 = load i32, i32* @TAG_INI_FILE, align 4
  %95 = call i32 @FrLdrTempFree(%struct.TYPE_22__* %93, i32 %94)
  %96 = load i64, i64* @FALSE, align 8
  store i64 %96, i64* %3, align 8
  br label %249

97:                                               ; preds = %86
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %99 = call i32 @RtlZeroMemory(%struct.TYPE_22__* %98, i32 4)
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @IniGetSectionNameSize(%struct.TYPE_22__* %100, i64 %101)
  %103 = load i32, i32* @TAG_INI_NAME, align 4
  %104 = call i8* @FrLdrTempAlloc(i32 %102, i32 %103)
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 5
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %119, label %111

111:                                              ; preds = %97
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %113 = load i32, i32* @TAG_INI_FILE, align 4
  %114 = call i32 @FrLdrTempFree(%struct.TYPE_22__* %112, i32 %113)
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %116 = load i32, i32* @TAG_INI_FILE, align 4
  %117 = call i32 @FrLdrTempFree(%struct.TYPE_22__* %115, i32 %116)
  %118 = load i64, i64* @FALSE, align 8
  store i64 %118, i64* %3, align 8
  br label %249

119:                                              ; preds = %97
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 5
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @IniExtractSectionName(i8* %122, %struct.TYPE_22__* %123, i64 %124)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = call i32 @InitializeListHead(i32* %127)
  %129 = load i32, i32* @IniFileSectionCount, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @IniFileSectionCount, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = call i32 @InsertTailList(i32* @IniFileSectionListHead, i32* %132)
  %134 = load i64, i64* %7, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %7, align 8
  br label %31

136:                                              ; preds = %81
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %138 = load i64, i64* %10, align 8
  %139 = call i64 @IniIsSetting(%struct.TYPE_22__* %137, i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %237

141:                                              ; preds = %136
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %143 = icmp eq %struct.TYPE_22__* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %145, %struct.TYPE_22__* %146)
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %149 = call i32 (...) @MachConsGetCh()
  %150 = load i64, i64* %7, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %7, align 8
  br label %31

152:                                              ; preds = %141
  %153 = load i32, i32* @TAG_INI_SECTION_ITEM, align 4
  %154 = call i8* @FrLdrTempAlloc(i32 4, i32 %153)
  %155 = bitcast i8* %154 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %155, %struct.TYPE_22__** %12, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %157 = icmp ne %struct.TYPE_22__* %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %152
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %160 = load i32, i32* @TAG_INI_FILE, align 4
  %161 = call i32 @FrLdrTempFree(%struct.TYPE_22__* %159, i32 %160)
  %162 = load i64, i64* @FALSE, align 8
  store i64 %162, i64* %3, align 8
  br label %249

163:                                              ; preds = %152
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %165 = call i32 @RtlZeroMemory(%struct.TYPE_22__* %164, i32 4)
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @IniGetSettingNameSize(%struct.TYPE_22__* %166, i64 %167)
  %169 = load i32, i32* @TAG_INI_NAME, align 4
  %170 = call i8* @FrLdrTempAlloc(i32 %168, i32 %169)
  %171 = bitcast i8* %170 to %struct.TYPE_22__*
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 4
  store %struct.TYPE_22__* %171, %struct.TYPE_22__** %173, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  %177 = icmp ne %struct.TYPE_22__* %176, null
  br i1 %177, label %186, label %178

178:                                              ; preds = %163
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %180 = load i32, i32* @TAG_INI_SECTION_ITEM, align 4
  %181 = call i32 @FrLdrTempFree(%struct.TYPE_22__* %179, i32 %180)
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %183 = load i32, i32* @TAG_INI_FILE, align 4
  %184 = call i32 @FrLdrTempFree(%struct.TYPE_22__* %182, i32 %183)
  %185 = load i64, i64* @FALSE, align 8
  store i64 %185, i64* %3, align 8
  br label %249

186:                                              ; preds = %163
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %188 = load i64, i64* %10, align 8
  %189 = call i32 @IniGetSettingValueSize(%struct.TYPE_22__* %187, i64 %188)
  %190 = load i32, i32* @TAG_INI_VALUE, align 4
  %191 = call i8* @FrLdrTempAlloc(i32 %189, i32 %190)
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 3
  store i8* %191, i8** %193, align 8
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %211, label %198

198:                                              ; preds = %186
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %200, align 8
  %202 = load i32, i32* @TAG_INI_NAME, align 4
  %203 = call i32 @FrLdrTempFree(%struct.TYPE_22__* %201, i32 %202)
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %205 = load i32, i32* @TAG_INI_SECTION_ITEM, align 4
  %206 = call i32 @FrLdrTempFree(%struct.TYPE_22__* %204, i32 %205)
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %208 = load i32, i32* @TAG_INI_FILE, align 4
  %209 = call i32 @FrLdrTempFree(%struct.TYPE_22__* %207, i32 %208)
  %210 = load i64, i64* @FALSE, align 8
  store i64 %210, i64* %3, align 8
  br label %249

211:                                              ; preds = %186
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 4
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %213, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %216 = load i64, i64* %10, align 8
  %217 = call i32 @IniExtractSettingName(%struct.TYPE_22__* %214, %struct.TYPE_22__* %215, i64 %216)
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 3
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %222 = load i64, i64* %10, align 8
  %223 = call i32 @IniExtractSettingValue(i8* %220, %struct.TYPE_22__* %221, i64 %222)
  %224 = load i32, i32* @IniFileSettingCount, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* @IniFileSettingCount, align 4
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  %234 = call i32 @InsertTailList(i32* %231, i32* %233)
  %235 = load i64, i64* %7, align 8
  %236 = add nsw i64 %235, 1
  store i64 %236, i64* %7, align 8
  br label %31

237:                                              ; preds = %136
  %238 = load i64, i64* %7, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* %7, align 8
  br label %31

240:                                              ; preds = %31
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %242 = load i32, i32* @TAG_INI_FILE, align 4
  %243 = call i32 @FrLdrTempFree(%struct.TYPE_22__* %241, i32 %242)
  %244 = load i32, i32* @IniFileSectionCount, align 4
  %245 = load i32, i32* @IniFileSettingCount, align 4
  %246 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %244, i32 %245)
  %247 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %248 = load i64, i64* @TRUE, align 8
  store i64 %248, i64* %3, align 8
  br label %249

249:                                              ; preds = %240, %198, %178, %158, %111, %92, %57, %28
  %250 = load i64, i64* %3, align 8
  ret i64 %250
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i8* @FrLdrTempAlloc(i32, i32) #1

declare dso_local i64 @IniGetNextLineSize(%struct.TYPE_22__*, i64, i64) #1

declare dso_local i32 @FrLdrTempFree(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @IniGetNextLine(%struct.TYPE_22__*, i64, %struct.TYPE_22__*, i64, i64) #1

declare dso_local i64 @strlen(%struct.TYPE_22__*) #1

declare dso_local i64 @IniIsLineEmpty(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @IniIsCommentLine(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @IniIsSectionName(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @IniGetSectionNameSize(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @IniExtractSectionName(i8*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i64 @IniIsSetting(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @MachConsGetCh(...) #1

declare dso_local i32 @IniGetSettingNameSize(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @IniGetSettingValueSize(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @IniExtractSettingName(%struct.TYPE_22__*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @IniExtractSettingValue(i8*, %struct.TYPE_22__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
