; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_GetMultiXactIdHintBits.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_GetMultiXactIdHintBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@LockTupleKeyShare = common dso_local global i64 0, align 8
@HEAP_KEYS_UPDATED = common dso_local global i32 0, align 4
@LockTupleExclusive = common dso_local global i64 0, align 8
@LockTupleNoKeyExclusive = common dso_local global i64 0, align 8
@HEAP_XMAX_EXCL_LOCK = common dso_local global i32 0, align 4
@LockTupleShare = common dso_local global i64 0, align 8
@HEAP_XMAX_SHR_LOCK = common dso_local global i32 0, align 4
@HEAP_XMAX_KEYSHR_LOCK = common dso_local global i32 0, align 4
@HEAP_XMAX_LOCK_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @GetMultiXactIdHintBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetMultiXactIdHintBits(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i64, i64* @LockTupleKeyShare, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @GetMultiXactIdMembers(i32 %17, %struct.TYPE_4__** %8, i32 0, i32 0)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %54, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @TUPLOCK_from_mxstatus(i32 %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i64, i64* %14, align 8
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %34, %23
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %53 [
    i32 133, label %43
    i32 131, label %43
    i32 132, label %43
    i32 130, label %44
    i32 129, label %48
    i32 128, label %49
  ]

43:                                               ; preds = %36, %36, %36
  br label %53

44:                                               ; preds = %36
  %45 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %53

48:                                               ; preds = %36
  store i32 1, i32* %12, align 4
  br label %53

49:                                               ; preds = %36
  %50 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %53

53:                                               ; preds = %36, %49, %48, %44, %43
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @LockTupleExclusive, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* @LockTupleNoKeyExclusive, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61, %57
  %66 = load i32, i32* @HEAP_XMAX_EXCL_LOCK, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %87

69:                                               ; preds = %61
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @LockTupleShare, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* @HEAP_XMAX_SHR_LOCK, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %86

77:                                               ; preds = %69
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* @LockTupleKeyShare, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @HEAP_XMAX_KEYSHR_LOCK, align 4
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %73
  br label %87

87:                                               ; preds = %86, %65
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* @HEAP_XMAX_LOCK_ONLY, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32, i32* %7, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = call i32 @pfree(%struct.TYPE_4__* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %10, align 4
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32*, i32** %6, align 8
  store i32 %103, i32* %104, align 4
  ret void
}

declare dso_local i32 @GetMultiXactIdMembers(i32, %struct.TYPE_4__**, i32, i32) #1

declare dso_local i64 @TUPLOCK_from_mxstatus(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
