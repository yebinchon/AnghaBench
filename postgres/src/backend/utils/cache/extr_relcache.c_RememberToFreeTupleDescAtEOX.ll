; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RememberToFreeTupleDescAtEOX.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RememberToFreeTupleDescAtEOX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOXactTupleDescArray = common dso_local global i32* null, align 8
@CacheMemoryContext = common dso_local global i32 0, align 4
@EOXactTupleDescArrayLen = common dso_local global i32 0, align 4
@NextEOXactTupleDescNum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @RememberToFreeTupleDescAtEOX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RememberToFreeTupleDescAtEOX(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32*, i32** @EOXactTupleDescArray, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @CacheMemoryContext, align 4
  %9 = call i32 @MemoryContextSwitchTo(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = call i64 @palloc(i32 64)
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** @EOXactTupleDescArray, align 8
  store i32 16, i32* @EOXactTupleDescArrayLen, align 4
  store i32 0, i32* @NextEOXactTupleDescNum, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @MemoryContextSwitchTo(i32 %12)
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @NextEOXactTupleDescNum, align 4
  %16 = load i32, i32* @EOXactTupleDescArrayLen, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i32, i32* @EOXactTupleDescArrayLen, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @EOXactTupleDescArrayLen, align 4
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load i32*, i32** @EOXactTupleDescArray, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i64 @repalloc(i32* %25, i32 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** @EOXactTupleDescArray, align 8
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* @EOXactTupleDescArrayLen, align 4
  br label %33

33:                                               ; preds = %18, %14
  br label %34

34:                                               ; preds = %33, %7
  %35 = load i32, i32* %2, align 4
  %36 = load i32*, i32** @EOXactTupleDescArray, align 8
  %37 = load i32, i32* @NextEOXactTupleDescNum, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @NextEOXactTupleDescNum, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %35, i32* %40, align 4
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @repalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
