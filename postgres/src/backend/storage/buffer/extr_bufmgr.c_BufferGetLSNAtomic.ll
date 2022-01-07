; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_BufferGetLSNAtomic.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_BufferGetLSNAtomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BufferGetLSNAtomic(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = sub nsw i64 %8, 1
  %10 = call i32* @GetBufferDescriptor(i64 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i8* @BufferGetPage(i64 %11)
  store i8* %12, i8** %5, align 8
  %13 = call i32 (...) @XLogHintBitIsNeeded()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @BufferIsLocal(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %1
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @PageGetLSN(i8* %20)
  store i32 %21, i32* %2, align 4
  br label %37

22:                                               ; preds = %15
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @BufferIsValid(i64 %23)
  %25 = call i32 @Assert(i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @BufferIsPinned(i64 %26)
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @LockBufHdr(i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @PageGetLSN(i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @UnlockBufHdr(i32* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %22, %19
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32* @GetBufferDescriptor(i64) #1

declare dso_local i8* @BufferGetPage(i64) #1

declare dso_local i32 @XLogHintBitIsNeeded(...) #1

declare dso_local i64 @BufferIsLocal(i64) #1

declare dso_local i32 @PageGetLSN(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i64) #1

declare dso_local i32 @BufferIsPinned(i64) #1

declare dso_local i32 @LockBufHdr(i32*) #1

declare dso_local i32 @UnlockBufHdr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
