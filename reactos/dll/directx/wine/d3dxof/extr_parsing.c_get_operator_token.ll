; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_get_operator_token.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_get_operator_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_OBRACE = common dso_local global i32 0, align 4
@TOKEN_CBRACE = common dso_local global i32 0, align 4
@TOKEN_OBRACKET = common dso_local global i32 0, align 4
@TOKEN_CBRACKET = common dso_local global i32 0, align 4
@TOKEN_OPAREN = common dso_local global i32 0, align 4
@TOKEN_CPAREN = common dso_local global i32 0, align 4
@TOKEN_OANGLE = common dso_local global i32 0, align 4
@TOKEN_CANGLE = common dso_local global i32 0, align 4
@TOKEN_COMMA = common dso_local global i32 0, align 4
@TOKEN_SEMICOLON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @get_operator_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_operator_token(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %26 [
    i32 123, label %6
    i32 125, label %8
    i32 91, label %10
    i32 93, label %12
    i32 40, label %14
    i32 41, label %16
    i32 60, label %18
    i32 62, label %20
    i32 44, label %22
    i32 59, label %24
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @TOKEN_OBRACE, align 4
  store i32 %7, i32* %2, align 4
  br label %27

8:                                                ; preds = %1
  %9 = load i32, i32* @TOKEN_CBRACE, align 4
  store i32 %9, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @TOKEN_OBRACKET, align 4
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load i32, i32* @TOKEN_CBRACKET, align 4
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load i32, i32* @TOKEN_OPAREN, align 4
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @TOKEN_CPAREN, align 4
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %1
  %19 = load i32, i32* @TOKEN_OANGLE, align 4
  store i32 %19, i32* %2, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @TOKEN_CANGLE, align 4
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @TOKEN_COMMA, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @TOKEN_SEMICOLON, align 4
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
