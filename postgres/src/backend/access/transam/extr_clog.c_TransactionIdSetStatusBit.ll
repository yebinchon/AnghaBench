; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TransactionIdSetStatusBit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TransactionIdSetStatusBit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8**, i64* }

@CLOG_BITS_PER_XACT = common dso_local global i32 0, align 4
@ClogCtl = common dso_local global %struct.TYPE_4__* null, align 8
@CLOG_XACT_BITMASK = common dso_local global i8 0, align 1
@InRecovery = common dso_local global i64 0, align 8
@TRANSACTION_STATUS_SUB_COMMITTED = common dso_local global i8 0, align 1
@TRANSACTION_STATUS_COMMITTED = common dso_local global i8 0, align 1
@TRANSACTION_STATUS_IN_PROGRESS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8, i64, i32)* @TransactionIdSetStatusBit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TransactionIdSetStatusBit(i32 %0, i8 signext %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8 %1, i8* %6, align 1
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @TransactionIdToByte(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @TransactionIdToBIndex(i32 %17)
  %19 = load i32, i32* @CLOG_BITS_PER_XACT, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ClogCtl, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i32, i32* %10, align 4
  %37 = ashr i32 %35, %36
  %38 = load i8, i8* @CLOG_XACT_BITMASK, align 1
  %39 = sext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %13, align 1
  %42 = load i64, i64* @InRecovery, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %4
  %45 = load i8, i8* %6, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* @TRANSACTION_STATUS_SUB_COMMITTED, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i8, i8* %13, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* @TRANSACTION_STATUS_COMMITTED, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %134

57:                                               ; preds = %50, %44, %4
  %58 = load i8, i8* %13, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %57
  %62 = load i8, i8* %13, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @TRANSACTION_STATUS_SUB_COMMITTED, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i8, i8* %6, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* @TRANSACTION_STATUS_IN_PROGRESS, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67, %61
  %74 = load i8, i8* %13, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* %6, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br label %79

79:                                               ; preds = %73, %67, %57
  %80 = phi i1 [ true, %67 ], [ true, %57 ], [ %78, %73 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load i8*, i8** %11, align 8
  %84 = load i8, i8* %83, align 1
  store i8 %84, i8* %12, align 1
  %85 = load i32, i32* @CLOG_BITS_PER_XACT, align 4
  %86 = shl i32 1, %85
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %10, align 4
  %89 = shl i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = load i8, i8* %12, align 1
  %92 = sext i8 %91 to i32
  %93 = and i32 %92, %90
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %12, align 1
  %95 = load i8, i8* %6, align 1
  %96 = sext i8 %95 to i32
  %97 = load i32, i32* %10, align 4
  %98 = shl i32 %96, %97
  %99 = load i8, i8* %12, align 1
  %100 = sext i8 %99 to i32
  %101 = or i32 %100, %98
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %12, align 1
  %103 = load i8, i8* %12, align 1
  %104 = load i8*, i8** %11, align 8
  store i8 %103, i8* %104, align 1
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @XLogRecPtrIsInvalid(i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %134, label %108

108:                                              ; preds = %79
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @GetLSNIndex(i32 %109, i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ClogCtl, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %108
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ClogCtl, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  store i64 %124, i64* %132, align 8
  br label %133

133:                                              ; preds = %123, %108
  br label %134

134:                                              ; preds = %56, %133, %79
  ret void
}

declare dso_local i32 @TransactionIdToByte(i32) #1

declare dso_local i32 @TransactionIdToBIndex(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogRecPtrIsInvalid(i64) #1

declare dso_local i32 @GetLSNIndex(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
