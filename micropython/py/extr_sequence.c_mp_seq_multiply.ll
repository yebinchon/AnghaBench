; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_sequence.c_mp_seq_multiply.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_sequence.c_mp_seq_multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_seq_multiply(i8* %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %28, %5
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = mul i64 %18, %19
  store i64 %20, i64* %12, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @memcpy(i8* %21, i8* %22, i64 %23)
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %10, align 8
  br label %28

28:                                               ; preds = %17
  %29 = load i64, i64* %11, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %11, align 8
  br label %13

31:                                               ; preds = %13
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
