; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/welcome/extr_welcome.c_LoadLocalizedResourcesFromINI.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/welcome/extr_welcome.c_LoadLocalizedResourcesFromINI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64*, i64*, i64*, i64* }

@LOCALE_NAME_MAX_LENGTH = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"en-US\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s\\%s.ini\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Defaults\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"AppTitle\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ReactOS - Welcome\00", align 1
@szAppTitle = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"DefaultTopicTitle\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@szDefaultTitle = common dso_local global i64* null, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"DefaultTopicDescription\00", align 1
@szDefaultDesc = common dso_local global i64* null, align 8
@BUFFER_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"Topic\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"MenuText\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"ConfigCommand\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"ConfigArgs\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @LoadLocalizedResourcesFromINI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadLocalizedResourcesFromINI(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_3__, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %19 = load i32, i32* @LOCALE_NAME_MAX_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  store i64* null, i64** %12, align 8
  store i64* null, i64** %13, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ARRAYSIZE(i64* %22)
  %28 = call i64 @GetLocaleName(i32 %26, i64* %22, i32 %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = call i32 @ARRAYSIZE(i64* %22)
  %34 = call i64* @TEXT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @StringCchCopy(i64* %22, i32 %33, i64* %34)
  br label %36

36:                                               ; preds = %32, %2
  %37 = call i32 @ARRAYSIZE(i64* %25)
  %38 = call i64* @TEXT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i64*, i64** %5, align 8
  %40 = call i32 @StringCchPrintf(i64* %25, i32 %37, i64* %38, i64* %39, i64* %22)
  %41 = call i32 @GetFileAttributes(i64* %25)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45, %36
  %51 = call i32 @ARRAYSIZE(i64* %22)
  %52 = call i64* @TEXT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 @StringCchCopy(i64* %22, i32 %51, i64* %52)
  %54 = call i32 @ARRAYSIZE(i64* %25)
  %55 = call i64* @TEXT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i64*, i64** %5, align 8
  %57 = call i32 @StringCchPrintf(i64* %25, i32 %54, i64* %55, i64* %56, i64* %22)
  br label %58

58:                                               ; preds = %50, %45
  %59 = call i32 @GetFileAttributes(i64* %25)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63, %58
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %237

70:                                               ; preds = %63
  %71 = call i64* @TEXT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i64* @TEXT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %73 = call i64* @TEXT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i64*, i64** @szAppTitle, align 8
  %75 = load i64*, i64** @szAppTitle, align 8
  %76 = call i32 @ARRAYSIZE(i64* %75)
  %77 = call i32 @GetPrivateProfileString(i64* %71, i64* %72, i64* %73, i64* %74, i32 %76, i64* %25)
  %78 = call i64* @TEXT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %79 = call i64* @TEXT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %80 = call i64* @TEXT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i64*, i64** @szDefaultTitle, align 8
  %82 = load i64*, i64** @szDefaultTitle, align 8
  %83 = call i32 @ARRAYSIZE(i64* %82)
  %84 = call i32 @GetPrivateProfileString(i64* %78, i64* %79, i64* %80, i64* %81, i32 %83, i64* %25)
  %85 = call i64* @TEXT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %86 = call i64* @TEXT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %87 = call i64* @TEXT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i64*, i64** @szDefaultDesc, align 8
  %89 = load i64*, i64** @szDefaultDesc, align 8
  %90 = call i32 @ARRAYSIZE(i64* %89)
  %91 = call i32 @GetPrivateProfileString(i64* %85, i64* %86, i64* %87, i64* %88, i32 %90, i64* %25)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %70
  %94 = load i64*, i64** @szDefaultDesc, align 8
  store i64 0, i64* %94, align 8
  br label %98

95:                                               ; preds = %70
  %96 = load i64*, i64** @szDefaultDesc, align 8
  %97 = call i32 @TranslateEscapes(i64* %96)
  br label %98

98:                                               ; preds = %95, %93
  %99 = load i32, i32* @BUFFER_SIZE, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %124, %98
  %101 = call i32 (...) @GetProcessHeap()
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 8
  %105 = trunc i64 %104 to i32
  %106 = call i64* @HeapAlloc(i32 %101, i32 0, i32 %105)
  store i64* %106, i64** %12, align 8
  %107 = load i64*, i64** %12, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %237

111:                                              ; preds = %100
  %112 = load i64*, i64** %12, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @GetPrivateProfileSectionNames(i64* %112, i32 %113, i64* %25)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %8, align 4
  %117 = sub nsw i32 %116, 2
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %128

120:                                              ; preds = %111
  %121 = call i32 (...) @GetProcessHeap()
  %122 = load i64*, i64** %12, align 8
  %123 = call i32 @HeapFree(i32 %121, i32 0, i64* %122)
  br label %124

124:                                              ; preds = %120
  %125 = load i32, i32* @BUFFER_SIZE, align 4
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %100

128:                                              ; preds = %119
  %129 = load i64*, i64** %12, align 8
  store i64* %129, i64** %13, align 8
  br label %130

130:                                              ; preds = %226, %128
  %131 = load i64*, i64** %13, align 8
  %132 = icmp ne i64* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i64*, i64** %13, align 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i1 [ false, %130 ], [ %136, %133 ]
  br i1 %138, label %139, label %232

139:                                              ; preds = %137
  %140 = load i64*, i64** %13, align 8
  %141 = call i64* @TEXT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %142 = call i64 @_tcsnicmp(i64* %140, i64* %141, i32 5)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %226

145:                                              ; preds = %139
  store i64* null, i64** %14, align 8
  store i64* null, i64** %15, align 8
  %146 = load i64*, i64** %13, align 8
  %147 = call i64* @TEXT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %148 = call i64* @TEXT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %152 = load i64*, i64** %151, align 8
  %153 = call i32 @ARRAYSIZE(i64* %152)
  %154 = call i32 @GetPrivateProfileString(i64* %146, i64* %147, i64* %148, i64* %150, i32 %153, i64* %25)
  %155 = load i64*, i64** %13, align 8
  %156 = call i64* @TEXT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %157 = call i64* @TEXT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %161 = load i64*, i64** %160, align 8
  %162 = call i32 @ARRAYSIZE(i64* %161)
  %163 = call i32 @GetPrivateProfileString(i64* %155, i64* %156, i64* %157, i64* %159, i32 %162, i64* %25)
  %164 = load i64*, i64** %13, align 8
  %165 = call i64* @TEXT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %166 = call i64* @TEXT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %170 = load i64*, i64** %169, align 8
  %171 = call i32 @ARRAYSIZE(i64* %170)
  %172 = call i32 @GetPrivateProfileString(i64* %164, i64* %165, i64* %166, i64* %168, i32 %171, i64* %25)
  %173 = load i64*, i64** %13, align 8
  %174 = call i64* @TEXT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %175 = call i64* @TEXT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %177 = load i64*, i64** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %179 = load i64*, i64** %178, align 8
  %180 = call i32 @ARRAYSIZE(i64* %179)
  %181 = call i32 @GetPrivateProfileString(i64* %173, i64* %174, i64* %175, i64* %177, i32 %180, i64* %25)
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %183 = load i64*, i64** %182, align 8
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %145
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %188 = load i64*, i64** %187, align 8
  store i64* %188, i64** %14, align 8
  %189 = load i64*, i64** %13, align 8
  %190 = call i64* @TEXT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %191 = call i64* @TEXT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %195 = load i64*, i64** %194, align 8
  %196 = call i32 @ARRAYSIZE(i64* %195)
  %197 = call i32 @GetPrivateProfileString(i64* %189, i64* %190, i64* %191, i64* %193, i32 %196, i64* %25)
  br label %210

198:                                              ; preds = %145
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %200 = load i64*, i64** %199, align 8
  store i64* %200, i64** %15, align 8
  %201 = load i64*, i64** %13, align 8
  %202 = call i64* @TEXT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %203 = call i64* @TEXT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %207 = load i64*, i64** %206, align 8
  %208 = call i32 @ARRAYSIZE(i64* %207)
  %209 = call i32 @GetPrivateProfileString(i64* %201, i64* %202, i64* %203, i64* %205, i32 %208, i64* %25)
  br label %210

210:                                              ; preds = %198, %186
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %216 = load i64*, i64** %215, align 8
  %217 = load i64*, i64** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = load i64*, i64** %15, align 8
  %221 = call %struct.TYPE_3__* @AddNewTopicEx(i64* %212, i64* %214, i64* %216, i64* %217, i64* %219, i64* %220)
  store %struct.TYPE_3__* %221, %struct.TYPE_3__** %17, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %223 = icmp ne %struct.TYPE_3__* %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %210
  br label %232

225:                                              ; preds = %210
  br label %226

226:                                              ; preds = %225, %144
  %227 = load i64*, i64** %13, align 8
  %228 = call i64 @_tcslen(i64* %227)
  %229 = add nsw i64 %228, 1
  %230 = load i64*, i64** %13, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 %229
  store i64* %231, i64** %13, align 8
  br label %130

232:                                              ; preds = %224, %137
  %233 = call i32 (...) @GetProcessHeap()
  %234 = load i64*, i64** %12, align 8
  %235 = call i32 @HeapFree(i32 %233, i32 0, i64* %234)
  %236 = load i32, i32* @TRUE, align 4
  store i32 %236, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %237

237:                                              ; preds = %232, %109, %68
  %238 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %238)
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetLocaleName(i32, i64*, i32) #2

declare dso_local i32 @ARRAYSIZE(i64*) #2

declare dso_local i32 @StringCchCopy(i64*, i32, i64*) #2

declare dso_local i64* @TEXT(i8*) #2

declare dso_local i32 @StringCchPrintf(i64*, i32, i64*, i64*, i64*) #2

declare dso_local i32 @GetFileAttributes(i64*) #2

declare dso_local i32 @GetPrivateProfileString(i64*, i64*, i64*, i64*, i32, i64*) #2

declare dso_local i32 @TranslateEscapes(i64*) #2

declare dso_local i64* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @GetPrivateProfileSectionNames(i64*, i32, i64*) #2

declare dso_local i32 @HeapFree(i32, i32, i64*) #2

declare dso_local i64 @_tcsnicmp(i64*, i64*, i32) #2

declare dso_local %struct.TYPE_3__* @AddNewTopicEx(i64*, i64*, i64*, i64*, i64*, i64*) #2

declare dso_local i64 @_tcslen(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
