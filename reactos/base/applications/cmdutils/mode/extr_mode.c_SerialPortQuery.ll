; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/mode/extr_mode.c_SerialPortQuery.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/mode/extr_mode.c_SerialPortQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PORTNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i32] [i32 67, i32 79, i32 77, i32 37, i32 100, i32 0], align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@StdErr = common dso_local global i32 0, align 4
@IDS_ERROR_DEVICE_NOT_AVAILABLE = common dso_local global i32 0, align 4
@IDS_ERROR_ILLEGAL_DEVICE_NAME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@IDS_ERROR_STATUS_SET_DEVICE = common dso_local global i32 0, align 4
@IDS_ERROR_STATUS_GET_DEVICE = common dso_local global i32 0, align 4
@IDS_ERROR_TIMEOUT_SET_DEVICE = common dso_local global i32 0, align 4
@IDS_ERROR_TIMEOUT_GET_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32, i64)* @SerialPortQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SerialPortQuery(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @MAX_PORTNAME_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @swprintf(i32* %19, i8* bitcast ([6 x i32]* @.str to i8*), i8* %24)
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @GENERIC_WRITE, align 4
  br label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @GENERIC_READ, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i32, i32* @OPEN_EXISTING, align 4
  %35 = call i64 @CreateFileW(i32* %19, i32 %33, i32 0, i32* null, i32 %34, i32 0, i32* null)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %32
  %40 = call i64 (...) @GetLastError()
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @StdErr, align 4
  %46 = load i32, i32* @IDS_ERROR_DEVICE_NOT_AVAILABLE, align 4
  %47 = call i32 (i32, i32, i32*, ...) @ConResPrintf(i32 %45, i32 %46, i32* %19)
  br label %53

48:                                               ; preds = %39
  %49 = load i32, i32* @StdErr, align 4
  %50 = load i32, i32* @IDS_ERROR_ILLEGAL_DEVICE_NAME, align 4
  %51 = load i64, i64* %14, align 8
  %52 = call i32 (i32, i32, i32*, ...) @ConResPrintf(i32 %49, i32 %50, i32* %19, i64 %51)
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %112

55:                                               ; preds = %32
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @SetCommState(i64 %59, i32 %60)
  br label %66

62:                                               ; preds = %55
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @GetCommState(i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i64 [ %61, %58 ], [ %65, %62 ]
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @StdErr, align 4
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @IDS_ERROR_STATUS_SET_DEVICE, align 4
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @IDS_ERROR_STATUS_GET_DEVICE, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = call i32 (i32, i32, i32*, ...) @ConResPrintf(i32 %71, i32 %79, i32* %19)
  br label %108

81:                                               ; preds = %66
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i64, i64* %11, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @SetCommTimeouts(i64 %85, i32 %86)
  br label %92

88:                                               ; preds = %81
  %89 = load i64, i64* %11, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i64 @GetCommTimeouts(i64 %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i64 [ %87, %84 ], [ %91, %88 ]
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @StdErr, align 4
  %98 = load i64, i64* %9, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @IDS_ERROR_TIMEOUT_SET_DEVICE, align 4
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @IDS_ERROR_TIMEOUT_GET_DEVICE, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = call i32 (i32, i32, i32*, ...) @ConResPrintf(i32 %97, i32 %105, i32* %19)
  br label %108

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %104, %78
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @CloseHandle(i64 %109)
  %111 = load i64, i64* %10, align 8
  store i64 %111, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %112

112:                                              ; preds = %108, %53
  %113 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i64, i64* %5, align 8
  ret i64 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @swprintf(i32*, i8*, i8*) #2

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @ConResPrintf(i32, i32, i32*, ...) #2

declare dso_local i64 @SetCommState(i64, i32) #2

declare dso_local i64 @GetCommState(i64, i32) #2

declare dso_local i64 @SetCommTimeouts(i64, i32) #2

declare dso_local i64 @GetCommTimeouts(i64, i32) #2

declare dso_local i32 @CloseHandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
