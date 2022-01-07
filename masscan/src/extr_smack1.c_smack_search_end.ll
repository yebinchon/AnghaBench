; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_search_end.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_search_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { i32*, i32, i32*, %struct.SmackMatches* }
%struct.SmackMatches = type { i64 }

@CHAR_ANCHOR_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smack_search_end(%struct.SMACK* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.SMACK*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.SmackMatches*, align 8
  %14 = alloca i32, align 4
  store %struct.SMACK* %0, %struct.SMACK** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.SMACK*, %struct.SMACK** %5, align 8
  %16 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.SMACK*, %struct.SMACK** %5, align 8
  %19 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.SMACK*, %struct.SMACK** %5, align 8
  %24 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %23, i32 0, i32 3
  %25 = load %struct.SmackMatches*, %struct.SmackMatches** %24, align 8
  store %struct.SmackMatches* %25, %struct.SmackMatches** %13, align 8
  %26 = load %struct.SMACK*, %struct.SMACK** %5, align 8
  %27 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @CHAR_ANCHOR_END, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %14, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load %struct.SmackMatches*, %struct.SmackMatches** %13, align 8
  %43 = load i32, i32* %12, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %42, i64 %44
  %46 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %4
  %50 = load %struct.SMACK*, %struct.SMACK** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @handle_match(%struct.SMACK* %50, i32 0, i32 %51, i8* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %49, %4
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @handle_match(%struct.SMACK*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
