; ModuleID = '/home/carl/AnghaBench/netdata/backends/extr_backends.h_strip_quotes.c'
source_filename = "/home/carl/AnghaBench/netdata/backends/extr_backends.h_strip_quotes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @strip_quotes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strip_quotes(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 34
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 39
  br i1 %12, label %13, label %44

13:                                               ; preds = %8, %1
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %21, %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 8
  br label %17

24:                                               ; preds = %17
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %31
  %42 = load i8*, i8** %3, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %36
  br label %44

44:                                               ; preds = %43, %8
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
