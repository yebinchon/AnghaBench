; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_regex_selectivity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_regex_selectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FULL_WILDCARD_SEL = common dso_local global i32 0, align 4
@FIXED_CHAR_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @regex_selectivity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regex_selectivity(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 36
  br i1 %20, label %21, label %39

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 92
  br i1 %32, label %33, label %39

33:                                               ; preds = %24, %21
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @regex_selectivity_sub(i8* %34, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %47

39:                                               ; preds = %24, %12, %4
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @regex_selectivity_sub(i8* %40, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @FULL_WILDCARD_SEL, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %39, %33
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* @FIXED_CHAR_SEL, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @pow(i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = sdiv i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @CLAMP_PROBABILITY(i32 %57)
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @regex_selectivity_sub(i8*, i32, i32) #1

declare dso_local i32 @pow(i32, i32) #1

declare dso_local i32 @CLAMP_PROBABILITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
