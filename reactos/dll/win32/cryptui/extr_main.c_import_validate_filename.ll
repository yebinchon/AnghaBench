; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_import_validate_filename.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_import_validate_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImportWizData = type { i32*, i32, i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i8* null, align 8
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@IDS_IMPORT_BAD_FORMAT = common dso_local global i32 0, align 4
@IDS_IMPORT_TYPE_MISMATCH = common dso_local global i32 0, align 4
@CRYPTUI_WIZ_IMPORT_SUBJECT_CERT_STORE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@MAX_STRING_LEN = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@IDS_IMPORT_WIZARD = common dso_local global i32 0, align 4
@IDS_IMPORT_OPEN_FAILED = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.ImportWizData*, i32*)* @import_validate_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @import_validate_filename(i32 %0, %struct.ImportWizData* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ImportWizData*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ImportWizData* %1, %struct.ImportWizData** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load i8*, i8** @FALSE, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @GENERIC_READ, align 4
  %21 = load i32, i32* @FILE_SHARE_READ, align 4
  %22 = load i32, i32* @OPEN_EXISTING, align 4
  %23 = call i64 @CreateFileW(i32* %19, i32 %20, i32 %21, i32* null, i32 %22, i32 0, i32* null)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %79

27:                                               ; preds = %3
  %28 = load %struct.ImportWizData*, %struct.ImportWizData** %5, align 8
  %29 = getelementptr inbounds %struct.ImportWizData, %struct.ImportWizData* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.ImportWizData*, %struct.ImportWizData** %5, align 8
  %33 = getelementptr inbounds %struct.ImportWizData, %struct.ImportWizData* %32, i32 0, i32 4
  %34 = call i64 @open_store_from_file(i32 %30, i32* %31, i32* %33)
  store i64 %34, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @IDS_IMPORT_BAD_FORMAT, align 4
  store i32 %38, i32* %10, align 4
  br label %63

39:                                               ; preds = %27
  %40 = load %struct.ImportWizData*, %struct.ImportWizData** %5, align 8
  %41 = getelementptr inbounds %struct.ImportWizData, %struct.ImportWizData* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @check_store_context_type(i32 %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @IDS_IMPORT_TYPE_MISMATCH, align 4
  store i32 %47, i32* %10, align 4
  br label %62

48:                                               ; preds = %39
  %49 = load i32, i32* @CRYPTUI_WIZ_IMPORT_SUBJECT_CERT_STORE, align 4
  %50 = load %struct.ImportWizData*, %struct.ImportWizData** %5, align 8
  %51 = getelementptr inbounds %struct.ImportWizData, %struct.ImportWizData* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.ImportWizData*, %struct.ImportWizData** %5, align 8
  %55 = getelementptr inbounds %struct.ImportWizData, %struct.ImportWizData* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i64 %53, i64* %57, align 8
  %58 = load i8*, i8** @TRUE, align 8
  %59 = load %struct.ImportWizData*, %struct.ImportWizData** %5, align 8
  %60 = getelementptr inbounds %struct.ImportWizData, %struct.ImportWizData* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @TRUE, align 8
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %48, %46
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load %struct.ImportWizData*, %struct.ImportWizData** %5, align 8
  %68 = getelementptr inbounds %struct.ImportWizData, %struct.ImportWizData* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.ImportWizData*, %struct.ImportWizData** %5, align 8
  %72 = getelementptr inbounds %struct.ImportWizData, %struct.ImportWizData* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @import_warning(i32 %69, i32 %70, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %66, %63
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @CloseHandle(i64 %77)
  br label %163

79:                                               ; preds = %3
  %80 = load i32, i32* @MAX_STRING_LEN, align 4
  %81 = zext i32 %80 to i64
  %82 = call i8* @llvm.stacksave()
  store i8* %82, i8** %11, align 8
  %83 = alloca i32, i64 %81, align 16
  store i64 %81, i64* %12, align 8
  %84 = load i32, i32* @MAX_STRING_LEN, align 4
  %85 = zext i32 %84 to i64
  %86 = alloca i32, i64 %85, align 16
  store i64 %85, i64* %13, align 8
  %87 = load %struct.ImportWizData*, %struct.ImportWizData** %5, align 8
  %88 = getelementptr inbounds %struct.ImportWizData, %struct.ImportWizData* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %79
  %92 = load %struct.ImportWizData*, %struct.ImportWizData** %5, align 8
  %93 = getelementptr inbounds %struct.ImportWizData, %struct.ImportWizData* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %14, align 8
  br label %100

95:                                               ; preds = %79
  %96 = load i32, i32* @hInstance, align 4
  %97 = load i32, i32* @IDS_IMPORT_WIZARD, align 4
  %98 = call i32 @ARRAY_SIZE(i32* %83)
  %99 = call i32 @LoadStringW(i32 %96, i32 %97, i32* %83, i32 %98)
  store i32* %83, i32** %14, align 8
  br label %100

100:                                              ; preds = %95, %91
  %101 = load i32, i32* @hInstance, align 4
  %102 = load i32, i32* @IDS_IMPORT_OPEN_FAILED, align 4
  %103 = call i32 @ARRAY_SIZE(i32* %86)
  %104 = call i32 @LoadStringW(i32 %101, i32 %102, i32* %86, i32 %103)
  %105 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %106 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %107 = or i32 %105, %106
  %108 = call i32 (...) @GetLastError()
  %109 = bitcast i32** %15 to i32*
  %110 = call i32 @FormatMessageW(i32 %107, i32* null, i32 %108, i32 0, i32* %109, i32 0, i32* null)
  %111 = call i32 (...) @GetProcessHeap()
  %112 = call i32 @lstrlenW(i32* %86)
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @lstrlenW(i32* %113)
  %115 = add nsw i32 %112, %114
  %116 = load i32*, i32** %15, align 8
  %117 = call i32 @lstrlenW(i32* %116)
  %118 = add nsw i32 %115, %117
  %119 = add nsw i32 %118, 3
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call i32* @HeapAlloc(i32 %111, i32 0, i32 %122)
  store i32* %123, i32** %16, align 8
  %124 = load i32*, i32** %16, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %159

126:                                              ; preds = %100
  %127 = load i32*, i32** %16, align 8
  store i32* %127, i32** %17, align 8
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @lstrcpyW(i32* %128, i32* %86)
  %130 = call i32 @lstrlenW(i32* %86)
  %131 = load i32*, i32** %17, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %17, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @lstrcpyW(i32* %134, i32* %135)
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @lstrlenW(i32* %137)
  %139 = load i32*, i32** %17, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %17, align 8
  %142 = load i32*, i32** %17, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %17, align 8
  store i32 58, i32* %142, align 4
  %144 = load i32*, i32** %17, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %17, align 8
  store i32 10, i32* %144, align 4
  %146 = load i32*, i32** %17, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = call i32 @lstrcpyW(i32* %146, i32* %147)
  %149 = load i32, i32* %4, align 4
  %150 = load i32*, i32** %16, align 8
  %151 = load i32*, i32** %14, align 8
  %152 = load i32, i32* @MB_ICONERROR, align 4
  %153 = load i32, i32* @MB_OK, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @MessageBoxW(i32 %149, i32* %150, i32* %151, i32 %154)
  %156 = call i32 (...) @GetProcessHeap()
  %157 = load i32*, i32** %16, align 8
  %158 = call i32 @HeapFree(i32 %156, i32 0, i32* %157)
  br label %159

159:                                              ; preds = %126, %100
  %160 = load i32*, i32** %15, align 8
  %161 = call i32 @LocalFree(i32* %160)
  %162 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %162)
  br label %163

163:                                              ; preds = %159, %76
  %164 = load i8*, i8** %8, align 8
  ret i8* %164
}

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @open_store_from_file(i32, i32*, i32*) #1

declare dso_local i32 @check_store_context_type(i32, i64) #1

declare dso_local i32 @import_warning(i32, i32, i32*, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @FormatMessageW(i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @lstrcpyW(i32*, i32*) #1

declare dso_local i32 @MessageBoxW(i32, i32*, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
