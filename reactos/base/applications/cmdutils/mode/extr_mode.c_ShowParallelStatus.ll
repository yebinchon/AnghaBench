; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/mode/extr_mode.c_ShowParallelStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/mode/extr_mode.c_ShowParallelStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PORTNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i32] [i32 76, i32 80, i32 84, i32 37, i32 100, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@IDS_DEVICE_STATUS_HEADER = common dso_local global i32 0, align 4
@IDS_PRINTER_OUTPUT_NOT_REROUTED = common dso_local global i32 0, align 4
@IDS_PRINTER_OUTPUT_REROUTED_SERIAL = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@IDS_ERROR_QUERY_DEVICES_FORM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i32] [i32 69, i32 82, i32 82, i32 79, i32 82, i32 58, i32 32, i32 81, i32 117, i32 101, i32 114, i32 121, i32 68, i32 111, i32 115, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 87, i32 40, i32 37, i32 115, i32 41, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 58, i32 32, i32 48, i32 120, i32 37, i32 108, i32 120, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ShowParallelStatus(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [250 x i32], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAX_PORTNAME_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @swprintf(i32* %12, i8* bitcast ([6 x i32]* @.str to i8*), i8* %13)
  %15 = load i32, i32* @StdOut, align 4
  %16 = call i32 @ConPuts(i32 %15, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %17 = load i32, i32* @StdOut, align 4
  %18 = load i32, i32* @IDS_DEVICE_STATUS_HEADER, align 4
  %19 = call i32 @UnderlinedResPrintf(i32 %17, i32 %18, i32* %12)
  %20 = load i32, i32* @StdOut, align 4
  %21 = call i32 @ConPuts(i32 %20, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %22 = getelementptr inbounds [250 x i32], [250 x i32]* %4, i64 0, i64 0
  %23 = getelementptr inbounds [250 x i32], [250 x i32]* %4, i64 0, i64 0
  %24 = call i32 @ARRAYSIZE(i32* %23)
  %25 = call i64 @QueryDosDeviceW(i32* %12, i32* %22, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %1
  %28 = getelementptr inbounds [250 x i32], [250 x i32]* %4, i64 0, i64 0
  %29 = call i32* @wcsrchr(i32* %28, i32 92)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  %35 = call i64 @_wcsicmp(i32* %12, i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @StdOut, align 4
  %39 = load i32, i32* @IDS_PRINTER_OUTPUT_NOT_REROUTED, align 4
  %40 = call i32 @ConResPuts(i32 %38, i32 %39)
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* @StdOut, align 4
  %43 = load i32, i32* @IDS_PRINTER_OUTPUT_REROUTED_SERIAL, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 (i32, i32, i32*, ...) @ConResPrintf(i32 %42, i32 %43, i32* %44)
  br label %46

46:                                               ; preds = %41, %37
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %60

47:                                               ; preds = %27
  %48 = load i32, i32* @StdErr, align 4
  %49 = load i32, i32* @IDS_ERROR_QUERY_DEVICES_FORM, align 4
  %50 = getelementptr inbounds [250 x i32], [250 x i32]* %4, i64 0, i64 0
  %51 = call i32 (i32, i32, i32*, ...) @ConResPrintf(i32 %48, i32 %49, i32* %12, i32* %50)
  br label %52

52:                                               ; preds = %47
  br label %57

53:                                               ; preds = %1
  %54 = load i32, i32* @StdErr, align 4
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 @ConPrintf(i32 %54, i8* bitcast ([42 x i32]* @.str.2 to i8*), i32* %12, i32 %55)
  br label %57

57:                                               ; preds = %53, %52
  %58 = load i32, i32* @StdOut, align 4
  %59 = call i32 @ConPuts(i32 %58, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %46
  %61 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @swprintf(i32*, i8*, i8*) #2

declare dso_local i32 @ConPuts(i32, i8*) #2

declare dso_local i32 @UnderlinedResPrintf(i32, i32, i32*) #2

declare dso_local i64 @QueryDosDeviceW(i32*, i32*, i32) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32* @wcsrchr(i32*, i32) #2

declare dso_local i64 @_wcsicmp(i32*, i32*) #2

declare dso_local i32 @ConResPuts(i32, i32) #2

declare dso_local i32 @ConResPrintf(i32, i32, i32*, ...) #2

declare dso_local i32 @ConPrintf(i32, i8*, i32*, i32) #2

declare dso_local i32 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
