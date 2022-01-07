; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_erand48.c__dorand48.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_erand48.c__dorand48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RAND48_MULT = common dso_local global i32 0, align 4
@RAND48_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16*)* @_dorand48 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dorand48(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  %5 = load i16*, i16** %2, align 8
  %6 = getelementptr inbounds i16, i16* %5, i64 2
  %7 = load i16, i16* %6, align 2
  %8 = zext i16 %7 to i32
  %9 = shl i32 %8, 32
  %10 = load i16*, i16** %2, align 8
  %11 = getelementptr inbounds i16, i16* %10, i64 1
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = shl i32 %13, 16
  %15 = or i32 %9, %14
  %16 = load i16*, i16** %2, align 8
  %17 = getelementptr inbounds i16, i16* %16, i64 0
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = or i32 %15, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @RAND48_MULT, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* @RAND48_ADD, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 65535
  %28 = trunc i32 %27 to i16
  %29 = load i16*, i16** %2, align 8
  %30 = getelementptr inbounds i16, i16* %29, i64 0
  store i16 %28, i16* %30, align 2
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 65535
  %34 = trunc i32 %33 to i16
  %35 = load i16*, i16** %2, align 8
  %36 = getelementptr inbounds i16, i16* %35, i64 1
  store i16 %34, i16* %36, align 2
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 32
  %39 = and i32 %38, 65535
  %40 = trunc i32 %39 to i16
  %41 = load i16*, i16** %2, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 2
  store i16 %40, i16* %42, align 2
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
