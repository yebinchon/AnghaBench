; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_register_mediatypes_extension.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_register_mediatypes_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_mediatype_extension = type { i32*, i32*, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32* null, align 8
@mediatype_name = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@extensions_keyname = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@subtype_valuename = common dso_local global i32 0, align 4
@CLSID_AsyncReader = common dso_local global i32 0, align 4
@sourcefilter_valuename = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_mediatype_extension*)* @register_mediatypes_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_mediatypes_extension(%struct.regsvr_mediatype_extension* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regsvr_mediatype_extension*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [39 x i32], align 16
  %8 = alloca i32*, align 8
  store %struct.regsvr_mediatype_extension* %0, %struct.regsvr_mediatype_extension** %3, align 8
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %9, i64* %4, align 8
  store i32* null, i32** %6, align 8
  %10 = load i32*, i32** @HKEY_CLASSES_ROOT, align 8
  %11 = load i32, i32* @mediatype_name, align 4
  %12 = load i32, i32* @KEY_READ, align 4
  %13 = load i32, i32* @KEY_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @RegCreateKeyExW(i32* %10, i32 %11, i32 0, i32* null, i32 0, i32 %14, i32* null, i32** %5, i32* null)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @HRESULT_FROM_WIN32(i64 %20)
  store i32 %21, i32* %2, align 4
  br label %145

22:                                               ; preds = %1
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @extensions_keyname, align 4
  %25 = load i32, i32* @KEY_READ, align 4
  %26 = load i32, i32* @KEY_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @RegCreateKeyExW(i32* %23, i32 %24, i32 0, i32* null, i32 0, i32 %27, i32* null, i32** %6, i32* null)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %126

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %122, %33
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.regsvr_mediatype_extension*, %struct.regsvr_mediatype_extension** %3, align 8
  %40 = getelementptr inbounds %struct.regsvr_mediatype_extension, %struct.regsvr_mediatype_extension* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i1 [ false, %34 ], [ %42, %38 ]
  br i1 %44, label %45, label %125

45:                                               ; preds = %43
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.regsvr_mediatype_extension*, %struct.regsvr_mediatype_extension** %3, align 8
  %48 = getelementptr inbounds %struct.regsvr_mediatype_extension, %struct.regsvr_mediatype_extension* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @KEY_READ, align 4
  %51 = load i32, i32* @KEY_WRITE, align 4
  %52 = or i32 %50, %51
  %53 = call i64 @RegCreateKeyExA(i32* %46, i32 %49, i32 0, i32* null, i32 0, i32 %52, i32* null, i32** %8, i32* null)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %125

58:                                               ; preds = %45
  %59 = load %struct.regsvr_mediatype_extension*, %struct.regsvr_mediatype_extension** %3, align 8
  %60 = getelementptr inbounds %struct.regsvr_mediatype_extension, %struct.regsvr_mediatype_extension* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %63 = call i32 @StringFromGUID2(i32* %61, i32* %62, i32 39)
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @mediatype_name, align 4
  %66 = load i32, i32* @REG_SZ, align 4
  %67 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %68 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %69 = call i32 @lstrlenW(i32* %68)
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i64 @RegSetValueExW(i32* %64, i32 %65, i32 0, i32 %66, i32* %67, i32 %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @ERROR_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %58
  br label %119

79:                                               ; preds = %58
  %80 = load %struct.regsvr_mediatype_extension*, %struct.regsvr_mediatype_extension** %3, align 8
  %81 = getelementptr inbounds %struct.regsvr_mediatype_extension, %struct.regsvr_mediatype_extension* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %84 = call i32 @StringFromGUID2(i32* %82, i32* %83, i32 39)
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @subtype_valuename, align 4
  %87 = load i32, i32* @REG_SZ, align 4
  %88 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %89 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %90 = call i32 @lstrlenW(i32* %89)
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i64 @RegSetValueExW(i32* %85, i32 %86, i32 0, i32 %87, i32* %88, i32 %94)
  store i64 %95, i64* %4, align 8
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* @ERROR_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %79
  br label %119

100:                                              ; preds = %79
  %101 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %102 = call i32 @StringFromGUID2(i32* @CLSID_AsyncReader, i32* %101, i32 39)
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* @sourcefilter_valuename, align 4
  %105 = load i32, i32* @REG_SZ, align 4
  %106 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %107 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %108 = call i32 @lstrlenW(i32* %107)
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i64 @RegSetValueExW(i32* %103, i32 %104, i32 0, i32 %105, i32* %106, i32 %112)
  store i64 %113, i64* %4, align 8
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* @ERROR_SUCCESS, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %100
  br label %119

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118, %117, %99, %78
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @RegCloseKey(i32* %120)
  br label %122

122:                                              ; preds = %119
  %123 = load %struct.regsvr_mediatype_extension*, %struct.regsvr_mediatype_extension** %3, align 8
  %124 = getelementptr inbounds %struct.regsvr_mediatype_extension, %struct.regsvr_mediatype_extension* %123, i32 1
  store %struct.regsvr_mediatype_extension* %124, %struct.regsvr_mediatype_extension** %3, align 8
  br label %34

125:                                              ; preds = %57, %43
  br label %126

126:                                              ; preds = %125, %32
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @RegCloseKey(i32* %127)
  %129 = load i32*, i32** %6, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @RegCloseKey(i32* %132)
  br label %134

134:                                              ; preds = %131, %126
  %135 = load i64, i64* %4, align 8
  %136 = load i64, i64* @ERROR_SUCCESS, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i64, i64* %4, align 8
  %140 = call i32 @HRESULT_FROM_WIN32(i64 %139)
  br label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @S_OK, align 4
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi i32 [ %140, %138 ], [ %142, %141 ]
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %143, %19
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i64 @RegCreateKeyExW(i32*, i32, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

declare dso_local i64 @RegCreateKeyExA(i32*, i32, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @StringFromGUID2(i32*, i32*, i32) #1

declare dso_local i64 @RegSetValueExW(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
