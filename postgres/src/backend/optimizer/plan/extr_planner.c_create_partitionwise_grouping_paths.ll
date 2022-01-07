; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_planner.c_create_partitionwise_grouping_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_planner.c_create_partitionwise_grouping_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, i32, %struct.TYPE_23__**, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_25__ = type { i32*, i32, i64, i32* }

@NIL = common dso_local global i32* null, align 8
@PARTITIONWISE_AGGREGATE_NONE = common dso_local global i64 0, align 8
@PARTITIONWISE_AGGREGATE_PARTIAL = common dso_local global i64 0, align 8
@PARTITIONWISE_AGGREGATE_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32*, i32*, i64, %struct.TYPE_25__*)* @create_partitionwise_grouping_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_partitionwise_grouping_paths(i32* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__* %2, %struct.TYPE_23__* %3, i32* %4, i32* %5, i64 %6, %struct.TYPE_25__* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_24__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca %struct.TYPE_24__*, align 8
  %25 = alloca i32**, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_25__, align 8
  %28 = alloca %struct.TYPE_23__*, align 8
  %29 = alloca %struct.TYPE_23__*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.TYPE_25__* %7, %struct.TYPE_25__** %16, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %17, align 4
  %33 = load i32*, i32** @NIL, align 8
  store i32* %33, i32** %19, align 8
  %34 = load i32*, i32** @NIL, align 8
  store i32* %34, i32** %20, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %36, align 8
  store %struct.TYPE_24__* %37, %struct.TYPE_24__** %21, align 8
  store i32 1, i32* %22, align 4
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* @PARTITIONWISE_AGGREGATE_NONE, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* @PARTITIONWISE_AGGREGATE_PARTIAL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %48 = icmp ne %struct.TYPE_23__* %47, null
  br label %49

49:                                               ; preds = %46, %8
  %50 = phi i1 [ true, %8 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  store i32 0, i32* %18, align 4
  br label %53

53:                                               ; preds = %147, %49
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %150

57:                                               ; preds = %53
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %60, i64 %62
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %63, align 8
  store %struct.TYPE_23__* %64, %struct.TYPE_23__** %23, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %66 = call %struct.TYPE_24__* @copy_pathtarget(%struct.TYPE_24__* %65)
  store %struct.TYPE_24__* %66, %struct.TYPE_24__** %24, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %68 = icmp eq %struct.TYPE_23__* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %57
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %71 = call i64 @IS_DUMMY_REL(%struct.TYPE_23__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %57
  br label %147

74:                                               ; preds = %69
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %76 = call i32 @memcpy(%struct.TYPE_25__* %27, %struct.TYPE_25__* %75, i32 32)
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32** @find_appinfos_by_relids(i32* %77, i32 %80, i32* %26)
  store i32** %81, i32*** %25, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %26, align 4
  %87 = load i32**, i32*** %25, align 8
  %88 = call i64 @adjust_appendrel_attrs(i32* %82, i32* %85, i32 %86, i32** %87)
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  store i32* %89, i32** %91, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %26, align 4
  %97 = load i32**, i32*** %25, align 8
  %98 = call i64 @adjust_appendrel_attrs(i32* %92, i32* %95, i32 %96, i32** %97)
  %99 = inttoptr i64 %98 to i32*
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  store i32* %99, i32** %100, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %26, align 4
  %106 = load i32**, i32*** %25, align 8
  %107 = call i64 @adjust_appendrel_attrs(i32* %101, i32* %104, i32 %105, i32** %106)
  %108 = inttoptr i64 %107 to i32*
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 3
  store i32* %108, i32** %109, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 2
  store i64 %110, i64* %111, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call %struct.TYPE_23__* @make_grouping_rel(i32* %112, %struct.TYPE_23__* %113, %struct.TYPE_24__* %114, i32 %117, i32* %119)
  store %struct.TYPE_23__* %120, %struct.TYPE_23__** %28, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = call i32 @create_ordinary_grouping_paths(i32* %121, %struct.TYPE_23__* %122, %struct.TYPE_23__* %123, i32* %124, i32* %125, %struct.TYPE_25__* %27, %struct.TYPE_23__** %29)
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %128 = icmp ne %struct.TYPE_23__* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %74
  %130 = load i32*, i32** %20, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %132 = call i32* @lappend(i32* %130, %struct.TYPE_23__* %131)
  store i32* %132, i32** %20, align 8
  br label %134

133:                                              ; preds = %74
  store i32 0, i32* %22, align 4
  br label %134

134:                                              ; preds = %133, %129
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* @PARTITIONWISE_AGGREGATE_FULL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %140 = call i32 @set_cheapest(%struct.TYPE_23__* %139)
  %141 = load i32*, i32** %19, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %143 = call i32* @lappend(i32* %141, %struct.TYPE_23__* %142)
  store i32* %143, i32** %19, align 8
  br label %144

144:                                              ; preds = %138, %134
  %145 = load i32**, i32*** %25, align 8
  %146 = call i32 @pfree(i32** %145)
  br label %147

147:                                              ; preds = %144, %73
  %148 = load i32, i32* %18, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %18, align 4
  br label %53

150:                                              ; preds = %53
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %152 = icmp ne %struct.TYPE_23__* %151, null
  br i1 %152, label %153, label %174

153:                                              ; preds = %150
  %154 = load i32, i32* %22, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %174

156:                                              ; preds = %153
  %157 = load i32*, i32** %20, align 8
  %158 = load i32*, i32** @NIL, align 8
  %159 = icmp ne i32* %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @Assert(i32 %160)
  %162 = load i32*, i32** %9, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %164 = load i32*, i32** %20, align 8
  %165 = call i32 @add_paths_to_append_rel(i32* %162, %struct.TYPE_23__* %163, i32* %164)
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %156
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %172 = call i32 @set_cheapest(%struct.TYPE_23__* %171)
  br label %173

173:                                              ; preds = %170, %156
  br label %174

174:                                              ; preds = %173, %153, %150
  %175 = load i64, i64* %15, align 8
  %176 = load i64, i64* @PARTITIONWISE_AGGREGATE_FULL, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %174
  %179 = load i32*, i32** %19, align 8
  %180 = load i32*, i32** @NIL, align 8
  %181 = icmp ne i32* %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @Assert(i32 %182)
  %184 = load i32*, i32** %9, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %186 = load i32*, i32** %19, align 8
  %187 = call i32 @add_paths_to_append_rel(i32* %184, %struct.TYPE_23__* %185, i32* %186)
  br label %188

188:                                              ; preds = %178, %174
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_24__* @copy_pathtarget(%struct.TYPE_24__*) #1

declare dso_local i64 @IS_DUMMY_REL(%struct.TYPE_23__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32** @find_appinfos_by_relids(i32*, i32, i32*) #1

declare dso_local i64 @adjust_appendrel_attrs(i32*, i32*, i32, i32**) #1

declare dso_local %struct.TYPE_23__* @make_grouping_rel(i32*, %struct.TYPE_23__*, %struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @create_ordinary_grouping_paths(i32*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32*, i32*, %struct.TYPE_25__*, %struct.TYPE_23__**) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @set_cheapest(%struct.TYPE_23__*) #1

declare dso_local i32 @pfree(i32**) #1

declare dso_local i32 @add_paths_to_append_rel(i32*, %struct.TYPE_23__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
