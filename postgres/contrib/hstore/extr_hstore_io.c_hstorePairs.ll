; ModuleID = '/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_io.c_hstorePairs.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_io.c_hstorePairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hstorePairs(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @CALCDATASIZE(i64 %14, i64 %15)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = call i32* @palloc(i64 %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @SET_VARSIZE(i32* %19, i64 %20)
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @HS_SETCOUNT(i32* %22, i64 %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32*, i32** %8, align 8
  store i32* %28, i32** %4, align 8
  br label %57

29:                                               ; preds = %3
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @ARRPTR(i32* %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i8* @STRPTR(i32* %32)
  store i8* %33, i8** %10, align 8
  store i8* %33, i8** %11, align 8
  store i64 0, i64* %13, align 8
  br label %34

34:                                               ; preds = %47, %29
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @HS_ADDITEM(i32* %39, i8* %40, i8* %41, i32 %45)
  br label %47

47:                                               ; preds = %38
  %48 = load i64, i64* %13, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %13, align 8
  br label %34

50:                                               ; preds = %34
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @HS_FINALIZE(i32* %51, i64 %52, i8* %53, i8* %54)
  %56 = load i32*, i32** %8, align 8
  store i32* %56, i32** %4, align 8
  br label %57

57:                                               ; preds = %50, %27
  %58 = load i32*, i32** %4, align 8
  ret i32* %58
}

declare dso_local i64 @CALCDATASIZE(i64, i64) #1

declare dso_local i32* @palloc(i64) #1

declare dso_local i32 @SET_VARSIZE(i32*, i64) #1

declare dso_local i32 @HS_SETCOUNT(i32*, i64) #1

declare dso_local i32* @ARRPTR(i32*) #1

declare dso_local i8* @STRPTR(i32*) #1

declare dso_local i32 @HS_ADDITEM(i32*, i8*, i8*, i32) #1

declare dso_local i32 @HS_FINALIZE(i32*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
