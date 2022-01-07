; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs.c_fs_mode2flag.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs.c_fs_mode2flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@SPIFFS_WRONLY = common dso_local global i32 0, align 4
@SPIFFS_CREAT = common dso_local global i32 0, align 4
@SPIFFS_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SPIFFS_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@SPIFFS_APPEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@SPIFFS_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fs_mode2flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_mode2flag(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strlen(i8* %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* @SPIFFS_WRONLY, align 4
  %13 = load i32, i32* @SPIFFS_CREAT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SPIFFS_TRUNC, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %69

17:                                               ; preds = %7
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @SPIFFS_RDONLY, align 4
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @SPIFFS_WRONLY, align 4
  %29 = load i32, i32* @SPIFFS_CREAT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SPIFFS_APPEND, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %69

33:                                               ; preds = %23
  %34 = load i32, i32* @SPIFFS_RDONLY, align 4
  store i32 %34, i32* %2, align 4
  br label %69

35:                                               ; preds = %1
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @SPIFFS_RDWR, align 4
  store i32 %44, i32* %2, align 4
  br label %69

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* @SPIFFS_RDWR, align 4
  %51 = load i32, i32* @SPIFFS_CREAT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SPIFFS_TRUNC, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %2, align 4
  br label %69

55:                                               ; preds = %45
  %56 = load i8*, i8** %3, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* @SPIFFS_RDWR, align 4
  %61 = load i32, i32* @SPIFFS_CREAT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SPIFFS_APPEND, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %2, align 4
  br label %69

65:                                               ; preds = %55
  %66 = load i32, i32* @SPIFFS_RDONLY, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %35
  %68 = load i32, i32* @SPIFFS_RDONLY, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %65, %59, %49, %43, %33, %27, %21, %11
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
