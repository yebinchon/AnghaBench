; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_looks_like_numeric_ipv6.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_looks_like_numeric_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @looks_like_numeric_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @looks_like_numeric_ipv6(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strchr(i8* %5, i8 signext 58)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %9, %19
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %18 [
    i32 0, label %16
    i32 58, label %17
    i32 46, label %17
    i32 48, label %17
    i32 49, label %17
    i32 50, label %17
    i32 51, label %17
    i32 52, label %17
    i32 53, label %17
    i32 54, label %17
    i32 55, label %17
    i32 56, label %17
    i32 57, label %17
    i32 65, label %17
    i32 66, label %17
    i32 67, label %17
    i32 68, label %17
    i32 69, label %17
    i32 70, label %17
    i32 97, label %17
    i32 98, label %17
    i32 99, label %17
    i32 100, label %17
    i32 101, label %17
    i32 102, label %17
  ]

16:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %20

17:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  br label %19

18:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %20

19:                                               ; preds = %17
  br label %11

20:                                               ; preds = %18, %16, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
