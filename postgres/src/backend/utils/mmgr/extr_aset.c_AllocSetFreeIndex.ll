; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_aset.c_AllocSetFreeIndex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_aset.c_AllocSetFreeIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALLOC_MINBITS = common dso_local global i32 0, align 4
@LogTable256 = common dso_local global i32* null, align 8
@ALLOCSET_NUM_FREELISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @AllocSetFreeIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocSetFreeIndex(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @ALLOC_MINBITS, align 4
  %8 = shl i32 1, %7
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* @ALLOC_MINBITS, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = lshr i32 %15, 8
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load i32*, i32** @LogTable256, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 8
  br label %32

26:                                               ; preds = %10
  %27 = load i32*, i32** @LogTable256, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  br label %32

32:                                               ; preds = %26, %19
  %33 = phi i32 [ %25, %19 ], [ %31, %26 ]
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @ALLOCSET_NUM_FREELISTS, align 4
  %36 = icmp slt i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  br label %40

39:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
