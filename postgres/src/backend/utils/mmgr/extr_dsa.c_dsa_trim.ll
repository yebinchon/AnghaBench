; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_dsa_trim.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_dsa_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64, i64, i32 }

@DSA_NUM_SIZE_CLASSES = common dso_local global i32 0, align 4
@DSA_SCLASS_SPAN_LARGE = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsa_trim(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load i32, i32* @DSA_NUM_SIZE_CLASSES, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %66, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %69

13:                                               ; preds = %10
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i64 %20
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @DSA_SCLASS_SPAN_LARGE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %66

26:                                               ; preds = %13
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @DSA_SCLASS_LOCK(%struct.TYPE_13__* %27, i32 %28)
  %30 = load i32, i32* @LW_EXCLUSIVE, align 4
  %31 = call i32 @LWLockAcquire(i32 %29, i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %59, %26
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @DsaPointerIsValid(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.TYPE_11__* @dsa_get_address(%struct.TYPE_13__* %42, i32 %43)
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %6, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @destroy_superblock(%struct.TYPE_13__* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %41
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %5, align 4
  br label %37

61:                                               ; preds = %37
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @DSA_SCLASS_LOCK(%struct.TYPE_13__* %62, i32 %63)
  %65 = call i32 @LWLockRelease(i32 %64)
  br label %66

66:                                               ; preds = %61, %25
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %3, align 4
  br label %10

69:                                               ; preds = %10
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @DSA_SCLASS_LOCK(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @DsaPointerIsValid(i32) #1

declare dso_local %struct.TYPE_11__* @dsa_get_address(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @destroy_superblock(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
