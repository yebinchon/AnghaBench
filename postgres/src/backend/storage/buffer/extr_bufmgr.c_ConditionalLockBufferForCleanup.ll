; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ConditionalLockBufferForCleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ConditionalLockBufferForCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LocalRefCount = common dso_local global i32* null, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConditionalLockBufferForCleanup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @BufferIsValid(i32 %7)
  %9 = call i32 @Assert(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @BufferIsLocal(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i32*, i32** @LocalRefCount, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 0, %15
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %67

28:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %67

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @GetPrivateRefCount(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @Assert(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %67

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @ConditionalLockBuffer(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %67

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32* @GetBufferDescriptor(i32 %44)
  store i32* %45, i32** %4, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @LockBufHdr(i32* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @BUF_STATE_GET_REFCOUNT(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @UnlockBufHdr(i32* %57, i32 %58)
  store i32 1, i32* %2, align 4
  br label %67

60:                                               ; preds = %42
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @UnlockBufHdr(i32* %61, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %66 = call i32 @LockBuffer(i32 %64, i32 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %60, %56, %41, %36, %28, %27
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i64 @BufferIsLocal(i32) #1

declare dso_local i32 @GetPrivateRefCount(i32) #1

declare dso_local i32 @ConditionalLockBuffer(i32) #1

declare dso_local i32* @GetBufferDescriptor(i32) #1

declare dso_local i32 @LockBufHdr(i32*) #1

declare dso_local i32 @BUF_STATE_GET_REFCOUNT(i32) #1

declare dso_local i32 @UnlockBufHdr(i32*, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
