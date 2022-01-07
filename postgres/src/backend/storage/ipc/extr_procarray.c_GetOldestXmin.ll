; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_GetOldestXmin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_GetOldestXmin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@procArray = common dso_local global %struct.TYPE_14__* null, align 8
@InvalidTransactionId = common dso_local global i32 0, align 4
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_17__* null, align 8
@allProcs = common dso_local global %struct.TYPE_16__* null, align 8
@allPgXact = common dso_local global %struct.TYPE_15__* null, align 8
@PROCARRAY_PROC_FLAGS_MASK = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i64 0, align 8
@vacuum_defer_cleanup_age = common dso_local global i64 0, align 8
@FirstNormalTransactionId = common dso_local global i32 0, align 4
@PROCARRAY_SLOTS_XMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetOldestXmin(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** @procArray, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %5, align 8
  %17 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = icmp eq %struct.TYPE_13__* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %21, %2
  %29 = phi i1 [ true, %2 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = call i64 (...) @RecoveryInProgress()
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ true, %28 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load i32, i32* @ProcArrayLock, align 4
  %42 = load i32, i32* @LW_SHARED, align 4
  %43 = call i32 @LWLockAcquire(i32 %41, i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ShmemVariableCache, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @TransactionIdIsNormal(i32 %47)
  %49 = call i32 @Assert(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @TransactionIdAdvance(i32 %50)
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %129, %37
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %132

58:                                               ; preds = %52
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** @allProcs, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i64 %68
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %12, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** @allPgXact, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i64 %72
  store %struct.TYPE_15__* %73, %struct.TYPE_15__** %13, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @PROCARRAY_PROC_FLAGS_MASK, align 4
  %79 = and i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %58
  br label %129

83:                                               ; preds = %58
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MyDatabaseId, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %92, %86, %83
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @UINT32_ACCESS_ONCE(i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @TransactionIdIsNormal(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i64 @TransactionIdPrecedes(i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %105, %97
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @UINT32_ACCESS_ONCE(i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @TransactionIdIsNormal(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %112
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i64 @TransactionIdPrecedes(i32 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %125, %120, %112
  br label %128

128:                                              ; preds = %127, %92
  br label %129

129:                                              ; preds = %128, %82
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %52

132:                                              ; preds = %52
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** @procArray, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %9, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** @procArray, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %10, align 4
  %139 = call i64 (...) @RecoveryInProgress()
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %132
  %142 = call i32 (...) @KnownAssignedXidsGetOldestXmin()
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* @ProcArrayLock, align 4
  %144 = call i32 @LWLockRelease(i32 %143)
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @TransactionIdIsNormal(i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i64 @TransactionIdPrecedes(i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %15, align 4
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %153, %148, %141
  br label %170

156:                                              ; preds = %132
  %157 = load i32, i32* @ProcArrayLock, align 4
  %158 = call i32 @LWLockRelease(i32 %157)
  %159 = load i64, i64* @vacuum_defer_cleanup_age, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = sub nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @TransactionIdIsNormal(i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %156
  %168 = load i32, i32* @FirstNormalTransactionId, align 4
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %167, %156
  br label %170

170:                                              ; preds = %169, %155
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @PROCARRAY_SLOTS_XMIN, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %9, align 4
  %177 = call i64 @TransactionIdIsValid(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %6, align 4
  %182 = call i64 @NormalTransactionIdPrecedes(i32 %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %184, %179, %175, %170
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @PROCARRAY_SLOTS_XMIN, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %209, label %191

191:                                              ; preds = %186
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %193 = icmp eq %struct.TYPE_13__* %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %196 = call i64 @RelationIsAccessibleInLogicalDecoding(%struct.TYPE_13__* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %194, %191
  %199 = load i32, i32* %10, align 4
  %200 = call i64 @TransactionIdIsValid(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %198
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %6, align 4
  %205 = call i64 @NormalTransactionIdPrecedes(i32 %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %207, %202, %198, %194, %186
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @TransactionIdIsNormal(i32) #1

declare dso_local i32 @TransactionIdAdvance(i32) #1

declare dso_local i32 @UINT32_ACCESS_ONCE(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @KnownAssignedXidsGetOldestXmin(...) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i64 @NormalTransactionIdPrecedes(i32, i32) #1

declare dso_local i64 @RelationIsAccessibleInLogicalDecoding(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
