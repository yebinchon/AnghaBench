; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varbit.c_bit_cmp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varbit.c_bit_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @bit_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bit_cmp(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @VARBITBYTES(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @VARBITBYTES(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @VARBITS(i32* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @VARBITS(i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @Min(i32 %18, i32 %19)
  %21 = call i32 @memcmp(i32 %15, i32 %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @VARBITLEN(i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @VARBITLEN(i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 -1, i32 1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %32, %24
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @VARBITBYTES(i32*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @VARBITS(i32*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @VARBITLEN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
