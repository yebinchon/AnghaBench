; ModuleID = '/home/carl/AnghaBench/php-src/win32/extr_wsyslog.c_vsyslog.c'
source_filename = "/home/carl/AnghaBench/php-src/win32/extr_wsyslog.c_vsyslog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@log_source = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"php\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_SYSLOG = common dso_local global i32 0, align 4
@EVENTLOG_ERROR_TYPE = common dso_local global i16 0, align 2
@PHP_SYSLOG_ERROR_TYPE = common dso_local global i32 0, align 4
@EVENTLOG_INFORMATION_TYPE = common dso_local global i16 0, align 2
@PHP_SYSLOG_INFO_TYPE = common dso_local global i32 0, align 4
@EVENTLOG_WARNING_TYPE = common dso_local global i16 0, align 2
@PHP_SYSLOG_WARNING_TYPE = common dso_local global i32 0, align 4
@log_header = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsyslog(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32*], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %9, align 8
  %12 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load i32, i32* @log_source, align 4
  %15 = call i8* @PW32G(i32 %14)
  %16 = icmp eq i8* %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @LOG_PID, align 4
  %19 = load i32, i32* @LOG_SYSLOG, align 4
  %20 = call i32 @openlog(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %29 [
    i32 129, label %23
    i32 128, label %26
  ]

23:                                               ; preds = %21
  %24 = load i16, i16* @EVENTLOG_ERROR_TYPE, align 2
  store i16 %24, i16* %8, align 2
  %25 = load i32, i32* @PHP_SYSLOG_ERROR_TYPE, align 4
  store i32 %25, i32* %10, align 4
  br label %32

26:                                               ; preds = %21
  %27 = load i16, i16* @EVENTLOG_INFORMATION_TYPE, align 2
  store i16 %27, i16* %8, align 2
  %28 = load i32, i32* @PHP_SYSLOG_INFO_TYPE, align 4
  store i32 %28, i32* %10, align 4
  br label %32

29:                                               ; preds = %21
  %30 = load i16, i16* @EVENTLOG_WARNING_TYPE, align 2
  store i16 %30, i16* %8, align 2
  %31 = load i32, i32* @PHP_SYSLOG_WARNING_TYPE, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %26, %23
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @vspprintf(i8** %9, i32 0, i8* %33, i32 %34)
  %36 = load i32, i32* @log_header, align 4
  %37 = call i8* @PW32G(i32 %36)
  %38 = call i32* @php_win32_cp_any_to_w(i8* %37)
  %39 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  store i32* %38, i32** %39, align 16
  %40 = load i8*, i8** %9, align 8
  %41 = call i32* @php_win32_cp_any_to_w(i8* %40)
  %42 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  store i32* %41, i32** %42, align 8
  %43 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %44 = load i32*, i32** %43, align 16
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %32
  %47 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i32, i32* @log_source, align 4
  %52 = call i8* @PW32G(i32 %51)
  %53 = load i16, i16* %8, align 2
  %54 = load i32, i32* %4, align 4
  %55 = trunc i32 %54 to i16
  %56 = load i32, i32* %10, align 4
  %57 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %58 = call i32 @ReportEventW(i8* %52, i16 zeroext %53, i16 zeroext %55, i32 %56, i32* null, i32 2, i32 0, i32** %57, i32* null)
  %59 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %60 = load i32*, i32** %59, align 16
  %61 = call i32 @free(i32* %60)
  %62 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @free(i32* %63)
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @efree(i8* %65)
  br label %89

67:                                               ; preds = %46, %32
  %68 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %69 = load i32*, i32** %68, align 16
  %70 = call i32 @free(i32* %69)
  %71 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @free(i32* %72)
  %74 = load i32, i32* @log_header, align 4
  %75 = call i8* @PW32G(i32 %74)
  %76 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %75, i8** %76, align 16
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* @log_source, align 4
  %80 = call i8* @PW32G(i32 %79)
  %81 = load i16, i16* %8, align 2
  %82 = load i32, i32* %4, align 4
  %83 = trunc i32 %82 to i16
  %84 = load i32, i32* %10, align 4
  %85 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %86 = call i32 @ReportEventA(i8* %80, i16 zeroext %81, i16 zeroext %83, i32 %84, i32* null, i32 2, i32 0, i8** %85, i32* null)
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @efree(i8* %87)
  br label %89

89:                                               ; preds = %67, %50
  ret void
}

declare dso_local i8* @PW32G(i32) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @vspprintf(i8**, i32, i8*, i32) #1

declare dso_local i32* @php_win32_cp_any_to_w(i8*) #1

declare dso_local i32 @ReportEventW(i8*, i16 zeroext, i16 zeroext, i32, i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @ReportEventA(i8*, i16 zeroext, i16 zeroext, i32, i32*, i32, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
