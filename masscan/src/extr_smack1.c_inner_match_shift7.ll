; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_inner_match_shift7.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_inner_match_shift7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i32*, i32*, i32)* @inner_match_shift7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @inner_match_shift7(i8* %0, i64 %1, i8* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %14, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %15, align 4
  br label %23

23:                                               ; preds = %49, %6
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %16, align 1
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %15, align 4
  %36 = shl i32 %35, 7
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i8, i8* %16, align 1
  %40 = zext i8 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  br label %52

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  br label %23

52:                                               ; preds = %47, %23
  %53 = load i32, i32* %15, align 4
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  ret i64 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
