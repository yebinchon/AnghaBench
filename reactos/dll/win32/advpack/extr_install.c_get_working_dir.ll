; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_get_working_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_get_working_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@get_working_dir.backslash = internal constant [2 x i8] c"\\\00", align 1
@get_working_dir.inf_dir = internal constant [5 x i8] c"\\INF\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*)* @get_working_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_working_dir(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @wcsrchr(i8* %17, i8 signext 92)
  store i8* %18, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = add nsw i64 %25, 1
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %10, align 8
  br label %62

29:                                               ; preds = %3
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @lstrlenW(i8* %38)
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %10, align 8
  br label %61

42:                                               ; preds = %32, %29
  %43 = load i32, i32* @MAX_PATH, align 4
  %44 = call i32 @GetCurrentDirectoryW(i32 %43, i8* %16)
  %45 = call i32 @lstrcatW(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @get_working_dir.backslash, i64 0, i64 0))
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @lstrcatW(i8* %16, i8* %46)
  %48 = call i64 @GetFileAttributesW(i8* %16)
  %49 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @MAX_PATH, align 4
  %53 = call i32 @GetCurrentDirectoryW(i32 %52, i8* %16)
  br label %58

54:                                               ; preds = %42
  %55 = load i32, i32* @MAX_PATH, align 4
  %56 = call i32 @GetWindowsDirectoryW(i8* %16, i32 %55)
  %57 = call i32 @lstrcatW(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_working_dir.inf_dir, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %51
  %59 = call i32 @lstrlenW(i8* %16)
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  store i8* %16, i8** %10, align 8
  br label %61

61:                                               ; preds = %58, %37
  br label %62

62:                                               ; preds = %61, %20
  %63 = call i32 (...) @GetProcessHeap()
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = call i32 @HeapAlloc(i32 %63, i32 0, i32 %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %76, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %85

77:                                               ; preds = %62
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @lstrcpynW(i32 %80, i8* %81, i32 %82)
  %84 = load i32, i32* @S_OK, align 4
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %85

85:                                               ; preds = %77, %75
  %86 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @wcsrchr(i8*, i8 signext) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @GetCurrentDirectoryW(i32, i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i64 @GetFileAttributesW(i8*) #2

declare dso_local i32 @GetWindowsDirectoryW(i8*, i32) #2

declare dso_local i32 @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @lstrcpynW(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
