; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_SpGistNewBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_SpGistNewBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidBlockNumber = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@P_NEW = common dso_local global i64 0, align 8
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SpGistNewBuffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %8

8:                                                ; preds = %49, %19, %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @GetFreeIndexPage(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @InvalidBlockNumber, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %52

15:                                               ; preds = %8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @SpGistBlockIsFixed(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %8

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @ReadBuffer(i32 %21, i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @ConditionalLockBuffer(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @BufferGetPage(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @PageIsNew(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %79

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @SpGistPageIsDeleted(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @PageIsEmpty(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %79

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %48 = call i32 @LockBuffer(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %20
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ReleaseBuffer(i32 %50)
  br label %8

52:                                               ; preds = %14
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @RELATION_IS_LOCAL(i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @ExclusiveLock, align 4
  %63 = call i32 @LockRelationForExtension(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %52
  %65 = load i32, i32* %3, align 4
  %66 = load i64, i64* @P_NEW, align 8
  %67 = call i32 @ReadBuffer(i32 %65, i64 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %70 = call i32 @LockBuffer(i32 %68, i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @ExclusiveLock, align 4
  %76 = call i32 @UnlockRelationForExtension(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %64
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %43, %33
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @GetFreeIndexPage(i32) #1

declare dso_local i64 @SpGistBlockIsFixed(i64) #1

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i64 @ConditionalLockBuffer(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i64 @SpGistPageIsDeleted(i32) #1

declare dso_local i64 @PageIsEmpty(i32) #1

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
