; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_fake.c_getpass.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_fake.c_getpass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getpass.input = internal global [256 x i8] zeroinitializer, align 16
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_TYPE_CHAR = common dso_local global i64 0, align 8
@ENABLE_LINE_INPUT = common dso_local global i32 0, align 4
@ENABLE_PROCESSED_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getpass(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %13 = call i64 @GetStdHandle(i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %15 = call i64 @GetStdHandle(i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %1
  store i8* null, i8** %2, align 8
  br label %101

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i64 @WriteFile(i64 %25, i8* %26, i32 %28, i32* %6, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %100

31:                                               ; preds = %24
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @GetFileType(i64 %32)
  %34 = load i64, i64* @FILE_TYPE_CHAR, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @GetConsoleMode(i64 %40, i32* %8)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* @ENABLE_LINE_INPUT, align 4
  %46 = load i32, i32* @ENABLE_PROCESSED_INPUT, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @SetConsoleMode(i64 %44, i32 %47)
  br label %50

49:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %43
  br label %51

51:                                               ; preds = %50, %31
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %65, %82
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @ReadFile(i64 %53, i8* %11, i32 1, i32* %10, i32* null)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %83

58:                                               ; preds = %52
  %59 = load i8, i8* %11, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 13
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %52

66:                                               ; preds = %62
  br label %83

67:                                               ; preds = %58
  %68 = load i8, i8* %11, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %83

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %74, 255
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i8, i8* %11, align 1
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* @getpass.input, i64 0, i64 %80
  store i8 %77, i8* %81, align 1
  br label %82

82:                                               ; preds = %76, %72
  br label %52

83:                                               ; preds = %71, %66, %57
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* @getpass.input, i64 0, i64 %85
  store i8 0, i8* %86, align 1
  %87 = load i64, i64* %5, align 8
  %88 = call i64 @WriteFile(i64 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32* %6, i32* null)
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i64, i64* %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @SetConsoleMode(i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %83
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @getpass.input, i64 0, i64 0), i8** %2, align 8
  br label %101

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99, %24
  store i8* null, i8** %2, align 8
  br label %101

101:                                              ; preds = %100, %98, %23
  %102 = load i8*, i8** %2, align 8
  ret i8* %102
}

declare dso_local i64 @GetStdHandle(i32) #1

declare dso_local i64 @WriteFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @GetFileType(i64) #1

declare dso_local i64 @GetConsoleMode(i64, i32*) #1

declare dso_local i32 @SetConsoleMode(i64, i32) #1

declare dso_local i32 @ReadFile(i64, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
