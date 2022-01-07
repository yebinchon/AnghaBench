; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gin/extr_btree_gin.c_gin_btree_compare_prefix.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gin/extr_btree_gin.c_gin_btree_compare_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unrecognized strategy number: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @gin_btree_compare_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gin_btree_compare_prefix(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = call i32 @PG_GETARG_DATUM(i32 0)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @PG_GETARG_DATUM(i32 1)
  store i32 %10, i32* %5, align 4
  %11 = call i64 @PG_GETARG_POINTER(i32 3)
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (...) @PG_GET_COLLATION()
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 129
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i32 [ %32, %29 ], [ %34, %33 ]
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @CallerFInfoFunctionCall2(i32 %15, i32 %18, i32 %19, i32 %36, i32 %37)
  %39 = call i32 @DatumGetInt32(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %78 [
    i32 128, label %43
    i32 129, label %49
    i32 132, label %55
    i32 131, label %61
    i32 130, label %67
  ]

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %48

47:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %46
  br label %84

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %54

53:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %84

55:                                               ; preds = %35
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %60

59:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %58
  br label %84

61:                                               ; preds = %35
  %62 = load i32, i32* %8, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %66

65:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %64
  br label %84

67:                                               ; preds = %35
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %77

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 -1, i32* %7, align 4
  br label %76

75:                                               ; preds = %71
  store i32 1, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %74
  br label %77

77:                                               ; preds = %76, %70
  br label %84

78:                                               ; preds = %35
  %79 = load i32, i32* @ERROR, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @elog(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %82)
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %78, %77, %66, %60, %54, %48
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @PG_RETURN_INT32(i32 %85)
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @PG_GETARG_DATUM(i32) #1

declare dso_local i64 @PG_GETARG_POINTER(i32) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @CallerFInfoFunctionCall2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PG_GET_COLLATION(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @PG_RETURN_INT32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
