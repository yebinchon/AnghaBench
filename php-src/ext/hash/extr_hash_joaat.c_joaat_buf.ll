; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/extr_hash_joaat.c_joaat_buf.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/extr_hash_joaat.c_joaat_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i64, i8)* @joaat_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @joaat_buf(i8* %0, i64 %1, i8 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %8, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %38, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %6, align 1
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 10
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %6, align 1
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = ashr i32 %32, 6
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = xor i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %6, align 1
  br label %38

38:                                               ; preds = %14
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %10

41:                                               ; preds = %10
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 3
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %46, %44
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %6, align 1
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = ashr i32 %50, 11
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, %51
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %6, align 1
  %56 = load i8, i8* %6, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 15
  %59 = load i8, i8* %6, align 1
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %60, %58
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %6, align 1
  %63 = load i8, i8* %6, align 1
  ret i8 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
