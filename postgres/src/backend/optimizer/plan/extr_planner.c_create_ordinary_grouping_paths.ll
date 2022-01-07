; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_planner.c_create_ordinary_grouping_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_planner.c_create_ordinary_grouping_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_49__ = type { %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_48__ = type { i64, %struct.TYPE_47__*, i64, %struct.TYPE_50__* }
%struct.TYPE_47__ = type { i32 (%struct.TYPE_49__*, i32, %struct.TYPE_48__*, %struct.TYPE_48__*, %struct.TYPE_51__*)* }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_51__ = type { i64, i32, i32 }

@PARTITIONWISE_AGGREGATE_NONE = common dso_local global i64 0, align 8
@PARTITIONWISE_AGGREGATE_FULL = common dso_local global i64 0, align 8
@GROUPING_CAN_PARTIAL_AGG = common dso_local global i32 0, align 4
@PARTITIONWISE_AGGREGATE_PARTIAL = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not implement GROUP BY\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"Some of the datatypes only support hashing, while others only support sorting.\00", align 1
@UPPERREL_GROUP_AGG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_49__*, %struct.TYPE_48__*, %struct.TYPE_48__*, i32*, i32*, %struct.TYPE_51__*, %struct.TYPE_48__**)* @create_ordinary_grouping_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_ordinary_grouping_paths(%struct.TYPE_49__* %0, %struct.TYPE_48__* %1, %struct.TYPE_48__* %2, i32* %3, i32* %4, %struct.TYPE_51__* %5, %struct.TYPE_48__** %6) #0 {
  %8 = alloca %struct.TYPE_49__*, align 8
  %9 = alloca %struct.TYPE_48__*, align 8
  %10 = alloca %struct.TYPE_48__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_51__*, align 8
  %14 = alloca %struct.TYPE_48__**, align 8
  %15 = alloca %struct.TYPE_50__*, align 8
  %16 = alloca %struct.TYPE_48__*, align 8
  %17 = alloca double, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_49__* %0, %struct.TYPE_49__** %8, align 8
  store %struct.TYPE_48__* %1, %struct.TYPE_48__** %9, align 8
  store %struct.TYPE_48__* %2, %struct.TYPE_48__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_51__* %5, %struct.TYPE_51__** %13, align 8
  store %struct.TYPE_48__** %6, %struct.TYPE_48__*** %14, align 8
  %20 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  store %struct.TYPE_50__* %22, %struct.TYPE_50__** %15, align 8
  store %struct.TYPE_48__* null, %struct.TYPE_48__** %16, align 8
  %23 = load i64, i64* @PARTITIONWISE_AGGREGATE_NONE, align 8
  store i64 %23, i64* %18, align 8
  %24 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PARTITIONWISE_AGGREGATE_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %7
  %30 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %31 = call i64 @IS_PARTITIONED_REL(%struct.TYPE_48__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PARTITIONWISE_AGGREGATE_FULL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %41 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_49__*, %struct.TYPE_49__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_46__*, %struct.TYPE_46__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @group_by_has_partkey(%struct.TYPE_48__* %40, i32 %43, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i64, i64* @PARTITIONWISE_AGGREGATE_FULL, align 8
  store i64 %52, i64* %18, align 8
  br label %65

53:                                               ; preds = %39, %33
  %54 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @GROUPING_CAN_PARTIAL_AGG, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64, i64* @PARTITIONWISE_AGGREGATE_PARTIAL, align 8
  store i64 %61, i64* %18, align 8
  br label %64

62:                                               ; preds = %53
  %63 = load i64, i64* @PARTITIONWISE_AGGREGATE_NONE, align 8
  store i64 %63, i64* %18, align 8
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65, %29, %7
  %67 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @GROUPING_CAN_PARTIAL_AGG, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* @PARTITIONWISE_AGGREGATE_PARTIAL, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %19, align 4
  %78 = load %struct.TYPE_49__*, %struct.TYPE_49__** %8, align 8
  %79 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %80 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %83 = load i32, i32* %19, align 4
  %84 = call %struct.TYPE_48__* @create_partial_grouping_paths(%struct.TYPE_49__* %78, %struct.TYPE_48__* %79, %struct.TYPE_48__* %80, i32* %81, %struct.TYPE_51__* %82, i32 %83)
  store %struct.TYPE_48__* %84, %struct.TYPE_48__** %16, align 8
  br label %85

85:                                               ; preds = %73, %66
  %86 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %87 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %14, align 8
  store %struct.TYPE_48__* %86, %struct.TYPE_48__** %87, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* @PARTITIONWISE_AGGREGATE_NONE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load %struct.TYPE_49__*, %struct.TYPE_49__** %8, align 8
  %93 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %94 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %95 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = load i64, i64* %18, align 8
  %99 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %100 = call i32 @create_partitionwise_grouping_paths(%struct.TYPE_49__* %92, %struct.TYPE_48__* %93, %struct.TYPE_48__* %94, %struct.TYPE_48__* %95, i32* %96, i32* %97, i64 %98, %struct.TYPE_51__* %99)
  br label %101

101:                                              ; preds = %91, %85
  %102 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PARTITIONWISE_AGGREGATE_PARTIAL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %109 = call i32 @Assert(%struct.TYPE_48__* %108)
  %110 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %116 = call i32 @set_cheapest(%struct.TYPE_48__* %115)
  br label %117

117:                                              ; preds = %114, %107
  br label %195

118:                                              ; preds = %101
  %119 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %120 = icmp ne %struct.TYPE_48__* %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.TYPE_49__*, %struct.TYPE_49__** %8, align 8
  %128 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %129 = call i32 @gather_grouping_paths(%struct.TYPE_49__* %127, %struct.TYPE_48__* %128)
  %130 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %131 = call i32 @set_cheapest(%struct.TYPE_48__* %130)
  br label %132

132:                                              ; preds = %126, %121, %118
  %133 = load %struct.TYPE_49__*, %struct.TYPE_49__** %8, align 8
  %134 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %12, align 8
  %138 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call double @get_number_of_groups(%struct.TYPE_49__* %133, i32 %136, i32* %137, i32 %140)
  store double %141, double* %17, align 8
  %142 = load %struct.TYPE_49__*, %struct.TYPE_49__** %8, align 8
  %143 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %144 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %145 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = load i32*, i32** %12, align 8
  %148 = load double, double* %17, align 8
  %149 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %150 = call i32 @add_paths_to_grouping_rel(%struct.TYPE_49__* %142, %struct.TYPE_48__* %143, %struct.TYPE_48__* %144, %struct.TYPE_48__* %145, i32* %146, i32* %147, double %148, %struct.TYPE_51__* %149)
  %151 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @NIL, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %132
  %157 = load i32, i32* @ERROR, align 4
  %158 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %159 = call i32 @errcode(i32 %158)
  %160 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %161 = call i32 @errdetail(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %162 = call i32 @ereport(i32 %157, i32 %161)
  br label %163

163:                                              ; preds = %156, %132
  %164 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_47__*, %struct.TYPE_47__** %165, align 8
  %167 = icmp ne %struct.TYPE_47__* %166, null
  br i1 %167, label %168, label %187

168:                                              ; preds = %163
  %169 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_47__*, %struct.TYPE_47__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %171, i32 0, i32 0
  %173 = load i32 (%struct.TYPE_49__*, i32, %struct.TYPE_48__*, %struct.TYPE_48__*, %struct.TYPE_51__*)*, i32 (%struct.TYPE_49__*, i32, %struct.TYPE_48__*, %struct.TYPE_48__*, %struct.TYPE_51__*)** %172, align 8
  %174 = icmp ne i32 (%struct.TYPE_49__*, i32, %struct.TYPE_48__*, %struct.TYPE_48__*, %struct.TYPE_51__*)* %173, null
  br i1 %174, label %175, label %187

175:                                              ; preds = %168
  %176 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_47__*, %struct.TYPE_47__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %178, i32 0, i32 0
  %180 = load i32 (%struct.TYPE_49__*, i32, %struct.TYPE_48__*, %struct.TYPE_48__*, %struct.TYPE_51__*)*, i32 (%struct.TYPE_49__*, i32, %struct.TYPE_48__*, %struct.TYPE_48__*, %struct.TYPE_51__*)** %179, align 8
  %181 = load %struct.TYPE_49__*, %struct.TYPE_49__** %8, align 8
  %182 = load i32, i32* @UPPERREL_GROUP_AGG, align 4
  %183 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %184 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %185 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %186 = call i32 %180(%struct.TYPE_49__* %181, i32 %182, %struct.TYPE_48__* %183, %struct.TYPE_48__* %184, %struct.TYPE_51__* %185)
  br label %187

187:                                              ; preds = %175, %168, %163
  br i1 true, label %188, label %195

188:                                              ; preds = %187
  %189 = load %struct.TYPE_49__*, %struct.TYPE_49__** %8, align 8
  %190 = load i32, i32* @UPPERREL_GROUP_AGG, align 4
  %191 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %192 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %193 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %194 = call i32 @create_upper_paths_hook(%struct.TYPE_49__* %189, i32 %190, %struct.TYPE_48__* %191, %struct.TYPE_48__* %192, %struct.TYPE_51__* %193)
  br label %195

195:                                              ; preds = %117, %188, %187
  ret void
}

declare dso_local i64 @IS_PARTITIONED_REL(%struct.TYPE_48__*) #1

declare dso_local i64 @group_by_has_partkey(%struct.TYPE_48__*, i32, i32) #1

declare dso_local %struct.TYPE_48__* @create_partial_grouping_paths(%struct.TYPE_49__*, %struct.TYPE_48__*, %struct.TYPE_48__*, i32*, %struct.TYPE_51__*, i32) #1

declare dso_local i32 @create_partitionwise_grouping_paths(%struct.TYPE_49__*, %struct.TYPE_48__*, %struct.TYPE_48__*, %struct.TYPE_48__*, i32*, i32*, i64, %struct.TYPE_51__*) #1

declare dso_local i32 @Assert(%struct.TYPE_48__*) #1

declare dso_local i32 @set_cheapest(%struct.TYPE_48__*) #1

declare dso_local i32 @gather_grouping_paths(%struct.TYPE_49__*, %struct.TYPE_48__*) #1

declare dso_local double @get_number_of_groups(%struct.TYPE_49__*, i32, i32*, i32) #1

declare dso_local i32 @add_paths_to_grouping_rel(%struct.TYPE_49__*, %struct.TYPE_48__*, %struct.TYPE_48__*, %struct.TYPE_48__*, i32*, i32*, double, %struct.TYPE_51__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @create_upper_paths_hook(%struct.TYPE_49__*, i32, %struct.TYPE_48__*, %struct.TYPE_48__*, %struct.TYPE_51__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
