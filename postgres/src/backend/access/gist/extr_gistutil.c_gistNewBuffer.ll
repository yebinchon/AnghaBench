; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistNewBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistNewBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidBlockNumber = common dso_local global i64 0, align 8
@GIST_UNLOCK = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@P_NEW = common dso_local global i64 0, align 8
@GIST_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gistNewBuffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %8

8:                                                ; preds = %56, %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @GetFreeIndexPage(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @InvalidBlockNumber, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %59

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @ReadBuffer(i32 %16, i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @ConditionalLockBuffer(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %56

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
  br label %86

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @gistcheckpage(i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @gistPageRecyclable(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = call i64 (...) @XLogStandbyInfoActive()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @RelationNeedsWAL(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @GistPageGetDeleteXid(i32 %47)
  %49 = call i32 @gistXLogPageReuse(i32 %45, i64 %46, i32 %48)
  br label %50

50:                                               ; preds = %44, %40, %37
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %86

52:                                               ; preds = %30
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @GIST_UNLOCK, align 4
  %55 = call i32 @LockBuffer(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %15
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @ReleaseBuffer(i32 %57)
  br label %8

59:                                               ; preds = %14
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @RELATION_IS_LOCAL(i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @ExclusiveLock, align 4
  %70 = call i32 @LockRelationForExtension(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %59
  %72 = load i32, i32* %3, align 4
  %73 = load i64, i64* @P_NEW, align 8
  %74 = call i32 @ReadBuffer(i32 %72, i64 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %77 = call i32 @LockBuffer(i32 %75, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @ExclusiveLock, align 4
  %83 = call i32 @UnlockRelationForExtension(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %71
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %50, %28
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @GetFreeIndexPage(i32) #1

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i64 @ConditionalLockBuffer(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i32 @gistcheckpage(i32, i32) #1

declare dso_local i64 @gistPageRecyclable(i32) #1

declare dso_local i64 @XLogStandbyInfoActive(...) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @gistXLogPageReuse(i32, i64, i32) #1

declare dso_local i32 @GistPageGetDeleteXid(i32) #1

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
