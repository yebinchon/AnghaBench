; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_populate_array_dim_jsonb.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_populate_array_dim_jsonb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }

@jbvBinary = common dso_local global i64 0, align 8
@WJB_BEGIN_ARRAY = common dso_local global i64 0, align 8
@WJB_END_ARRAY = common dso_local global i64 0, align 8
@WJB_ELEM = common dso_local global i64 0, align 8
@WJB_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_19__*, i32)* @populate_array_dim_jsonb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_array_dim_jsonb(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = call i32 (...) @check_stack_depth()
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @jbvBinary, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @JsonContainerIsArray(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @populate_array_report_expected_array(%struct.TYPE_18__* %28, i32 %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @JsonContainerIsScalar(i32* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32* @JsonbIteratorInit(i32* %39)
  store i32* %40, i32** %8, align 8
  %41 = call i64 @JsonbIteratorNext(i32** %8, %struct.TYPE_19__* %10, i32 1)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = call i64 @JsonbIteratorNext(i32** %8, %struct.TYPE_19__* %10, i32 1)
  store i64 %47, i64* %9, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %32
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @WJB_END_ARRAY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %72, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @WJB_ELEM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @jbvBinary, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @JsonContainerIsArray(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %65, %60, %52
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @populate_array_assign_ndims(%struct.TYPE_18__* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %65, %56, %32
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %79, align 8
  br label %80

80:                                               ; preds = %119, %76
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @WJB_ELEM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %121

84:                                               ; preds = %80
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @populate_array_element(%struct.TYPE_18__* %96, i32 %97, %struct.TYPE_20__* %11)
  br label %119

99:                                               ; preds = %89, %84
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  call void @populate_array_dim_jsonb(%struct.TYPE_18__* %100, %struct.TYPE_19__* %10, i32 %102)
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %107, %99
  %113 = phi i1 [ false, %99 ], [ %111, %107 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @Assert(i32 %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @populate_array_check_dimension(%struct.TYPE_18__* %116, i32 %117)
  br label %119

119:                                              ; preds = %112, %95
  %120 = call i64 @JsonbIteratorNext(i32** %8, %struct.TYPE_19__* %10, i32 1)
  store i64 %120, i64* %9, align 8
  br label %80

121:                                              ; preds = %80
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* @WJB_END_ARRAY, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @Assert(i32 %125)
  %127 = call i64 @JsonbIteratorNext(i32** %8, %struct.TYPE_19__* %10, i32 1)
  store i64 %127, i64* %9, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* @WJB_DONE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %121
  %132 = load i32*, i32** %8, align 8
  %133 = icmp ne i32* %132, null
  %134 = xor i1 %133, true
  br label %135

135:                                              ; preds = %131, %121
  %136 = phi i1 [ false, %121 ], [ %134, %131 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @Assert(i32 %137)
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @JsonContainerIsArray(i32*) #1

declare dso_local i32 @populate_array_report_expected_array(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @JsonContainerIsScalar(i32*) #1

declare dso_local i32* @JsonbIteratorInit(i32*) #1

declare dso_local i64 @JsonbIteratorNext(i32**, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @populate_array_assign_ndims(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @populate_array_element(%struct.TYPE_18__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @populate_array_check_dimension(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
