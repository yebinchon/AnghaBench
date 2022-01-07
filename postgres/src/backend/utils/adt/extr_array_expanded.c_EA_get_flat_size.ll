; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_expanded.c_EA_get_flat_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_expanded.c_EA_get_flat_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32*, i64, i32, i32, i32*, i32, i64 }

@EA_MAGIC = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"array size exceeds the maximum allowed (%d)\00", align 1
@MaxAllocSize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @EA_get_flat_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EA_get_flat_size(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %4, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EA_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 9
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @ARR_SIZE(i64 %27)
  store i64 %28, i64* %2, align 8
  br label %125

29:                                               ; preds = %1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %2, align 8
  br label %125

38:                                               ; preds = %29
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %5, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ArrayGetNItems(i32 %46, i32 %49)
  %51 = icmp eq i32 %45, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 7
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %7, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %103, %38
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %106

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %103

75:                                               ; preds = %67, %64
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @att_addlength_datum(i64 %76, i32 %79, i32 %84)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @att_align_nominal(i64 %86, i32 %89)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @AllocSizeIsValid(i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %75
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %97 = call i32 @errcode(i32 %96)
  %98 = load i64, i64* @MaxAllocSize, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = call i32 @ereport(i32 %95, i32 %100)
  br label %102

102:                                              ; preds = %94, %75
  br label %103

103:                                              ; preds = %102, %74
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %60

106:                                              ; preds = %60
  %107 = load i32*, i32** %8, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i64 @ARR_OVERHEAD_WITHNULLS(i32 %110, i32 %111)
  %113 = load i64, i64* %9, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %9, align 8
  br label %120

115:                                              ; preds = %106
  %116 = load i32, i32* %6, align 4
  %117 = call i64 @ARR_OVERHEAD_NONULLS(i32 %116)
  %118 = load i64, i64* %9, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %115, %109
  %121 = load i64, i64* %9, align 8
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %9, align 8
  store i64 %124, i64* %2, align 8
  br label %125

125:                                              ; preds = %120, %34, %24
  %126 = load i64, i64* %2, align 8
  ret i64 %126
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @ARR_SIZE(i64) #1

declare dso_local i32 @ArrayGetNItems(i32, i32) #1

declare dso_local i64 @att_addlength_datum(i64, i32, i32) #1

declare dso_local i64 @att_align_nominal(i64, i32) #1

declare dso_local i32 @AllocSizeIsValid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @ARR_OVERHEAD_WITHNULLS(i32, i32) #1

declare dso_local i64 @ARR_OVERHEAD_NONULLS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
