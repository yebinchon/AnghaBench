; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_ProcessTwoPhaseBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_ProcessTwoPhaseBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ShmemVariableCache = common dso_local global %struct.TYPE_4__* null, align 8
@TwoPhaseStateLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"removing stale two-phase state file for transaction %u\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"removing stale two-phase state from memory for transaction %u\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"removing future two-phase state file for transaction %u\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"removing future two-phase state from memory for transaction %u\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"corrupted two-phase state file for transaction %u\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"corrupted two-phase state in memory for transaction %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i64, i32, i32, i32)* @ProcessTwoPhaseBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ProcessTwoPhaseBuffer(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ShmemVariableCache, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @XidFromFullTransactionId(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @TwoPhaseStateLock, align 4
  %25 = load i32, i32* @LW_EXCLUSIVE, align 4
  %26 = call i32 @LWLockHeldByMeInMode(i32 %24, i32 %25)
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %5
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @InvalidXLogRecPtr, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  br label %36

36:                                               ; preds = %30, %5
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @TransactionIdDidCommit(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @TransactionIdDidAbort(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* @WARNING, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = call i32 @ereport(i32 %48, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @RemoveTwoPhaseFile(i32 %52, i32 1)
  br label %61

54:                                               ; preds = %44
  %55 = load i32, i32* @WARNING, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = call i32 @ereport(i32 %55, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @PrepareRedoRemove(i32 %59, i32 1)
  br label %61

61:                                               ; preds = %54, %47
  store i8* null, i8** %6, align 8
  br label %167

62:                                               ; preds = %40
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i64 @TransactionIdFollowsOrEquals(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, i32* @WARNING, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = call i32 @ereport(i32 %71, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @RemoveTwoPhaseFile(i32 %75, i32 1)
  br label %84

77:                                               ; preds = %67
  %78 = load i32, i32* @WARNING, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = call i32 @ereport(i32 %78, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @PrepareRedoRemove(i32 %82, i32 1)
  br label %84

84:                                               ; preds = %77, %70
  store i8* null, i8** %6, align 8
  br label %167

85:                                               ; preds = %62
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = call i8* @ReadTwoPhaseFile(i32 %89, i32 0)
  store i8* %90, i8** %15, align 8
  br label %94

91:                                               ; preds = %85
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @XlogReadTwoPhaseData(i64 %92, i8** %15, i32* null)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i8*, i8** %15, align 8
  %96 = bitcast i8* %95 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %16, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @TransactionIdEquals(i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* @ERROR, align 4
  %108 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %109 = call i32 @errcode(i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = call i32 @ereport(i32 %107, i32 %111)
  br label %120

113:                                              ; preds = %103
  %114 = load i32, i32* @ERROR, align 4
  %115 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %116 = call i32 @errcode(i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  %119 = call i32 @ereport(i32 %114, i32 %118)
  br label %120

120:                                              ; preds = %113, %106
  br label %121

121:                                              ; preds = %120, %94
  %122 = load i8*, i8** %15, align 8
  %123 = call i32 @MAXALIGN(i32 12)
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @MAXALIGN(i32 %128)
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %125, i64 %130
  %132 = bitcast i8* %131 to i32*
  store i32* %132, i32** %14, align 8
  store i32 0, i32* %17, align 4
  br label %133

133:                                              ; preds = %162, %121
  %134 = load i32, i32* %17, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %165

139:                                              ; preds = %133
  %140 = load i32*, i32** %14, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @TransactionIdFollows(i32 %145, i32 %146)
  %148 = call i32 @Assert(i32 %147)
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %139
  %152 = load i32, i32* %18, align 4
  %153 = call i32 @AdvanceNextFullTransactionIdPastXid(i32 %152)
  br label %154

154:                                              ; preds = %151, %139
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @SubTransSetParent(i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %154
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %17, align 4
  br label %133

165:                                              ; preds = %133
  %166 = load i8*, i8** %15, align 8
  store i8* %166, i8** %6, align 8
  br label %167

167:                                              ; preds = %165, %84, %61
  %168 = load i8*, i8** %6, align 8
  ret i8* %168
}

declare dso_local i32 @XidFromFullTransactionId(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMeInMode(i32, i32) #1

declare dso_local i64 @TransactionIdDidCommit(i32) #1

declare dso_local i64 @TransactionIdDidAbort(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RemoveTwoPhaseFile(i32, i32) #1

declare dso_local i32 @PrepareRedoRemove(i32, i32) #1

declare dso_local i64 @TransactionIdFollowsOrEquals(i32, i32) #1

declare dso_local i8* @ReadTwoPhaseFile(i32, i32) #1

declare dso_local i32 @XlogReadTwoPhaseData(i64, i8**, i32*) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @TransactionIdFollows(i32, i32) #1

declare dso_local i32 @AdvanceNextFullTransactionIdPastXid(i32) #1

declare dso_local i32 @SubTransSetParent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
