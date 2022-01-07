; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_TerminateBufferIO.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_TerminateBufferIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InProgressBuf = common dso_local global i32* null, align 8
@BM_IO_IN_PROGRESS = common dso_local global i32 0, align 4
@BM_IO_ERROR = common dso_local global i32 0, align 4
@BM_JUST_DIRTIED = common dso_local global i32 0, align 4
@BM_DIRTY = common dso_local global i32 0, align 4
@BM_CHECKPOINT_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @TerminateBufferIO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TerminateBufferIO(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** @InProgressBuf, align 8
  %10 = icmp eq i32* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @LockBufHdr(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @BM_IO_IN_PROGRESS, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32, i32* @BM_IO_IN_PROGRESS, align 4
  %20 = load i32, i32* @BM_IO_ERROR, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @BM_JUST_DIRTIED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @BM_DIRTY, align 4
  %34 = load i32, i32* @BM_CHECKPOINT_NEEDED, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %32, %27, %3
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @UnlockBufHdr(i32* %43, i32 %44)
  store i32* null, i32** @InProgressBuf, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @BufferDescriptorGetIOLock(i32* %46)
  %48 = call i32 @LWLockRelease(i32 %47)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LockBufHdr(i32*) #1

declare dso_local i32 @UnlockBufHdr(i32*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @BufferDescriptorGetIOLock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
