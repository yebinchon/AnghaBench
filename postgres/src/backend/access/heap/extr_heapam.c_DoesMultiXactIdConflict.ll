; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_DoesMultiXactIdConflict.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_DoesMultiXactIdConflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@tupleLockExtraInfo = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32*)* @DoesMultiXactIdConflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoesMultiXactIdConflict(i32 %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tupleLockExtraInfo, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @HEAP_LOCKED_UPGRADED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %113

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %28)
  %30 = call i32 @GetMultiXactIdMembers(i32 %27, %struct.TYPE_5__** %11, i32 0, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %111

33:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %105, %33
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %108

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %41
  br label %108

49:                                               ; preds = %44, %38
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @LOCKMODE_from_mxstatus(i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i64 @TransactionIdIsCurrentTransactionId(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %49
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32*, i32** %9, align 8
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %66
  br label %105

72:                                               ; preds = %49
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %105

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @DoLockModesConflict(i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %105

83:                                               ; preds = %77
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @ISUPDATE_from_mxstatus(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load i32, i32* %15, align 4
  %94 = call i64 @TransactionIdDidAbort(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %105

97:                                               ; preds = %92
  br label %104

98:                                               ; preds = %83
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @TransactionIdIsInProgress(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  br label %105

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %97
  store i32 1, i32* %12, align 4
  br label %105

105:                                              ; preds = %104, %102, %96, %82, %75, %71
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %34

108:                                              ; preds = %48, %34
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %110 = call i32 @pfree(%struct.TYPE_5__* %109)
  br label %111

111:                                              ; preds = %108, %26
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %25
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @HEAP_LOCKED_UPGRADED(i32) #1

declare dso_local i32 @GetMultiXactIdMembers(i32, %struct.TYPE_5__**, i32, i32) #1

declare dso_local i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i32 @LOCKMODE_from_mxstatus(i32) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i32 @DoLockModesConflict(i32, i32) #1

declare dso_local i64 @ISUPDATE_from_mxstatus(i32) #1

declare dso_local i64 @TransactionIdDidAbort(i32) #1

declare dso_local i32 @TransactionIdIsInProgress(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
