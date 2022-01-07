; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_vdbeIncrPopulate.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_vdbeIncrPopulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { i64*, %struct.TYPE_17__*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @vdbeIncrPopulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeIncrPopulate(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %14 = load i32, i32* @SQLITE_OK, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i64 1
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %6, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %7, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %8, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = call i32 @vdbeSorterPopulateDebug(%struct.TYPE_17__* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @vdbePmaWriterInit(i32 %38, %struct.TYPE_18__* %9, i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %88, %1
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @SQLITE_OK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %109

50:                                               ; preds = %46
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i64 %58
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %11, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %12, align 4
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %64, %66
  store i64 %67, i64* %13, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %50
  br label %109

73:                                               ; preds = %50
  %74 = load i64, i64* %13, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @sqlite3VarintLen(i32 %78)
  %80 = add nsw i64 %77, %79
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = icmp sgt i64 %80, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  br label %109

88:                                               ; preds = %73
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @vdbePmaWriteVarint(%struct.TYPE_18__* %9, i32 %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @vdbePmaWriteBlob(%struct.TYPE_18__* %9, i32 %93, i32 %94)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %102 = icmp eq %struct.TYPE_17__* %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = call i32 @vdbeMergeEngineStep(%struct.TYPE_20__* %107, i32* %10)
  store i32 %108, i32* %3, align 4
  br label %46

109:                                              ; preds = %87, %72, %46
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = call i32 @vdbePmaWriterFinish(%struct.TYPE_18__* %9, i32* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %109
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = call i32 @vdbeSorterPopulateDebug(%struct.TYPE_17__* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vdbeSorterPopulateDebug(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @vdbePmaWriterInit(i32, %struct.TYPE_18__*, i32, i64) #1

declare dso_local i64 @sqlite3VarintLen(i32) #1

declare dso_local i32 @vdbePmaWriteVarint(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @vdbePmaWriteBlob(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @vdbeMergeEngineStep(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @vdbePmaWriterFinish(%struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
