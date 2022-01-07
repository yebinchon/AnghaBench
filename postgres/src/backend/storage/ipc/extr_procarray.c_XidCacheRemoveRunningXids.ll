; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_XidCacheRemoveRunningXids.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_XidCacheRemoveRunningXids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@ProcArrayLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MyPgXact = common dso_local global %struct.TYPE_8__* null, align 8
@MyProc = common dso_local global %struct.TYPE_7__* null, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"did not find subXID %u in MyProc\00", align 1
@ShmemVariableCache = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XidCacheRemoveRunningXids(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @TransactionIdIsValid(i32 %12)
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32, i32* @ProcArrayLock, align 4
  %16 = load i32, i32* @LW_EXCLUSIVE, align 4
  %17 = call i32 @LWLockAcquire(i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %68, %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %71

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %52, %23
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProc, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @TransactionIdEquals(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @XidCacheRemove(i32 %49)
  br label %55

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %10, align 4
  br label %33

55:                                               ; preds = %48, %33
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @WARNING, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @elog(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %58, %55
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %9, align 4
  br label %20

71:                                               ; preds = %20
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %95, %71
  %77 = load i32, i32* %10, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProc, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @TransactionIdEquals(i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @XidCacheRemove(i32 %92)
  br label %98

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %10, align 4
  br label %76

98:                                               ; preds = %91, %76
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @WARNING, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @elog(i32 %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %101, %98
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i64 @TransactionIdPrecedes(i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %110
  %122 = load i32, i32* @ProcArrayLock, align 4
  %123 = call i32 @LWLockRelease(i32 %122)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @XidCacheRemove(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
