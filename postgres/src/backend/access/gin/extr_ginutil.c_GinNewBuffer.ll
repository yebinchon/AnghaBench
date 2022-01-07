; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginutil.c_GinNewBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginutil.c_GinNewBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidBlockNumber = common dso_local global i64 0, align 8
@GIN_UNLOCK = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@P_NEW = common dso_local global i64 0, align 8
@GIN_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GinNewBuffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @GetFreeIndexPage(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @InvalidBlockNumber, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %35

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @ReadBuffer(i32 %15, i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @ConditionalLockBuffer(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @BufferGetPage(i32 %22)
  %24 = call i64 @GinPageIsRecyclable(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %62

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @GIN_UNLOCK, align 4
  %31 = call i32 @LockBuffer(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %14
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ReleaseBuffer(i32 %33)
  br label %7

35:                                               ; preds = %13
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @RELATION_IS_LOCAL(i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @ExclusiveLock, align 4
  %46 = call i32 @LockRelationForExtension(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %35
  %48 = load i32, i32* %3, align 4
  %49 = load i64, i64* @P_NEW, align 8
  %50 = call i32 @ReadBuffer(i32 %48, i64 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %53 = call i32 @LockBuffer(i32 %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @ExclusiveLock, align 4
  %59 = call i32 @UnlockRelationForExtension(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %47
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %26
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @GetFreeIndexPage(i32) #1

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i64 @ConditionalLockBuffer(i32) #1

declare dso_local i64 @GinPageIsRecyclable(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

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
