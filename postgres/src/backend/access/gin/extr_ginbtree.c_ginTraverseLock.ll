; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginbtree.c_ginTraverseLock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginbtree.c_ginTraverseLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIN_SHARE = common dso_local global i32 0, align 4
@GIN_UNLOCK = common dso_local global i32 0, align 4
@GIN_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ginTraverseLock(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @GIN_SHARE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @GIN_SHARE, align 4
  %10 = call i32 @LockBuffer(i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @BufferGetPage(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @GinPageIsLeaf(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @GIN_UNLOCK, align 4
  %22 = call i32 @LockBuffer(i32 %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %25 = call i32 @LockBuffer(i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @GinPageIsLeaf(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @GIN_UNLOCK, align 4
  %32 = call i32 @LockBuffer(i32 %30, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @GIN_SHARE, align 4
  %35 = call i32 @LockBuffer(i32 %33, i32 %34)
  br label %38

36:                                               ; preds = %19
  %37 = load i32, i32* @GIN_EXCLUSIVE, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %29
  br label %39

39:                                               ; preds = %38, %16
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @GinPageIsLeaf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
