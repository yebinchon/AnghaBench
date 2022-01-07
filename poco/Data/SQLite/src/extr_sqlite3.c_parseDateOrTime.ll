; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_parseDateOrTime.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_parseDateOrTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"now\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @parseDateOrTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseDateOrTime(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i64 @parseYyyyMmDd(i8* %9, i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @parseHhMmSs(i8* %15, i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %47

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @sqlite3StrICmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @sqlite3NotPureFunc(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @setDateTimeToCurrent(i32* %29, i32* %30)
  store i32 %31, i32* %4, align 4
  br label %47

32:                                               ; preds = %24, %20
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @sqlite3Strlen30(i8* %34)
  %36 = load i32, i32* @SQLITE_UTF8, align 4
  %37 = call i64 @sqlite3AtoF(i8* %33, double* %8, i32 %35, i32 %36)
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32*, i32** %7, align 8
  %41 = load double, double* %8, align 8
  %42 = call i32 @setRawDateNumber(i32* %40, double %41)
  store i32 0, i32* %4, align 4
  br label %47

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %39, %28, %19, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @parseYyyyMmDd(i8*, i32*) #1

declare dso_local i64 @parseHhMmSs(i8*, i32*) #1

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

declare dso_local i64 @sqlite3NotPureFunc(i32*) #1

declare dso_local i32 @setDateTimeToCurrent(i32*, i32*) #1

declare dso_local i64 @sqlite3AtoF(i8*, double*, i32, i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @setRawDateNumber(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
