; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_sjis_emoji_docomo2unicode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_sjis_emoji_docomo2unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mb_tbl_code2uni_docomo1_min = common dso_local global i32 0, align 4
@mb_tbl_code2uni_docomo1_max = common dso_local global i32 0, align 4
@mb_tbl_code2uni_docomo1 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfilter_sjis_emoji_docomo2unicode(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @mb_tbl_code2uni_docomo1_min, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %74

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @mb_tbl_code2uni_docomo1_max, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %74

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @mb_tbl_code2uni_docomo1_min, align 4
  %17 = add nsw i32 %16, 162
  %18 = icmp sge i32 %15, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @mb_tbl_code2uni_docomo1_min, align 4
  %22 = add nsw i32 %21, 173
  %23 = icmp sle i32 %20, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @mb_tbl_code2uni_docomo1_min, align 4
  %27 = add nsw i32 %26, 163
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  store i32 8419, i32* %5, align 4
  %30 = load i32*, i32** @mb_tbl_code2uni_docomo1, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @mb_tbl_code2uni_docomo1_min, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 61440
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 65536
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %41, %29
  br label %73

46:                                               ; preds = %24, %19, %14
  %47 = load i32*, i32** @mb_tbl_code2uni_docomo1, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @mb_tbl_code2uni_docomo1_min, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp sgt i32 %54, 61440
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 65536
  store i32 %58, i32* %5, align 4
  br label %66

59:                                               ; preds = %46
  %60 = load i32, i32* %5, align 4
  %61 = icmp sgt i32 %60, 57344
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 983040
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i32*, i32** %4, align 8
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %3, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %45
  br label %74

74:                                               ; preds = %73, %10, %2
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
