; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_XidIsConcurrent.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_XidIsConcurrent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @XidIsConcurrent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XidIsConcurrent(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @TransactionIdIsValid(i64 %6)
  %8 = call i32 @Assert(i32 %7)
  %9 = load i64, i64* %3, align 8
  %10 = call i32 (...) @GetTopTransactionIdIfAny()
  %11 = call i32 @TransactionIdEquals(i64 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = call %struct.TYPE_3__* (...) @GetTransactionSnapshot()
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @TransactionIdPrecedes(i64 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

24:                                               ; preds = %1
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @TransactionIdFollowsOrEquals(i64 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %54

32:                                               ; preds = %24
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %40, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %54

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %33

53:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %48, %31, %23
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i64) #1

declare dso_local i32 @TransactionIdEquals(i64, i32) #1

declare dso_local i32 @GetTopTransactionIdIfAny(...) #1

declare dso_local %struct.TYPE_3__* @GetTransactionSnapshot(...) #1

declare dso_local i64 @TransactionIdPrecedes(i64, i32) #1

declare dso_local i64 @TransactionIdFollowsOrEquals(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
