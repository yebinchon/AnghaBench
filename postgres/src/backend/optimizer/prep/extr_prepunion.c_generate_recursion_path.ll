; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/prep/extr_prepunion.c_generate_recursion_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/prep/extr_prepunion.c_generate_recursion_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__* }

@SETOP_UNION = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"only UNION queries can be recursive\00", align 1
@UPPERREL_SETOP = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not implement recursive UNION\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"All column datatypes must be hashable.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (%struct.TYPE_22__*, %struct.TYPE_24__*, i32*, i32**)* @generate_recursion_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @generate_recursion_path(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1, i32* %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca double, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32** %3, i32*** %8, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SETOP_UNION, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @ERROR, align 4
  %27 = call i32 @elog(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %4
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call %struct.TYPE_23__* @recurse_set_operations(i32 %37, %struct.TYPE_24__* %38, i32 %41, i32 %44, i32 0, i32 -1, i32* %45, i32** %15, i32* null)
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %11, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  store %struct.TYPE_25__* %49, %struct.TYPE_25__** %13, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  store %struct.TYPE_25__* %50, %struct.TYPE_25__** %52, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call %struct.TYPE_23__* @recurse_set_operations(i32 %55, %struct.TYPE_24__* %56, i32 %59, i32 %62, i32 0, i32 -1, i32* %63, i32** %16, i32* null)
  store %struct.TYPE_23__* %64, %struct.TYPE_23__** %12, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %66, align 8
  store %struct.TYPE_25__* %67, %struct.TYPE_25__** %14, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %69, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = call i32 @list_make2(i32* %76, i32* %77)
  %79 = load i32*, i32** %7, align 8
  %80 = call i32* @generate_append_tlist(i32 %72, i32 %75, i32 0, i32 %78, i32* %79)
  store i32* %80, i32** %17, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = load i32**, i32*** %8, align 8
  store i32* %81, i32** %82, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %84 = load i32, i32* @UPPERREL_SETOP, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bms_union(i32 %87, i32 %90)
  %92 = call %struct.TYPE_23__* @fetch_upper_rel(%struct.TYPE_24__* %83, i32 %84, i32 %91)
  store %struct.TYPE_23__* %92, %struct.TYPE_23__** %9, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = call i32 @create_pathtarget(%struct.TYPE_24__* %93, i32* %94)
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %28
  %103 = load i32*, i32** @NIL, align 8
  store i32* %103, i32** %18, align 8
  store double 0.000000e+00, double* %19, align 8
  br label %128

104:                                              ; preds = %28
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = call i32* @generate_setop_grouplist(%struct.TYPE_22__* %105, i32* %106)
  store i32* %107, i32** %18, align 8
  %108 = load i32*, i32** %18, align 8
  %109 = call i32 @grouping_is_hashable(i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* @ERROR, align 4
  %113 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %114 = call i32 @errcode(i32 %113)
  %115 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %116 = call i32 @errdetail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %117 = call i32 @ereport(i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %111, %104
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %124, 10
  %126 = add nsw i32 %121, %125
  %127 = sitofp i32 %126 to double
  store double %127, double* %19, align 8
  br label %128

128:                                              ; preds = %118, %102
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** %18, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load double, double* %19, align 8
  %141 = call i64 @create_recursiveunion_path(%struct.TYPE_24__* %129, %struct.TYPE_23__* %130, %struct.TYPE_25__* %131, %struct.TYPE_25__* %132, i32 %135, i32* %136, i32 %139, double %140)
  %142 = inttoptr i64 %141 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %142, %struct.TYPE_25__** %10, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %145 = call i32 @add_path(%struct.TYPE_23__* %143, %struct.TYPE_25__* %144)
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %148 = call i32 @postprocess_setop_rel(%struct.TYPE_24__* %146, %struct.TYPE_23__* %147)
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  ret %struct.TYPE_23__* %149
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_23__* @recurse_set_operations(i32, %struct.TYPE_24__*, i32, i32, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32* @generate_append_tlist(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @list_make2(i32*, i32*) #1

declare dso_local %struct.TYPE_23__* @fetch_upper_rel(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @bms_union(i32, i32) #1

declare dso_local i32 @create_pathtarget(%struct.TYPE_24__*, i32*) #1

declare dso_local i32* @generate_setop_grouplist(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @grouping_is_hashable(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i64 @create_recursiveunion_path(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32, i32*, i32, double) #1

declare dso_local i32 @add_path(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @postprocess_setop_rel(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
