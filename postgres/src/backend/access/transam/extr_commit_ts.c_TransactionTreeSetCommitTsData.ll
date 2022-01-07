; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_commit_ts.c_TransactionTreeSetCommitTsData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_commit_ts.c_TransactionTreeSetCommitTsData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8* }

@commitTsShared = common dso_local global %struct.TYPE_5__* null, align 8
@CommitTsLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TransactionTreeSetCommitTsData(i8* %0, i32 %1, i8** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commitTsShared, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  br label %127

23:                                               ; preds = %6
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i8**, i8*** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @WriteSetTimestampXlogRec(i8* %27, i32 %28, i8** %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8**, i8*** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %15, align 8
  br label %45

43:                                               ; preds = %33
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %15, align 8
  br label %45

45:                                               ; preds = %43, %36
  store i32 0, i32* %13, align 4
  %46 = load i8*, i8** %7, align 8
  store i8* %46, i8** %14, align 8
  br label %47

47:                                               ; preds = %87, %45
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @TransactionIdToCTsPage(i8* %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %17, align 4
  br label %51

51:                                               ; preds = %66, %47
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i8**, i8*** %9, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @TransactionIdToCTsPage(i8* %60)
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %69

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %17, align 4
  br label %51

69:                                               ; preds = %64, %51
  %70 = load i8*, i8** %14, align 8
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i8**, i8*** %9, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @SetXidCommitTsInPage(i8* %70, i32 %73, i8** %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %8, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  br label %99

87:                                               ; preds = %69
  %88 = load i8**, i8*** %9, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %14, align 8
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %93, %94
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %13, align 4
  br label %47

99:                                               ; preds = %86
  %100 = load i32, i32* @CommitTsLock, align 4
  %101 = load i32, i32* @LW_EXCLUSIVE, align 4
  %102 = call i32 @LWLockAcquire(i32 %100, i32 %101)
  %103 = load i8*, i8** %7, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commitTsShared, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commitTsShared, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commitTsShared, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = call i64 @TransactionIdPrecedes(i8* %116, i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %99
  %121 = load i8*, i8** %15, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %120, %99
  %125 = load i32, i32* @CommitTsLock, align 4
  %126 = call i32 @LWLockRelease(i32 %125)
  br label %127

127:                                              ; preds = %124, %22
  ret void
}

declare dso_local i32 @WriteSetTimestampXlogRec(i8*, i32, i8**, i32, i32) #1

declare dso_local i32 @TransactionIdToCTsPage(i8*) #1

declare dso_local i32 @SetXidCommitTsInPage(i8*, i32, i8**, i32, i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @TransactionIdPrecedes(i8*, i8*) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
