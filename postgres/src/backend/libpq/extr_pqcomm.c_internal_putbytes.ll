; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_internal_putbytes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_internal_putbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PqSendPointer = common dso_local global i64 0, align 8
@PqSendBufferSize = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@PqSendBuffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @internal_putbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_putbytes(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i64, i64* %5, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %7
  %11 = load i64, i64* @PqSendPointer, align 8
  %12 = load i64, i64* @PqSendBufferSize, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = call i32 @socket_set_nonblocking(i32 0)
  %16 = call i64 (...) @internal_flush()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @EOF, align 4
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i64, i64* @PqSendBufferSize, align 8
  %23 = load i64, i64* @PqSendPointer, align 8
  %24 = sub nsw i64 %22, %23
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i64, i64* @PqSendBuffer, align 8
  %32 = load i64, i64* @PqSendPointer, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @memcpy(i64 %33, i8* %34, i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @PqSendPointer, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* @PqSendPointer, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %42, i8** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %7

46:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @socket_set_nonblocking(i32) #1

declare dso_local i64 @internal_flush(...) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
