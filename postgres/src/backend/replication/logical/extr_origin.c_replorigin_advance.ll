; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_advance.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }

@InvalidRepOriginId = common dso_local global i64 0, align 8
@DoNotReplicateId = common dso_local global i64 0, align 8
@ReplicationOriginLock = common dso_local global i32* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@max_replication_slots = common dso_local global i32 0, align 4
@replication_states = common dso_local global %struct.TYPE_5__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_IN_USE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"replication origin with OID %d is already active for PID %d\00", align 1
@ERRCODE_CONFIGURATION_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"could not find free replication state slot for replication origin with OID %u\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Increase max_replication_slots and try again.\00", align 1
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@RM_REPLORIGIN_ID = common dso_local global i32 0, align 4
@XLOG_REPLORIGIN_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replorigin_advance(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_4__, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @InvalidRepOriginId, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @DoNotReplicateId, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %180

25:                                               ; preds = %5
  %26 = load i32*, i32** @ReplicationOriginLock, align 8
  %27 = load i32, i32* @LW_EXCLUSIVE, align 4
  %28 = call i32 @LWLockAcquire(i32* %26, i32 %27)
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %78, %25
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @max_replication_slots, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %81

33:                                               ; preds = %29
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @replication_states, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %14, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @InvalidRepOriginId, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %45 = icmp eq %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %13, align 8
  br label %78

48:                                               ; preds = %43, %33
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %78

55:                                               ; preds = %48
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %12, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  %59 = load i32, i32* @LW_EXCLUSIVE, align 4
  %60 = call i32 @LWLockAcquire(i32* %58, i32 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %55
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %71, i64 %74)
  %76 = call i32 @ereport(i32 %66, i32 %75)
  br label %77

77:                                               ; preds = %65, %55
  br label %81

78:                                               ; preds = %54, %46
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %29

81:                                               ; preds = %77, %29
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %83 = icmp eq %struct.TYPE_5__* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %86 = icmp eq %struct.TYPE_5__* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i32, i32* @ERRCODE_CONFIGURATION_LIMIT_EXCEEDED, align 4
  %90 = call i32 @errcode(i32 %89)
  %91 = load i64, i64* %6, align 8
  %92 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  %93 = call i32 @errhint(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %94 = call i32 @ereport(i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %87, %84, %81
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %97 = icmp eq %struct.TYPE_5__* %96, null
  br i1 %97, label %98, label %121

98:                                               ; preds = %95
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load i32, i32* @LW_EXCLUSIVE, align 4
  %102 = call i32 @LWLockAcquire(i32* %100, i32 %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %12, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @InvalidXLogRecPtr, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @Assert(i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @InvalidXLogRecPtr, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @Assert(i32 %116)
  %118 = load i64, i64* %6, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %98, %95
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @InvalidRepOriginId, align 8
  %126 = icmp ne i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @Assert(i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %121
  %132 = load i64, i64* %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i64 %132, i64* %133, align 8
  %134 = load i64, i64* %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i64 %134, i64* %135, align 8
  %136 = load i32, i32* %9, align 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %136, i32* %137, align 8
  %138 = call i32 (...) @XLogBeginInsert()
  %139 = bitcast %struct.TYPE_4__* %15 to i8*
  %140 = call i32 @XLogRegisterData(i8* %139, i32 24)
  %141 = load i32, i32* @RM_REPLORIGIN_ID, align 4
  %142 = load i32, i32* @XLOG_REPLORIGIN_SET, align 4
  %143 = call i32 @XLogInsert(i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %131, %121
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %7, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147, %144
  %154 = load i64, i64* %7, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %147
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* @InvalidXLogRecPtr, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %157
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %8, align 8
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164, %161
  %171 = load i64, i64* %8, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %170, %164, %157
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 4
  %177 = call i32 @LWLockRelease(i32* %176)
  %178 = load i32*, i32** @ReplicationOriginLock, align 8
  %179 = call i32 @LWLockRelease(i32* %178)
  br label %180

180:                                              ; preds = %174, %24
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
