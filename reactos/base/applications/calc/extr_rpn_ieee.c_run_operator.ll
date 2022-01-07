; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_ieee.c_run_operator.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_ieee.c_run_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*)* }
%struct.TYPE_22__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__ }

@calc = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@IDC_RADIO_DEC = common dso_local global i64 0, align 8
@percent_mode = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@operator_list = common dso_local global %struct.TYPE_20__* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_operator(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @calc, i32 0, i32 0), align 8
  store i64 %13, i64* %12, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %16 = bitcast %struct.TYPE_22__* %9 to i8*
  %17 = bitcast %struct.TYPE_22__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %20 = bitcast %struct.TYPE_22__* %10 to i8*
  %21 = bitcast %struct.TYPE_22__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IDC_RADIO_DEC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %4
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IDC_RADIO_DEC, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = call i8* @logic_int2dbl(%struct.TYPE_22__* %35)
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = load i64, i64* @IDC_RADIO_DEC, align 8
  store i64 %38, i64* %12, align 8
  br label %58

39:                                               ; preds = %27, %4
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IDC_RADIO_DEC, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IDC_RADIO_DEC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = call i8* @logic_int2dbl(%struct.TYPE_22__* %53)
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  %56 = load i64, i64* @IDC_RADIO_DEC, align 8
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %51, %45, %39
  br label %58

58:                                               ; preds = %57, %33
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @IDC_RADIO_DEC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %58
  %63 = load i64, i64* @percent_mode, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i64, i64* @FALSE, align 8
  store i64 %66, i64* @percent_mode, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** @operator_list, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  %72 = load i32 (%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*)** %71, align 8
  %73 = call i32 %72(%struct.TYPE_22__* %11, %struct.TYPE_22__* %9, %struct.TYPE_22__* %10)
  br label %82

74:                                               ; preds = %62
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** @operator_list, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load i32 (%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*)** %79, align 8
  %81 = call i32 %80(%struct.TYPE_22__* %11, %struct.TYPE_22__* %9, %struct.TYPE_22__* %10)
  br label %82

82:                                               ; preds = %74, %65
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @_finite(i8* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @calc, i32 0, i32 1), align 8
  br label %89

89:                                               ; preds = %87, %82
  br label %99

90:                                               ; preds = %58
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** @operator_list, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*)** %95, align 8
  %97 = call i32 %96(%struct.TYPE_22__* %11, %struct.TYPE_22__* %9, %struct.TYPE_22__* %10)
  %98 = call i32 @apply_int_mask(%struct.TYPE_22__* %11)
  br label %99

99:                                               ; preds = %90, %89
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IDC_RADIO_DEC, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IDC_RADIO_DEC, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = call i32 @logic_dbl2int(%struct.TYPE_22__* %11)
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  %118 = call i32 @apply_int_mask(%struct.TYPE_22__* %117)
  br label %143

119:                                              ; preds = %105, %99
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IDC_RADIO_DEC, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %119
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @IDC_RADIO_DEC, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  store i8* %133, i8** %136, align 8
  br label %142

137:                                              ; preds = %125, %119
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 1
  %140 = bitcast %struct.TYPE_22__* %139 to i8*
  %141 = bitcast %struct.TYPE_22__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 16, i1 false)
  br label %142

142:                                              ; preds = %137, %131
  br label %143

143:                                              ; preds = %142, %111
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @logic_int2dbl(%struct.TYPE_22__*) #2

declare dso_local i64 @_finite(i8*) #2

declare dso_local i32 @apply_int_mask(%struct.TYPE_22__*) #2

declare dso_local i32 @logic_dbl2int(%struct.TYPE_22__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
