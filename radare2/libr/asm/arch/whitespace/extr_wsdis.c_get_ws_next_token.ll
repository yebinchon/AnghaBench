; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/whitespace/extr_wsdis.c_get_ws_next_token.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/whitespace/extr_wsdis.c_get_ws_next_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_ws_next_token(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  store i32* %7, i32** %6, align 8
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = ptrtoint i32* %11 to i64
  %14 = ptrtoint i32* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 4
  %17 = sub nsw i64 %10, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %24 [
    i32 32, label %22
    i32 9, label %22
    i32 10, label %22
  ]

22:                                               ; preds = %19, %19, %19
  %23 = load i32*, i32** %6, align 8
  store i32* %23, i32** %3, align 8
  br label %28

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  br label %8

27:                                               ; preds = %8
  store i32* null, i32** %3, align 8
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32*, i32** %3, align 8
  ret i32* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
