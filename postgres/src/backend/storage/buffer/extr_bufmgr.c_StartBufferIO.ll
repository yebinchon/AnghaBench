; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_StartBufferIO.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_StartBufferIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InProgressBuf = common dso_local global i32* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@BM_IO_IN_PROGRESS = common dso_local global i32 0, align 4
@BM_VALID = common dso_local global i32 0, align 4
@BM_DIRTY = common dso_local global i32 0, align 4
@IsForInput = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @StartBufferIO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StartBufferIO(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** @InProgressBuf, align 8
  %8 = icmp ne i32* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @BufferDescriptorGetIOLock(i32* %13)
  %15 = load i32, i32* @LW_EXCLUSIVE, align 4
  %16 = call i32 @LWLockAcquire(i32 %14, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @LockBufHdr(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BM_IO_IN_PROGRESS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %33

24:                                               ; preds = %12
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @UnlockBufHdr(i32* %25, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @BufferDescriptorGetIOLock(i32* %28)
  %30 = call i32 @LWLockRelease(i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @WaitIO(i32* %31)
  br label %12

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @BM_VALID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %53

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @BM_DIRTY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41, %36
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @UnlockBufHdr(i32* %47, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @BufferDescriptorGetIOLock(i32* %50)
  %52 = call i32 @LWLockRelease(i32 %51)
  store i32 0, i32* %3, align 4
  br label %62

53:                                               ; preds = %41, %36
  %54 = load i32, i32* @BM_IO_IN_PROGRESS, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @UnlockBufHdr(i32* %57, i32 %58)
  %60 = load i32*, i32** %4, align 8
  store i32* %60, i32** @InProgressBuf, align 8
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* @IsForInput, align 4
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %46
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @BufferDescriptorGetIOLock(i32*) #1

declare dso_local i32 @LockBufHdr(i32*) #1

declare dso_local i32 @UnlockBufHdr(i32*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @WaitIO(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
