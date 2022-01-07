; ModuleID = '/home/carl/AnghaBench/openssl/crypto/sha/extr_keccak1600.c_KeccakF1600.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/sha/extr_keccak1600.c_KeccakF1600.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([5 x i32]*)* @KeccakF1600 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @KeccakF1600([5 x i32]* %0) #0 {
  %2 = alloca [5 x i32]*, align 8
  %3 = alloca [5 x [5 x i32]], align 16
  %4 = alloca i64, align 8
  store [5 x i32]* %0, [5 x i32]** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 24
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %3, i64 0, i64 0
  %10 = bitcast [5 x i32]* %9 to i32**
  %11 = load [5 x i32]*, [5 x i32]** %2, align 8
  %12 = bitcast [5 x i32]* %11 to i32**
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @Round(i32** %10, i32** %12, i64 %13)
  %15 = load [5 x i32]*, [5 x i32]** %2, align 8
  %16 = bitcast [5 x i32]* %15 to i32**
  %17 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %3, i64 0, i64 0
  %18 = bitcast [5 x i32]* %17 to i32**
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, 1
  %21 = call i32 @Round(i32** %16, i32** %18, i64 %20)
  br label %22

22:                                               ; preds = %8
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 2
  store i64 %24, i64* %4, align 8
  br label %5

25:                                               ; preds = %5
  ret void
}

declare dso_local i32 @Round(i32**, i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
