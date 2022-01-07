; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_IsBufferCleanupOK.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_IsBufferCleanupOK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LocalRefCount = common dso_local global i32* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsBufferCleanupOK(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @BufferIsValid(i32 %6)
  %8 = call i32 @Assert(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @BufferIsLocal(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32*, i32** @LocalRefCount, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 0, %14
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %55

22:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %55

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @GetPrivateRefCount(i32 %24)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %55

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i32* @GetBufferDescriptor(i32 %30)
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @BufferDescriptorGetContentLock(i32* %32)
  %34 = load i32, i32* @LW_EXCLUSIVE, align 4
  %35 = call i32 @LWLockHeldByMeInMode(i32 %33, i32 %34)
  %36 = call i32 @Assert(i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @LockBufHdr(i32* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @BUF_STATE_GET_REFCOUNT(i32 %39)
  %41 = icmp sgt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @BUF_STATE_GET_REFCOUNT(i32 %44)
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @UnlockBufHdr(i32* %48, i32 %49)
  store i32 1, i32* %2, align 4
  br label %55

51:                                               ; preds = %28
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @UnlockBufHdr(i32* %52, i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %47, %27, %22, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i64 @BufferIsLocal(i32) #1

declare dso_local i32 @GetPrivateRefCount(i32) #1

declare dso_local i32* @GetBufferDescriptor(i32) #1

declare dso_local i32 @LWLockHeldByMeInMode(i32, i32) #1

declare dso_local i32 @BufferDescriptorGetContentLock(i32*) #1

declare dso_local i32 @LockBufHdr(i32*) #1

declare dso_local i32 @BUF_STATE_GET_REFCOUNT(i32) #1

declare dso_local i32 @UnlockBufHdr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
