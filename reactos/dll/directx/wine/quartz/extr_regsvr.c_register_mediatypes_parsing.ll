; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_register_mediatypes_parsing.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_register_mediatypes_parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_mediatype_parsing = type { i64*, i32*, i32* }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32* null, align 8
@mediatype_name = common dso_local global i32* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@CLSID_AsyncReader = common dso_local global i32 0, align 4
@sourcefilter_valuename = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_mediatype_parsing*)* @register_mediatypes_parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_mediatypes_parsing(%struct.regsvr_mediatype_parsing* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regsvr_mediatype_parsing*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [39 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i8], align 1
  store %struct.regsvr_mediatype_parsing* %0, %struct.regsvr_mediatype_parsing** %3, align 8
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i32*, i32** @HKEY_CLASSES_ROOT, align 8
  %13 = load i32*, i32** @mediatype_name, align 8
  %14 = load i32, i32* @KEY_READ, align 4
  %15 = load i32, i32* @KEY_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @RegCreateKeyExW(i32* %12, i32* %13, i32 0, i32* null, i32 0, i32 %16, i32* null, i32** %5, i32* null)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @HRESULT_FROM_WIN32(i64 %22)
  store i32 %23, i32* %2, align 4
  br label %158

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %142, %24
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.regsvr_mediatype_parsing*, %struct.regsvr_mediatype_parsing** %3, align 8
  %31 = getelementptr inbounds %struct.regsvr_mediatype_parsing, %struct.regsvr_mediatype_parsing* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %145

36:                                               ; preds = %34
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %37 = load %struct.regsvr_mediatype_parsing*, %struct.regsvr_mediatype_parsing** %3, align 8
  %38 = getelementptr inbounds %struct.regsvr_mediatype_parsing, %struct.regsvr_mediatype_parsing* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %41 = call i32 @StringFromGUID2(i32* %39, i32* %40, i32 39)
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %44 = load i32, i32* @KEY_READ, align 4
  %45 = load i32, i32* @KEY_WRITE, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @RegCreateKeyExW(i32* %42, i32* %43, i32 0, i32* null, i32 0, i32 %46, i32* null, i32** %8, i32* null)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %129

52:                                               ; preds = %36
  %53 = load %struct.regsvr_mediatype_parsing*, %struct.regsvr_mediatype_parsing** %3, align 8
  %54 = getelementptr inbounds %struct.regsvr_mediatype_parsing, %struct.regsvr_mediatype_parsing* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %57 = call i32 @StringFromGUID2(i32* %55, i32* %56, i32 39)
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %60 = load i32, i32* @KEY_READ, align 4
  %61 = load i32, i32* @KEY_WRITE, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @RegCreateKeyExW(i32* %58, i32* %59, i32 0, i32* null, i32 0, i32 %62, i32* null, i32** %9, i32* null)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @ERROR_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %129

68:                                               ; preds = %52
  %69 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %70 = call i32 @StringFromGUID2(i32* @CLSID_AsyncReader, i32* %69, i32 39)
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* @sourcefilter_valuename, align 4
  %73 = load i32, i32* @REG_SZ, align 4
  %74 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %75 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %76 = call i32 @lstrlenW(i32* %75)
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i64 @RegSetValueExW(i32* %71, i32 %72, i32 0, i32 %73, i32* %74, i32 %80)
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @ERROR_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  br label %129

86:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %125, %86
  %88 = load %struct.regsvr_mediatype_parsing*, %struct.regsvr_mediatype_parsing** %3, align 8
  %89 = getelementptr inbounds %struct.regsvr_mediatype_parsing, %struct.regsvr_mediatype_parsing* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %87
  %97 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @wsprintfA(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %102 = load i32, i32* @REG_SZ, align 4
  %103 = load %struct.regsvr_mediatype_parsing*, %struct.regsvr_mediatype_parsing** %3, align 8
  %104 = getelementptr inbounds %struct.regsvr_mediatype_parsing, %struct.regsvr_mediatype_parsing* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i32*
  %111 = load %struct.regsvr_mediatype_parsing*, %struct.regsvr_mediatype_parsing** %3, align 8
  %112 = getelementptr inbounds %struct.regsvr_mediatype_parsing, %struct.regsvr_mediatype_parsing* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @lstrlenA(i64 %117)
  %119 = call i64 @RegSetValueExA(i32* %100, i8* %101, i32 0, i32 %102, i32* %110, i32 %118)
  store i64 %119, i64* %4, align 8
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* @ERROR_SUCCESS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %96
  br label %129

124:                                              ; preds = %96
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %87

128:                                              ; preds = %87
  br label %129

129:                                              ; preds = %128, %123, %85, %67, %51
  %130 = load i32*, i32** %8, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @RegCloseKey(i32* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32*, i32** %9, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @RegCloseKey(i32* %139)
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.regsvr_mediatype_parsing*, %struct.regsvr_mediatype_parsing** %3, align 8
  %144 = getelementptr inbounds %struct.regsvr_mediatype_parsing, %struct.regsvr_mediatype_parsing* %143, i32 1
  store %struct.regsvr_mediatype_parsing* %144, %struct.regsvr_mediatype_parsing** %3, align 8
  br label %25

145:                                              ; preds = %34
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @RegCloseKey(i32* %146)
  %148 = load i64, i64* %4, align 8
  %149 = load i64, i64* @ERROR_SUCCESS, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i64, i64* %4, align 8
  %153 = call i32 @HRESULT_FROM_WIN32(i64 %152)
  br label %156

154:                                              ; preds = %145
  %155 = load i32, i32* @S_OK, align 4
  br label %156

156:                                              ; preds = %154, %151
  %157 = phi i32 [ %153, %151 ], [ %155, %154 ]
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %156, %21
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i64 @RegCreateKeyExW(i32*, i32*, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

declare dso_local i32 @StringFromGUID2(i32*, i32*, i32) #1

declare dso_local i64 @RegSetValueExW(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @wsprintfA(i8*, i8*, i32) #1

declare dso_local i64 @RegSetValueExA(i32*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @lstrlenA(i64) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
