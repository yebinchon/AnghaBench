; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_KnownAssignedXidsAdd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_KnownAssignedXidsAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@procArray = common dso_local global %struct.TYPE_3__* null, align 8
@KnownAssignedXids = common dso_local global i64* null, align 8
@LOG = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"out-of-order XID insertion in KnownAssignedXids\00", align 1
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"too many KnownAssignedXids\00", align 1
@KnownAssignedXidsValid = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @KnownAssignedXidsAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @KnownAssignedXidsAdd(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @procArray, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %7, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @TransactionIdPrecedesOrEquals(i64 %14, i64 %15)
  %17 = call i32 @Assert(i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = sub nsw i64 %22, %23
  %25 = add nsw i64 %24, 1
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  br label %40

27:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %34, %27
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @TransactionIdPrecedes(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @TransactionIdAdvance(i64 %37)
  br label %29

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %50, %53
  br label %55

55:                                               ; preds = %49, %40
  %56 = phi i1 [ false, %40 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @Assert(i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi i1 [ false, %55 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @Assert(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %67
  %75 = load i64*, i64** @KnownAssignedXids, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i64 @TransactionIdFollowsOrEquals(i64 %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load i32, i32* @LOG, align 4
  %86 = call i32 @KnownAssignedXidsDisplay(i32 %85)
  %87 = load i32, i32* @ERROR, align 4
  %88 = call i32 @elog(i32 %87, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %74, %67
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %90, %91
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @ProcArrayLock, align 4
  %102 = load i32, i32* @LW_EXCLUSIVE, align 4
  %103 = call i32 @LWLockAcquire(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %97
  %105 = call i32 @KnownAssignedXidsCompress(i32 1)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* @ProcArrayLock, align 4
  %113 = call i32 @LWLockRelease(i32 %112)
  br label %114

114:                                              ; preds = %111, %104
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* @ERROR, align 4
  %124 = call i32 @elog(i32 %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %114
  br label %126

126:                                              ; preds = %125, %89
  %127 = load i64, i64* %4, align 8
  store i64 %127, i64* %8, align 8
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %146, %126
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = load i64, i64* %8, align 8
  %134 = load i64*, i64** @KnownAssignedXids, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  store i64 %133, i64* %137, align 8
  %138 = load i32*, i32** @KnownAssignedXidsValid, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 1, i32* %141, align 4
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @TransactionIdAdvance(i64 %142)
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %132
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %128

149:                                              ; preds = %128
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %149
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  br label %171

161:                                              ; preds = %149
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 4
  %164 = call i32 @SpinLockAcquire(i32* %163)
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 4
  %170 = call i32 @SpinLockRelease(i32* %169)
  br label %171

171:                                              ; preds = %161, %157
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdPrecedesOrEquals(i64, i64) #1

declare dso_local i64 @TransactionIdPrecedes(i64, i64) #1

declare dso_local i32 @TransactionIdAdvance(i64) #1

declare dso_local i64 @TransactionIdFollowsOrEquals(i64, i64) #1

declare dso_local i32 @KnownAssignedXidsDisplay(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @KnownAssignedXidsCompress(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
