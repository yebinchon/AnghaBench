; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_minmaxStep.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_minmaxStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }

@SQLITE_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @minmaxStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minmaxStep(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @UNUSED_PARAMETER(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @sqlite3_aggregate_context(i32* %18, i32 16)
  %20 = inttoptr i64 %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %82

24:                                               ; preds = %3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = call i64 @sqlite3_value_type(%struct.TYPE_7__* %25)
  %27 = load i64, i64* @SQLITE_NULL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @sqlite3SkipAccumulatorLoad(i32* %35)
  br label %37

37:                                               ; preds = %34, %29
  br label %82

38:                                               ; preds = %24
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = call i32* @sqlite3GetFuncCollSeq(i32* %44)
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @sqlite3_user_data(i32* %46)
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @sqlite3MemCompare(%struct.TYPE_7__* %50, %struct.TYPE_7__* %51, i32* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56, %43
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %56
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = call i32 @sqlite3VdbeMemCopy(%struct.TYPE_7__* %66, %struct.TYPE_7__* %67)
  br label %72

69:                                               ; preds = %62, %59
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @sqlite3SkipAccumulatorLoad(i32* %70)
  br label %72

72:                                               ; preds = %69, %65
  br label %81

73:                                               ; preds = %38
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @sqlite3_context_db_handle(i32* %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = call i32 @sqlite3VdbeMemCopy(%struct.TYPE_7__* %78, %struct.TYPE_7__* %79)
  br label %81

81:                                               ; preds = %73, %72
  br label %82

82:                                               ; preds = %23, %81, %37
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i64 @sqlite3_value_type(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3SkipAccumulatorLoad(i32*) #1

declare dso_local i32* @sqlite3GetFuncCollSeq(i32*) #1

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32 @sqlite3MemCompare(%struct.TYPE_7__*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @sqlite3VdbeMemCopy(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3_context_db_handle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
