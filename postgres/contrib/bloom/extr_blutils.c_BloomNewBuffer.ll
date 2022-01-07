; ModuleID = '/home/carl/AnghaBench/postgres/contrib/bloom/extr_blutils.c_BloomNewBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/bloom/extr_blutils.c_BloomNewBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidBlockNumber = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@P_NEW = common dso_local global i64 0, align 8
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BloomNewBuffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %8

8:                                                ; preds = %40, %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @GetFreeIndexPage(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @InvalidBlockNumber, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %43

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @ReadBuffer(i32 %16, i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @ConditionalLockBuffer(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @BufferGetPage(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @PageIsNew(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %70

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @BloomPageIsDeleted(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %70

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %39 = call i32 @LockBuffer(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %15
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ReleaseBuffer(i32 %41)
  br label %8

43:                                               ; preds = %14
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @RELATION_IS_LOCAL(i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @ExclusiveLock, align 4
  %54 = call i32 @LockRelationForExtension(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %43
  %56 = load i32, i32* %3, align 4
  %57 = load i64, i64* @P_NEW, align 8
  %58 = call i32 @ReadBuffer(i32 %56, i64 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %61 = call i32 @LockBuffer(i32 %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @ExclusiveLock, align 4
  %67 = call i32 @UnlockRelationForExtension(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %55
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %34, %28
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @GetFreeIndexPage(i32) #1

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i64 @ConditionalLockBuffer(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i64 @BloomPageIsDeleted(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @RELATION_IS_LOCAL(i32) #1

declare dso_local i32 @LockRelationForExtension(i32, i32) #1

declare dso_local i32 @UnlockRelationForExtension(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
