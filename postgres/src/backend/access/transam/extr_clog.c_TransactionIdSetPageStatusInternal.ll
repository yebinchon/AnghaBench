; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TransactionIdSetPageStatusInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TransactionIdSetPageStatusInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64*, i32* }

@TRANSACTION_STATUS_COMMITTED = common dso_local global i64 0, align 8
@TRANSACTION_STATUS_ABORTED = common dso_local global i64 0, align 8
@TRANSACTION_STATUS_SUB_COMMITTED = common dso_local global i64 0, align 8
@CLogControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ClogCtl = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i64, i32, i32)* @TransactionIdSetPageStatusInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TransactionIdSetPageStatusInternal(i32 %0, i32 %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @TRANSACTION_STATUS_COMMITTED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %33, label %18

18:                                               ; preds = %6
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @TRANSACTION_STATUS_ABORTED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @TRANSACTION_STATUS_SUB_COMMITTED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @TransactionIdIsValid(i32 %27)
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  br label %33

33:                                               ; preds = %31, %18, %6
  %34 = phi i1 [ true, %18 ], [ true, %6 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load i32, i32* @CLogControlLock, align 4
  %38 = load i32, i32* @LW_EXCLUSIVE, align 4
  %39 = call i32 @LWLockHeldByMeInMode(i32 %37, i32 %38)
  %40 = call i32 @Assert(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ClogCtl, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @XLogRecPtrIsInvalid(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @SimpleLruReadPage(%struct.TYPE_5__* %41, i32 %42, i32 %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @TransactionIdIsValid(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %33
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @TRANSACTION_STATUS_COMMITTED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %87, %54
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %55
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ClogCtl, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @TransactionIdToPage(i32 %73)
  %75 = icmp eq i64 %68, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* @TRANSACTION_STATUS_SUB_COMMITTED, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @TransactionIdSetStatusBit(i32 %82, i64 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %59
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %55

90:                                               ; preds = %55
  br label %91

91:                                               ; preds = %90, %50
  %92 = load i32, i32* %7, align 4
  %93 = load i64, i64* %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @TransactionIdSetStatusBit(i32 %92, i64 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %33
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %130, %97
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %133

102:                                              ; preds = %98
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ClogCtl, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @TransactionIdToPage(i32 %116)
  %118 = icmp eq i64 %111, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @Assert(i32 %119)
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %10, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @TransactionIdSetStatusBit(i32 %125, i64 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %102
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %98

133:                                              ; preds = %98
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ClogCtl, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 1, i32* %141, align 4
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @LWLockHeldByMeInMode(i32, i32) #1

declare dso_local i32 @SimpleLruReadPage(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @XLogRecPtrIsInvalid(i32) #1

declare dso_local i64 @TransactionIdToPage(i32) #1

declare dso_local i32 @TransactionIdSetStatusBit(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
