; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_discardbytes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_discardbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PqCommReadingMsg = common dso_local global i32 0, align 4
@PqRecvPointer = common dso_local global i64 0, align 8
@PqRecvLength = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @pq_discardbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pq_discardbytes(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @PqCommReadingMsg, align 4
  %6 = call i32 @Assert(i32 %5)
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %20, %10
  %12 = load i64, i64* @PqRecvPointer, align 8
  %13 = load i64, i64* @PqRecvLength, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = call i64 (...) @pq_recvbuf()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @EOF, align 4
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %15
  br label %11

21:                                               ; preds = %11
  %22 = load i64, i64* @PqRecvLength, align 8
  %23 = load i64, i64* @PqRecvPointer, align 8
  %24 = sub nsw i64 %22, %23
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* %3, align 8
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @PqRecvPointer, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* @PqRecvPointer, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %3, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %3, align 8
  br label %7

37:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %18
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @pq_recvbuf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
