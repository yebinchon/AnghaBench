; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_help.c_AppendFullPathURL.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_help.c_AppendFullPathURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AppendFullPathURL.url_format = internal constant [23 x i8] c"mk:@MSITStore:%s::%s%s\00", align 16
@AppendFullPathURL.slash = internal constant [2 x i8] c"/\00", align 1
@AppendFullPathURL.empty = internal constant [1 x i8] zeroinitializer, align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s %p %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GetFullPathName failed: %u\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @AppendFullPathURL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AppendFullPathURL(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @debugstr_w(i8* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @debugstr_w(i8* %18)
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @ARRAY_SIZE(i8* %14)
  %23 = call i32 @GetFullPathNameW(i8* %21, i32 %22, i8* %14, i32* null)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = call i32 (...) @GetLastError()
  %27 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %46

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 47
  br label %39

39:                                               ; preds = %33, %29
  %40 = phi i1 [ true, %29 ], [ %38, %33 ]
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @AppendFullPathURL.empty, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @AppendFullPathURL.slash, i64 0, i64 0)
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @wsprintfW(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @AppendFullPathURL.url_format, i64 0, i64 0), i8* %14, i8* %42, i8* %43)
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %39, %25
  %47 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i32 @GetFullPathNameW(i8*, i32, i8*, i32*) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @WARN(i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @wsprintfW(i32, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
