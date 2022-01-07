; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_GetRunningTransactionData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_GetRunningTransactionData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8**, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@GetRunningTransactionData.CurrentRunningXactsData = internal global %struct.TYPE_14__ zeroinitializer, align 8
@procArray = common dso_local global %struct.TYPE_15__* null, align 8
@TOTAL_MAX_CACHED_SUBXIDS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@XidGenLock = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_12__* null, align 8
@allPgXact = common dso_local global %struct.TYPE_16__* null, align 8
@allProcs = common dso_local global %struct.TYPE_17__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @GetRunningTransactionData() #0 {
  %1 = alloca %struct.TYPE_15__*, align 8
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** @procArray, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %1, align 8
  store %struct.TYPE_14__* @GetRunningTransactionData.CurrentRunningXactsData, %struct.TYPE_14__** %2, align 8
  %18 = call i32 (...) @RecoveryInProgress()
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = icmp eq i8** %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %0
  %28 = load i32, i32* @TOTAL_MAX_CACHED_SUBXIDS, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = call i64 @malloc(i32 %31)
  %33 = inttoptr i64 %32 to i8**
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  store i8** %33, i8*** %35, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = icmp eq i8** %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @ereport(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %27
  br label %47

47:                                               ; preds = %46, %0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  store i8** %50, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %51 = load i32, i32* @ProcArrayLock, align 4
  %52 = load i32, i32* @LW_SHARED, align 4
  %53 = call i32 @LWLockAcquire(i32 %51, i32 %52)
  %54 = load i32, i32* @XidGenLock, align 4
  %55 = load i32, i32* @LW_SHARED, align 4
  %56 = call i32 @LWLockAcquire(i32 %54, i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ShmemVariableCache, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %3, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ShmemVariableCache, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @XidFromFullTransactionId(i32 %62)
  store i8* %63, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %110, %47
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %113

70:                                               ; preds = %64
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %10, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** @allPgXact, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i64 %80
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %11, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @UINT32_ACCESS_ONCE(i32 %84)
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @TransactionIdIsValid(i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %70
  br label %110

90:                                               ; preds = %70
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = call i64 @TransactionIdPrecedes(i8* %91, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i8*, i8** %12, align 8
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %95, %90
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 1, i32* %9, align 4
  br label %103

103:                                              ; preds = %102, %97
  %104 = load i8*, i8** %12, align 8
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  store i8* %104, i8** %109, align 8
  br label %110

110:                                              ; preds = %103, %89
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %64

113:                                              ; preds = %64
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %171, label %116

116:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %167, %116
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %170

123:                                              ; preds = %117
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %13, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** @allProcs, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i64 %133
  store %struct.TYPE_17__* %134, %struct.TYPE_17__** %14, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** @allPgXact, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i64 %137
  store %struct.TYPE_16__* %138, %struct.TYPE_16__** %15, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %166

144:                                              ; preds = %123
  %145 = call i32 (...) @pg_read_barrier()
  %146 = load i8**, i8*** %5, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 @memcpy(i8** %149, i8* %154, i32 %158)
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %144, %123
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %117

170:                                              ; preds = %117
  br label %171

171:                                              ; preds = %170, %113
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %8, align 4
  %174 = sub nsw i32 %172, %173
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ShmemVariableCache, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i8* @XidFromFullTransactionId(i32 %185)
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 4
  store i8* %186, i8** %188, align 8
  %189 = load i8*, i8** %4, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 5
  store i8* %189, i8** %191, align 8
  %192 = load i8*, i8** %3, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 6
  store i8* %192, i8** %194, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 4
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @TransactionIdIsValid(i8* %197)
  %199 = call i32 @Assert(i32 %198)
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 5
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @TransactionIdIsValid(i8* %202)
  %204 = call i32 @Assert(i32 %203)
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 6
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @TransactionIdIsNormal(i8* %207)
  %209 = call i32 @Assert(i32 %208)
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %210
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i8* @XidFromFullTransactionId(i32) #1

declare dso_local i8* @UINT32_ACCESS_ONCE(i32) #1

declare dso_local i32 @TransactionIdIsValid(i8*) #1

declare dso_local i64 @TransactionIdPrecedes(i8*, i8*) #1

declare dso_local i32 @pg_read_barrier(...) #1

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

declare dso_local i32 @TransactionIdIsNormal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
