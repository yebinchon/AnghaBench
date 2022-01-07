; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AssignTransactionId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AssignTransactionId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64, i32 }

@TRANS_INPROGRESS = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cannot assign XIDs during a parallel operation\00", align 1
@TopTransactionStateData = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@XactTopFullTransactionId = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@unreportedXids = common dso_local global i32* null, align 8
@nUnreportedXids = common dso_local global i64 0, align 8
@PGPROC_MAX_CACHED_SUBXIDS = common dso_local global i64 0, align 8
@MinSizeOfXactAssignment = common dso_local global i64 0, align 8
@RM_XACT_ID = common dso_local global i32 0, align 4
@XLOG_XACT_ASSIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @AssignTransactionId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AssignTransactionId(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @FullTransactionIdIsValid(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TRANS_INPROGRESS, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = call i64 (...) @IsInParallelMode()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = call i64 (...) @IsParallelWorker()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %1
  %36 = load i32, i32* @ERROR, align 4
  %37 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %94

41:                                               ; preds = %38
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @FullTransactionIdIsValid(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %94, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %6, align 8
  store i64 0, i64* %8, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = call %struct.TYPE_8__** @palloc(i32 %58)
  store %struct.TYPE_8__** %59, %struct.TYPE_8__*** %7, align 8
  br label %60

60:                                               ; preds = %72, %49
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = icmp ne %struct.TYPE_8__* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @FullTransactionIdIsValid(i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %63, %60
  %71 = phi i1 [ false, %60 ], [ %69, %63 ]
  br i1 %71, label %72, label %81

72:                                               ; preds = %70
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %74, i64 %75
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %77, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %6, align 8
  br label %60

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %85, %81
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, -1
  store i64 %88, i64* %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %86, i64 %88
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  call void @AssignTransactionId(%struct.TYPE_8__* %90)
  br label %82

91:                                               ; preds = %82
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %93 = call i32 @pfree(%struct.TYPE_8__** %92)
  br label %94

94:                                               ; preds = %91, %41, %38
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = call i64 (...) @XLogLogicalInfoActive()
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TopTransactionStateData, i32 0, i32 0), align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store i32 1, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %100, %97, %94
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @GetNewTransactionId(i32 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %3, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %104
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* @XactTopFullTransactionId, align 4
  br label %115

115:                                              ; preds = %111, %104
  %116 = load i32, i32* %3, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @XidFromFullTransactionId(i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @XidFromFullTransactionId(i32 %127)
  %129 = call i32 @SubTransSetParent(i32 %122, i32 %128)
  br label %130

130:                                              ; preds = %118, %115
  %131 = load i32, i32* %3, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %130
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @XidFromFullTransactionId(i32 %136)
  %138 = call i32 @RegisterPredicateLockingXid(i32 %137)
  br label %139

139:                                              ; preds = %133, %130
  %140 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %140, i32* %4, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* @CurrentResourceOwner, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @XidFromFullTransactionId(i32 %146)
  %148 = call i32 @XactLockTableInsert(i32 %147)
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* @CurrentResourceOwner, align 4
  %150 = load i32, i32* %3, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %193

152:                                              ; preds = %139
  %153 = call i64 (...) @XLogStandbyInfoActive()
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %193

155:                                              ; preds = %152
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @XidFromFullTransactionId(i32 %158)
  %160 = load i32*, i32** @unreportedXids, align 8
  %161 = load i64, i64* @nUnreportedXids, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32 %159, i32* %162, align 4
  %163 = load i64, i64* @nUnreportedXids, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* @nUnreportedXids, align 8
  %165 = load i64, i64* @nUnreportedXids, align 8
  %166 = load i64, i64* @PGPROC_MAX_CACHED_SUBXIDS, align 8
  %167 = icmp uge i64 %165, %166
  br i1 %167, label %171, label %168

168:                                              ; preds = %155
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %192

171:                                              ; preds = %168, %155
  %172 = call i32 (...) @GetTopTransactionId()
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32 %172, i32* %173, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @TransactionIdIsValid(i32 %175)
  %177 = call i32 @Assert(i32 %176)
  %178 = load i64, i64* @nUnreportedXids, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i64 %178, i64* %179, align 8
  %180 = call i32 (...) @XLogBeginInsert()
  %181 = bitcast %struct.TYPE_7__* %9 to i8*
  %182 = load i64, i64* @MinSizeOfXactAssignment, align 8
  %183 = call i32 @XLogRegisterData(i8* %181, i64 %182)
  %184 = load i32*, i32** @unreportedXids, align 8
  %185 = bitcast i32* %184 to i8*
  %186 = load i64, i64* @nUnreportedXids, align 8
  %187 = mul i64 %186, 4
  %188 = call i32 @XLogRegisterData(i8* %185, i64 %187)
  %189 = load i32, i32* @RM_XACT_ID, align 4
  %190 = load i32, i32* @XLOG_XACT_ASSIGNMENT, align 4
  %191 = call i32 @XLogInsert(i32 %189, i32 %190)
  store i64 0, i64* @nUnreportedXids, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TopTransactionStateData, i32 0, i32 0), align 4
  br label %192

192:                                              ; preds = %171, %168
  br label %193

193:                                              ; preds = %192, %152, %139
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FullTransactionIdIsValid(i32) #1

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i64 @IsParallelWorker(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local %struct.TYPE_8__** @palloc(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_8__**) #1

declare dso_local i64 @XLogLogicalInfoActive(...) #1

declare dso_local i32 @GetNewTransactionId(i32) #1

declare dso_local i32 @SubTransSetParent(i32, i32) #1

declare dso_local i32 @XidFromFullTransactionId(i32) #1

declare dso_local i32 @RegisterPredicateLockingXid(i32) #1

declare dso_local i32 @XactLockTableInsert(i32) #1

declare dso_local i64 @XLogStandbyInfoActive(...) #1

declare dso_local i32 @GetTopTransactionId(...) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i64) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
