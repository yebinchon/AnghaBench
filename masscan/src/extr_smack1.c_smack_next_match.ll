; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_next_match.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_next_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { %struct.SmackMatches* }
%struct.SmackMatches = type { i64* }

@SMACK_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @smack_next_match(%struct.SMACK* %0, i32* %1) #0 {
  %3 = alloca %struct.SMACK*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.SmackMatches*, align 8
  store %struct.SMACK* %0, %struct.SMACK** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i64, i64* @SMACK_NOT_FOUND, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 16777215
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = lshr i32 %14, 24
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.SMACK*, %struct.SMACK** %3, align 8
  %20 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %19, i32 0, i32 0
  %21 = load %struct.SmackMatches*, %struct.SmackMatches** %20, align 8
  store %struct.SmackMatches* %21, %struct.SmackMatches** %8, align 8
  %22 = load %struct.SmackMatches*, %struct.SmackMatches** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %22, i64 %24
  %26 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sub i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %18, %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 24
  %39 = or i32 %36, %38
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i64, i64* %7, align 8
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
