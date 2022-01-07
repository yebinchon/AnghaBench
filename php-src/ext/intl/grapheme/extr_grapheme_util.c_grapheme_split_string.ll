; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/grapheme/extr_grapheme_util.c_grapheme_split_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/grapheme/extr_grapheme_util.c_grapheme_split_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U_BRK_SAFECLONE_BUFFERSIZE = common dso_local global i32 0, align 4
@U_ZERO_ERROR = common dso_local global i32 0, align 4
@UBRK_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grapheme_split_string(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @U_BRK_SAFECLONE_BUFFERSIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %21, i32* %12, align 4
  %22 = call i32* @grapheme_get_break_iterator(i8* %20, i32* %12)
  store i32* %22, i32** %15, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i64 @U_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %63

27:                                               ; preds = %4
  %28 = load i32*, i32** %15, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ubrk_setText(i32* %28, i32* %29, i32 %30, i32* %12)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %58, %27
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @UBRK_DONE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load i32*, i32** %15, align 8
  %38 = call i32 @ubrk_next(i32* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @UBRK_DONE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* null, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %45, %42
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %55, %36
  br label %32

59:                                               ; preds = %32
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @ubrk_close(i32* %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %63

63:                                               ; preds = %59, %26
  %64 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @grapheme_get_break_iterator(i8*, i32*) #2

declare dso_local i64 @U_FAILURE(i32) #2

declare dso_local i32 @ubrk_setText(i32*, i32*, i32, i32*) #2

declare dso_local i32 @ubrk_next(i32*) #2

declare dso_local i32 @ubrk_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
