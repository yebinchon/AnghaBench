; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_php_utf32_utf8.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_php_utf32_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32)* @php_utf32_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @php_utf32_utf8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp ult i32 %6, 128
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %10, i8* %12, align 1
  store i64 1, i64* %5, align 8
  br label %81

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ult i32 %14, 2048
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = lshr i32 %17, 6
  %19 = or i32 192, %18
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %20, i8* %22, align 1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 63
  %25 = or i32 128, %24
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 %26, i8* %28, align 1
  store i64 2, i64* %5, align 8
  br label %80

29:                                               ; preds = %13
  %30 = load i32, i32* %4, align 4
  %31 = icmp ult i32 %30, 65536
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = lshr i32 %33, 12
  %35 = or i32 224, %34
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* %4, align 4
  %40 = lshr i32 %39, 6
  %41 = and i32 %40, 63
  %42 = or i32 128, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 %43, i8* %45, align 1
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 63
  %48 = or i32 128, %47
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  store i8 %49, i8* %51, align 1
  store i64 3, i64* %5, align 8
  br label %79

52:                                               ; preds = %29
  %53 = load i32, i32* %4, align 4
  %54 = lshr i32 %53, 18
  %55 = or i32 240, %54
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 %56, i8* %58, align 1
  %59 = load i32, i32* %4, align 4
  %60 = lshr i32 %59, 12
  %61 = and i32 %60, 63
  %62 = or i32 128, %61
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 %63, i8* %65, align 1
  %66 = load i32, i32* %4, align 4
  %67 = lshr i32 %66, 6
  %68 = and i32 %67, 63
  %69 = or i32 128, %68
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  store i8 %70, i8* %72, align 1
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, 63
  %75 = or i32 128, %74
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 3
  store i8 %76, i8* %78, align 1
  store i64 4, i64* %5, align 8
  br label %79

79:                                               ; preds = %52, %32
  br label %80

80:                                               ; preds = %79, %16
  br label %81

81:                                               ; preds = %80, %8
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
