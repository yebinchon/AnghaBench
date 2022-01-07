; ModuleID = '/home/carl/AnghaBench/openssl/crypto/whrlpool/extr_wp_dgst.c_WHIRLPOOL_Update.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/whrlpool/extr_wp_dgst.c_WHIRLPOOL_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WHIRLPOOL_Update(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 1152921504606846976, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  br label %10

10:                                               ; preds = %14, %3
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = mul i64 %17, 8
  %19 = call i32 @WHIRLPOOL_BitUpdate(i32* %15, i8* %16, i64 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = sub i64 %21, %20
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %23
  store i8* %25, i8** %8, align 8
  br label %10

26:                                               ; preds = %10
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = mul i64 %32, 8
  %34 = call i32 @WHIRLPOOL_BitUpdate(i32* %30, i8* %31, i64 %33)
  br label %35

35:                                               ; preds = %29, %26
  ret i32 1
}

declare dso_local i32 @WHIRLPOOL_BitUpdate(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
