; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_plancache.c_GetCachedPlan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_plancache.c_GetCachedPlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i64, i64, i32, i64, i32, %struct.TYPE_14__* }

@CACHEDPLANSOURCE_MAGIC = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"cannot apply ResourceOwner to non-saved cached plan\00", align 1
@CACHEDPLAN_MAGIC = common dso_local global i64 0, align 8
@CacheMemoryContext = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@INT_MAX = common dso_local global i64 0, align 8
@CurrentResourceOwner = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @GetCachedPlan(%struct.TYPE_13__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CACHEDPLANSOURCE_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25, %4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @RevalidateCachedQuery(%struct.TYPE_13__* %34, i32* %35)
  store i32* %36, i32** %10, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @choose_custom_plan(%struct.TYPE_13__* %37, i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %102, label %42

42:                                               ; preds = %33
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = call i64 @CheckCachedPlan(%struct.TYPE_13__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 7
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %9, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CACHEDPLAN_MAGIC, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  br label %101

57:                                               ; preds = %42
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call %struct.TYPE_14__* @BuildCachedPlan(%struct.TYPE_13__* %58, i32* %59, i32* null, i32* %60)
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %9, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = call i32 @ReleaseGenericPlan(%struct.TYPE_13__* %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 7
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %57
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CacheMemoryContext, align 4
  %80 = call i32 @MemoryContextSetParent(i32 %78, i32 %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  br label %92

83:                                               ; preds = %57
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @MemoryContextGetParent(i32 %89)
  %91 = call i32 @MemoryContextSetParent(i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %83, %75
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %94 = call i64 @cached_plan_cost(%struct.TYPE_14__* %93, i32 0)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 5
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @choose_custom_plan(%struct.TYPE_13__* %97, i32* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32*, i32** @NIL, align 8
  store i32* %100, i32** %10, align 8
  br label %101

101:                                              ; preds = %92, %46
  br label %102

102:                                              ; preds = %101, %33
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %102
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = call %struct.TYPE_14__* @BuildCachedPlan(%struct.TYPE_13__* %106, i32* %107, i32* %108, i32* %109)
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %9, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @INT_MAX, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %105
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %118 = call i64 @cached_plan_cost(%struct.TYPE_14__* %117, i32 1)
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %116, %105
  br label %130

130:                                              ; preds = %129, %102
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %132 = icmp ne %struct.TYPE_14__* %131, null
  %133 = zext i1 %132 to i32
  %134 = call i32 @Assert(i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load i32, i32* @CurrentResourceOwner, align 4
  %139 = call i32 @ResourceOwnerEnlargePlanCacheRefs(i32 %138)
  br label %140

140:                                              ; preds = %137, %130
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i32, i32* @CurrentResourceOwner, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %150 = call i32 @ResourceOwnerRememberPlanCacheRef(i32 %148, %struct.TYPE_14__* %149)
  br label %151

151:                                              ; preds = %147, %140
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @CacheMemoryContext, align 4
  %164 = call i32 @MemoryContextSetParent(i32 %162, i32 %163)
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  store i32 1, i32* %166, align 8
  br label %167

167:                                              ; preds = %159, %154, %151
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  ret %struct.TYPE_14__* %168
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32* @RevalidateCachedQuery(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @choose_custom_plan(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @CheckCachedPlan(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @BuildCachedPlan(%struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32 @ReleaseGenericPlan(%struct.TYPE_13__*) #1

declare dso_local i32 @MemoryContextSetParent(i32, i32) #1

declare dso_local i32 @MemoryContextGetParent(i32) #1

declare dso_local i64 @cached_plan_cost(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ResourceOwnerEnlargePlanCacheRefs(i32) #1

declare dso_local i32 @ResourceOwnerRememberPlanCacheRef(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
