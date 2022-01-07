; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/attrib/extr_attrib.c_ChangeAttribute.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/attrib/extr_attrib.c_ChangeAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 42, i32 46, i32 42, i32 0], align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 46, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 46, i32 46, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32)* @ChangeAttribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ChangeAttribute(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @wcscpy(i8* %24, i8* %25)
  %27 = call i32 @wcslen(i8* %24)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8* %29, i8** %19, align 8
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %82

32:                                               ; preds = %6
  %33 = load i8*, i8** %19, align 8
  %34 = call i32 @wcscpy(i8* %33, i8* bitcast ([4 x i32]* @.str to i8*))
  %35 = call i64 @FindFirstFileW(i8* %24, %struct.TYPE_4__* %14)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = call i32 (...) @GetLastError()
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @ErrorMessage(i32 %40, i8* %41)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %127

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %75, %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @wcscmp(i8* %52, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @wcscmp(i8* %57, i8* bitcast ([3 x i32]* @.str.2 to i8*))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55, %50
  br label %75

61:                                               ; preds = %55
  %62 = load i8*, i8** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @wcscpy(i8* %62, i8* %64)
  %66 = load i8*, i8** %19, align 8
  %67 = call i32 @wcscat(i8* %66, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @ChangeAttribute(i8* %24, i8* %68, i32 %69, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %61, %44
  br label %75

75:                                               ; preds = %74, %60
  %76 = load i64, i64* %15, align 8
  %77 = call i64 @FindNextFileW(i64 %76, %struct.TYPE_4__* %14)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %44, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %15, align 8
  %81 = call i32 @FindClose(i64 %80)
  br label %82

82:                                               ; preds = %79, %6
  %83 = load i8*, i8** %19, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @wcscpy(i8* %83, i8* %84)
  %86 = call i64 @FindFirstFileW(i8* %24, %struct.TYPE_4__* %14)
  store i64 %86, i64* %15, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = call i32 (...) @GetLastError()
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @ErrorMessage(i32 %91, i8* %92)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %127

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %120, %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %120

102:                                              ; preds = %95
  %103 = load i8*, i8** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @wcscpy(i8* %103, i8* %105)
  %107 = call i32 @GetFileAttributes(i8* %24)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %119

110:                                              ; preds = %102
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %10, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %114, %115
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @SetFileAttributes(i8* %24, i32 %117)
  br label %119

119:                                              ; preds = %110, %102
  br label %120

120:                                              ; preds = %119, %101
  %121 = load i64, i64* %15, align 8
  %122 = call i64 @FindNextFileW(i64 %121, %struct.TYPE_4__* %14)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %95, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @FindClose(i64 %125)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %127

127:                                              ; preds = %124, %90, %39
  %128 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wcscpy(i8*, i8*) #2

declare dso_local i32 @wcslen(i8*) #2

declare dso_local i64 @FindFirstFileW(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @ErrorMessage(i32, i8*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @wcscmp(i8*, i8*) #2

declare dso_local i32 @wcscat(i8*, i8*) #2

declare dso_local i64 @FindNextFileW(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i32 @GetFileAttributes(i8*) #2

declare dso_local i32 @SetFileAttributes(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
