; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c__getbase.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c__getbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @_getbase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_getbase(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 48
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %22 [
    i32 120, label %16
    i32 116, label %18
    i32 110, label %18
    i32 111, label %20
  ]

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  store i32 16, i32* %17, align 4
  br label %25

18:                                               ; preds = %11, %11
  %19 = load i32*, i32** %5, align 8
  store i32 10, i32* %19, align 4
  br label %25

20:                                               ; preds = %11
  %21 = load i32*, i32** %5, align 8
  store i32 8, i32* %21, align 4
  br label %25

22:                                               ; preds = %11
  %23 = load i32*, i32** %5, align 8
  store i32 10, i32* %23, align 4
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %3, align 8
  br label %31

25:                                               ; preds = %20, %18, %16
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %27, i8** %3, align 8
  br label %31

28:                                               ; preds = %2
  %29 = load i32*, i32** %5, align 8
  store i32 10, i32* %29, align 4
  %30 = load i8*, i8** %4, align 8
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %28, %25, %22
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
