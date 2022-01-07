; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_misc.c_FileGetString.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_misc.c_FileGetString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_CURRENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OutputCodePage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FileGetString(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = sub nsw i64 %15, 1
  %17 = call i64 @ReadFile(i32 %13, i8* %14, i64 %16, i64* %9, i32* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i8* @memchr(i8* %20, i8 signext 10, i64 %21)
  store i8* %22, i8** %11, align 8
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %10, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i32, i32* @FILE_CURRENT, align 4
  %38 = call i32 @SetFilePointer(i32 %33, i64 %36, i32* null, i32 %37)
  br label %39

39:                                               ; preds = %26, %19
  br label %40

40:                                               ; preds = %39, %3
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %4, align 4
  br label %51

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %10, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %49, align 1
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %43
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @ReadFile(i32, i8*, i64, i64*, i32*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @SetFilePointer(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
