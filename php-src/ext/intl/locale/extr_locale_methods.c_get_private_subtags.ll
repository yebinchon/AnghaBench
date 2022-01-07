; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/locale/extr_locale_methods.c_get_private_subtags.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/locale/extr_locale_methods.c_get_private_subtags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @get_private_subtags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_private_subtags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i64 0, i64* %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %73

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %4, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %73

13:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  %14 = load i8*, i8** %2, align 8
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %71, %13
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @getSingletonPos(i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %72

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 120
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 88
  br i1 %34, label %35, label %55

35:                                               ; preds = %27, %19
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %54

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i64, i64* %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = sub i64 %48, %51
  %53 = call i32* @zend_string_init(i8* %47, i64 %52, i32 0)
  store i32* %53, i32** %3, align 8
  br label %54

54:                                               ; preds = %42, %41
  br label %72

55:                                               ; preds = %27
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %4, align 8
  %60 = icmp uge i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %72

62:                                               ; preds = %55
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %5, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i64 @strlen(i8* %68)
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70
  br label %15

72:                                               ; preds = %61, %54, %15
  br label %73

73:                                               ; preds = %72, %9, %1
  %74 = load i32*, i32** %3, align 8
  ret i32* %74
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @getSingletonPos(i8*) #1

declare dso_local i32* @zend_string_init(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
