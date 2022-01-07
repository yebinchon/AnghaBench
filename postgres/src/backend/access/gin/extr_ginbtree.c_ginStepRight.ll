; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginbtree.c_ginStepRight.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginbtree.c_ginStepRight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"right sibling of GIN page is of different type\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"right sibling of GIN page was deleted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ginStepRight(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @BufferGetPage(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @GinPageIsLeaf(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @GinPageIsData(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.TYPE_2__* @GinPageGetOpaque(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @ReadBuffer(i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @LockBuffer(i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @UnlockReleaseBuffer(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @BufferGetPage(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @GinPageIsLeaf(i32 %33)
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @GinPageIsData(i32 %38)
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %3
  %42 = load i32, i32* @ERROR, align 4
  %43 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @GinPageIsDeleted(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @GinPageIsLeaf(i32) #1

declare dso_local i32 @GinPageIsData(i32) #1

declare dso_local %struct.TYPE_2__* @GinPageGetOpaque(i32) #1

declare dso_local i32 @ReadBuffer(i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @GinPageIsDeleted(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
