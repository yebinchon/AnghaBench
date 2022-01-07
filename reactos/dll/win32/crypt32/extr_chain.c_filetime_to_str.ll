; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_filetime_to_str.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_filetime_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_SSHORTDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @filetime_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @filetime_to_str(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %12 = load i32, i32* @LOCALE_SSHORTDATE, align 4
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %14 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %15 = call i32 @ARRAY_SIZE(i8* %14)
  %16 = call i32 @GetLocaleInfoA(i32 %11, i32 %12, i8* %13, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @FileTimeToSystemTime(i32* %17, i32* %6)
  %19 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i8* %22)
  %24 = call i32 @GetDateFormatA(i32 %19, i32 0, i32* %6, i8* %20, i8* %21, i32 %23)
  %25 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %26 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %10, %9
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local i32 @GetLocaleInfoA(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @FileTimeToSystemTime(i32*, i32*) #1

declare dso_local i32 @GetDateFormatA(i32, i32, i32*, i8*, i8*, i32) #1

declare dso_local i8* @wine_dbg_sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
