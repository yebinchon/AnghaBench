; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_minmaxStep.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_minmaxStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@SQLITE_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @minmaxStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minmaxStep(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @UNUSED_PARAMETER(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @sqlite3_aggregate_context(i32* %18, i32 8)
  %20 = inttoptr i64 %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %8, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %80

24:                                               ; preds = %3
  %25 = load i32**, i32*** %6, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @sqlite3_value_type(i32* %27)
  %29 = load i64, i64* @SQLITE_NULL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @sqlite3SkipAccumulatorLoad(i32* %37)
  br label %39

39:                                               ; preds = %36, %31
  br label %80

40:                                               ; preds = %24
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @sqlite3GetFuncCollSeq(i32* %46)
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @sqlite3_user_data(i32* %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @sqlite3MemCompare(%struct.TYPE_6__* %52, %struct.TYPE_6__* %53, i32* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58, %45
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64, %58
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = call i32 @sqlite3VdbeMemCopy(%struct.TYPE_6__* %68, %struct.TYPE_6__* %69)
  br label %74

71:                                               ; preds = %64, %61
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @sqlite3SkipAccumulatorLoad(i32* %72)
  br label %74

74:                                               ; preds = %71, %67
  br label %79

75:                                               ; preds = %40
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = call i32 @sqlite3VdbeMemCopy(%struct.TYPE_6__* %76, %struct.TYPE_6__* %77)
  br label %79

79:                                               ; preds = %75, %74
  br label %80

80:                                               ; preds = %23, %79, %39
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3SkipAccumulatorLoad(i32*) #1

declare dso_local i32* @sqlite3GetFuncCollSeq(i32*) #1

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32 @sqlite3MemCompare(%struct.TYPE_6__*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @sqlite3VdbeMemCopy(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
