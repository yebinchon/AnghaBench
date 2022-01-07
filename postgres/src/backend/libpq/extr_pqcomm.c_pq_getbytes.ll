; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_getbytes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_getbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PqCommReadingMsg = common dso_local global i32 0, align 4
@PqRecvPointer = common dso_local global i64 0, align 8
@PqRecvLength = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@PqRecvBuffer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pq_getbytes(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @PqCommReadingMsg, align 4
  %8 = call i32 @Assert(i32 %7)
  br label %9

9:                                                ; preds = %32, %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %22, %12
  %14 = load i64, i64* @PqRecvPointer, align 8
  %15 = load i64, i64* @PqRecvLength, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = call i64 (...) @pq_recvbuf()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @EOF, align 4
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %17
  br label %13

23:                                               ; preds = %13
  %24 = load i64, i64* @PqRecvLength, align 8
  %25 = load i64, i64* @PqRecvPointer, align 8
  %26 = sub nsw i64 %24, %25
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* @PqRecvBuffer, align 8
  %35 = load i64, i64* @PqRecvPointer, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @memcpy(i8* %33, i64 %36, i64 %37)
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @PqRecvPointer, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* @PqRecvPointer, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %44, i8** %4, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %5, align 8
  br label %9

48:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @pq_recvbuf(...) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
