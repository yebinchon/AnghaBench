; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_finalize_windowaggregate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_finalize_windowaggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_25__ = type { i32*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i64, i32*, i32, i32, i32 }

@fcinfo = common dso_local global %struct.TYPE_17__* null, align 8
@FUNC_MAX_ARGS = common dso_local global i32 0, align 4
@fcinfodata = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_24__*, i64*, i32*)* @finalize_windowaggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finalize_windowaggregate(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1, %struct.TYPE_24__* %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @MemoryContextSwitchTo(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @OidIsValid(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %122

28:                                               ; preds = %5
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fcinfo, align 8
  %30 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %31 = call i32 @LOCAL_FCINFO(%struct.TYPE_17__* %29, i32 %30)
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fcinfodata, i32 0, i32 0), align 4
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 7
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %43 = bitcast %struct.TYPE_25__* %42 to i8*
  %44 = call i32 @InitFunctionCallInfoData(i32 %35, i32* %37, i32 %38, i32 %41, i8* %43, i32* null)
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @MakeExpandedObjectReadOnly(i64 %47, i32 %50, i32 %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fcinfo, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  store i64 %54, i64* %59, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fcinfo, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %90, %28
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fcinfo, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fcinfo, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  store i32 1, i32* %13, align 4
  br label %90

90:                                               ; preds = %75
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %71

93:                                               ; preds = %71
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fcinfo, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i64*, i64** %9, align 8
  store i64 0, i64* %104, align 8
  %105 = load i32*, i32** %10, align 8
  store i32 1, i32* %105, align 4
  br label %121

106:                                              ; preds = %100, %93
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  store i32* %109, i32** %111, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fcinfo, align 8
  %113 = call i64 @FunctionCallInvoke(%struct.TYPE_17__* %112)
  %114 = load i64*, i64** %9, align 8
  store i64 %113, i64* %114, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fcinfo, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %106, %103
  br label %131

122:                                              ; preds = %5
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %9, align 8
  store i64 %125, i64* %126, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %10, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %122, %121
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %158, label %136

136:                                              ; preds = %131
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %158, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* @CurrentMemoryContext, align 4
  %142 = load i64*, i64** %9, align 8
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @DatumGetPointer(i64 %143)
  %145 = call i32 @MemoryContextContains(i32 %141, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %140
  %148 = load i64*, i64** %9, align 8
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @datumCopy(i64 %149, i32 %152, i32 %155)
  %157 = load i64*, i64** %9, align 8
  store i64 %156, i64* %157, align 8
  br label %158

158:                                              ; preds = %147, %140, %136, %131
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @MemoryContextSwitchTo(i32 %159)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @LOCAL_FCINFO(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @InitFunctionCallInfoData(i32, i32*, i32, i32, i8*, i32*) #1

declare dso_local i64 @MakeExpandedObjectReadOnly(i64, i32, i32) #1

declare dso_local i64 @FunctionCallInvoke(%struct.TYPE_17__*) #1

declare dso_local i32 @MemoryContextContains(i32, i32) #1

declare dso_local i32 @DatumGetPointer(i64) #1

declare dso_local i64 @datumCopy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
