; ModuleID = '/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_gist.c_hemdist.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_gist.c_hemdist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGLENBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @hemdist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hemdist(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i64 @ISALLTRUE(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @ISALLTRUE(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %37

14:                                               ; preds = %9
  %15 = load i32, i32* @SIGLENBIT, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @GETSIGN(i32* %16)
  %18 = call i32 @sizebitvec(i32 %17)
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @ISALLTRUE(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @SIGLENBIT, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @GETSIGN(i32* %26)
  %28 = call i32 @sizebitvec(i32 %27)
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @GETSIGN(i32* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @GETSIGN(i32* %34)
  %36 = call i32 @hemdistsign(i32 %33, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %24, %14, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @ISALLTRUE(i32*) #1

declare dso_local i32 @sizebitvec(i32) #1

declare dso_local i32 @GETSIGN(i32*) #1

declare dso_local i32 @hemdistsign(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
