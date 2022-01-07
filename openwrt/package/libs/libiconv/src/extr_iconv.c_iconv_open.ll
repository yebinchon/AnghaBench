; ModuleID = '/home/carl/AnghaBench/openwrt/package/libs/libiconv/src/extr_iconv.c_iconv_open.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/libs/libiconv/src/extr_iconv.c_iconv_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iconv_open(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @find_charset(i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp ugt i32 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @find_charset(i8* %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp ult i32 %15, 255
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 1
  %20 = or i32 0, %19
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 %21, 8
  %23 = or i32 %20, %22
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %13
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @find_charmap(i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 1
  %31 = or i32 1, %30
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %31, %33
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %28, %17, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @find_charset(i8*) #1

declare dso_local i32 @find_charmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
