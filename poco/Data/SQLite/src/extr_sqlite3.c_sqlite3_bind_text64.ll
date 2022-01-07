; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3_bind_text64.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3_bind_text64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_UTF16 = common dso_local global i8 0, align 1
@SQLITE_UTF16NATIVE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_bind_text64(i32* %0, i32 %1, i8* %2, i32 %3, void (i8*)* %4, i8 zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (i8*)*, align 8
  %13 = alloca i8, align 1
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store void (i8*)* %4, void (i8*)** %12, align 8
  store i8 %5, i8* %13, align 1
  %14 = load void (i8*)*, void (i8*)** %12, align 8
  %15 = icmp ne void (i8*)* %14, @SQLITE_DYNAMIC
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %11, align 4
  %19 = icmp sgt i32 %18, 2147483647
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i8*, i8** %10, align 8
  %22 = load void (i8*)*, void (i8*)** %12, align 8
  %23 = call i32 @invokeValueDestructor(i8* %21, void (i8*)* %22, i32 0)
  store i32 %23, i32* %7, align 4
  br label %40

24:                                               ; preds = %6
  %25 = load i8, i8* %13, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @SQLITE_UTF16, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i8, i8* @SQLITE_UTF16NATIVE, align 1
  store i8 %31, i8* %13, align 1
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load void (i8*)*, void (i8*)** %12, align 8
  %38 = load i8, i8* %13, align 1
  %39 = call i32 @bindText(i32* %33, i32 %34, i8* %35, i32 %36, void (i8*)* %37, i8 zeroext %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %32, %20
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @assert(i32) #1

declare dso_local void @SQLITE_DYNAMIC(i8*) #1

declare dso_local i32 @invokeValueDestructor(i8*, void (i8*)*, i32) #1

declare dso_local i32 @bindText(i32*, i32, i8*, i32, void (i8*)*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
