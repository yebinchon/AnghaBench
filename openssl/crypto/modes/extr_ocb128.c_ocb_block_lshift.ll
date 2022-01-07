; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_ocb128.c_ocb_block_lshift.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_ocb128.c_ocb_block_lshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*)* @ocb_block_lshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocb_block_lshift(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i8 0, i8* %8, align 1
  store i32 15, i32* %7, align 4
  br label %10

10:                                               ; preds = %43, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = sub i64 8, %20
  %22 = trunc i64 %21 to i32
  %23 = ashr i32 %19, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %9, align 1
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i64, i64* %5, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %30, %32
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %33, %35
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 %37, i8* %41, align 1
  %42 = load i8, i8* %9, align 1
  store i8 %42, i8* %8, align 1
  br label %43

43:                                               ; preds = %13
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %7, align 4
  br label %10

46:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
