; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_MultiXactIdGetUpdateXid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_MultiXactIdGetUpdateXid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@InvalidTransactionId = common dso_local global i64 0, align 8
@HEAP_XMAX_LOCK_ONLY = common dso_local global i32 0, align 4
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @MultiXactIdGetUpdateXid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MultiXactIdGetUpdateXid(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @InvalidTransactionId, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @HEAP_XMAX_LOCK_ONLY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @Assert(i32 %19)
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @GetMultiXactIdMembers(i64 %21, %struct.TYPE_4__** %6, i32 0, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ISUPDATE_from_mxstatus(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %52

40:                                               ; preds = %30
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @InvalidTransactionId, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %5, align 8
  br label %55

52:                                               ; preds = %39
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %26

55:                                               ; preds = %40, %26
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = call i32 @pfree(%struct.TYPE_4__* %56)
  br label %58

58:                                               ; preds = %55, %2
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GetMultiXactIdMembers(i64, %struct.TYPE_4__**, i32, i32) #1

declare dso_local i32 @ISUPDATE_from_mxstatus(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
