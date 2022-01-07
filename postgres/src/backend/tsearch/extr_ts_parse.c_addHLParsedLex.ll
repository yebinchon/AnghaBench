; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_parse.c_addHLParsedLex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_parse.c_addHLParsedLex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32 }

@TSL_ADDPOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, %struct.TYPE_12__*, %struct.TYPE_12__*)* @addHLParsedLex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addHLParsedLex(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  br label %12

12:                                               ; preds = %71, %4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %78

15:                                               ; preds = %12
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @hladdword(%struct.TYPE_13__* %21, i32 %24, i32 %27, i64 %30)
  br label %32

32:                                               ; preds = %20, %15
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %10, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %57, %32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = icmp ne %struct.TYPE_12__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i1 [ false, %37 ], [ %44, %40 ]
  br i1 %46, label %47, label %71

47:                                               ; preds = %45
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TSL_ADDPOS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %54, %47
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = call i32 @strlen(%struct.TYPE_12__* %66)
  %68 = call i32 @hlfinditem(%struct.TYPE_13__* %58, i32 %59, i64 %60, %struct.TYPE_12__* %63, i32 %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 1
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %10, align 8
  br label %37

71:                                               ; preds = %45
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %9, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = call i32 @pfree(%struct.TYPE_12__* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %7, align 8
  br label %12

78:                                               ; preds = %12
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = icmp ne %struct.TYPE_12__* %79, null
  br i1 %80, label %81, label %110

81:                                               ; preds = %78
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %10, align 8
  br label %83

83:                                               ; preds = %100, %81
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = icmp ne %struct.TYPE_12__* %86, null
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @TSL_ADDPOS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %95, %88
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = call i32 @pfree(%struct.TYPE_12__* %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 1
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %10, align 8
  br label %83

107:                                              ; preds = %83
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %109 = call i32 @pfree(%struct.TYPE_12__* %108)
  br label %110

110:                                              ; preds = %107, %78
  ret void
}

declare dso_local i32 @hladdword(%struct.TYPE_13__*, i32, i32, i64) #1

declare dso_local i32 @hlfinditem(%struct.TYPE_13__*, i32, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @strlen(%struct.TYPE_12__*) #1

declare dso_local i32 @pfree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
