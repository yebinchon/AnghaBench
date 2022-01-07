; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_KnownAssignedXidsSearch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_KnownAssignedXidsSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@procArray = common dso_local global %struct.TYPE_3__* null, align 8
@KnownAssignedXids = common dso_local global i64* null, align 8
@KnownAssignedXidsValid = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @KnownAssignedXidsSearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KnownAssignedXidsSearch(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @procArray, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  store i32 -1, i32* %11, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = call i32 @SpinLockAcquire(i32* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = call i32 @SpinLockRelease(i32* %35)
  br label %37

37:                                               ; preds = %24, %17
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %72, %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %12, align 4
  %50 = load i64*, i64** @KnownAssignedXids, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %11, align 4
  br label %73

60:                                               ; preds = %45
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i64 @TransactionIdPrecedes(i64 %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %71

68:                                               ; preds = %60
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71
  br label %41

73:                                               ; preds = %58, %41
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %142

77:                                               ; preds = %73
  %78 = load i32*, i32** @KnownAssignedXidsValid, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %142

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %141

88:                                               ; preds = %85
  %89 = load i32*, i32** @KnownAssignedXidsValid, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 0, i32* %92, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp sge i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @Assert(i32 %101)
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %140

106:                                              ; preds = %88
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %123, %106
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32*, i32** @KnownAssignedXidsValid, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br label %121

121:                                              ; preds = %113, %109
  %122 = phi i1 [ false, %109 ], [ %120, %113 ]
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %109

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i32 0, i32* %132, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  br label %139

135:                                              ; preds = %126
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %130
  br label %140

140:                                              ; preds = %139, %88
  br label %141

141:                                              ; preds = %140, %85
  store i32 1, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %84, %76
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i64 @TransactionIdPrecedes(i64, i64) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
