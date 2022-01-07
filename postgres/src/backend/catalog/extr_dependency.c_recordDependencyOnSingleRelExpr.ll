; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_dependency.c_recordDependencyOnSingleRelExpr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_dependency.c_recordDependencyOnSingleRelExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32, i32, i64, i32, i32 }

@T_RangeTblEntry = common dso_local global i32 0, align 4
@RTE_RELATION = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recordDependencyOnSingleRelExpr(%struct.TYPE_21__* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = call i8* (...) @new_object_addresses()
  %23 = bitcast i8* %22 to %struct.TYPE_20__*
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %24, align 8
  %25 = call i32 @MemSet(%struct.TYPE_19__* %14, i32 0, i32 24)
  %26 = load i32, i32* @T_RangeTblEntry, align 4
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @RTE_RELATION, align 4
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* @RELKIND_RELATION, align 4
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @AccessShareLock, align 4
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = call %struct.TYPE_19__* @list_make1(%struct.TYPE_19__* %14)
  %37 = call %struct.TYPE_19__* @list_make1(%struct.TYPE_19__* %36)
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %38, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @find_expr_references_walker(i32* %39, %struct.TYPE_18__* %13)
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  %43 = call i32 @eliminate_duplicate_dependencies(%struct.TYPE_20__* %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %6
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %152

50:                                               ; preds = %47, %6
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %152

56:                                               ; preds = %50
  %57 = call i8* (...) @new_object_addresses()
  %58 = bitcast i8* %57 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  store %struct.TYPE_21__* %62, %struct.TYPE_21__** %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %63

63:                                               ; preds = %104, %56
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %65, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i64 %77
  store %struct.TYPE_21__* %78, %struct.TYPE_21__** %19, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RelationRelationId, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %71
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %93 = call i32 @add_exact_object_address(%struct.TYPE_21__* %91, %struct.TYPE_20__* %92)
  br label %103

94:                                               ; preds = %84, %71
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %97 = bitcast %struct.TYPE_21__* %95 to i8*
  %98 = bitcast %struct.TYPE_21__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 16, i1 false)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 1
  store %struct.TYPE_21__* %100, %struct.TYPE_21__** %16, align 8
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %94, %90
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %17, align 4
  br label %63

107:                                              ; preds = %63
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %107
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %118, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @recordMultipleDependencies(%struct.TYPE_21__* %116, %struct.TYPE_21__* %119, i32 %123, i32 %124)
  br label %149

126:                                              ; preds = %107
  store i32 0, i32* %20, align 4
  br label %127

127:                                              ; preds = %145, %126
  %128 = load i32, i32* %20, align 4
  %129 = sext i32 %128 to i64
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %129, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %127
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = load i32, i32* %20, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i64 %139
  store %struct.TYPE_21__* %140, %struct.TYPE_21__** %21, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @recordDependencyOn(%struct.TYPE_21__* %141, %struct.TYPE_21__* %142, i32 %143)
  br label %145

145:                                              ; preds = %134
  %146 = load i32, i32* %20, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %20, align 4
  br label %127

148:                                              ; preds = %127
  br label %149

149:                                              ; preds = %148, %115
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %151 = call i32 @free_object_addresses(%struct.TYPE_20__* %150)
  br label %152

152:                                              ; preds = %149, %50, %47
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @recordMultipleDependencies(%struct.TYPE_21__* %153, %struct.TYPE_21__* %157, i32 %162, i32 %163)
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  %167 = call i32 @free_object_addresses(%struct.TYPE_20__* %166)
  ret void
}

declare dso_local i8* @new_object_addresses(...) #1

declare dso_local i32 @MemSet(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_19__* @list_make1(%struct.TYPE_19__*) #1

declare dso_local i32 @find_expr_references_walker(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @eliminate_duplicate_dependencies(%struct.TYPE_20__*) #1

declare dso_local i32 @add_exact_object_address(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @recordMultipleDependencies(%struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @recordDependencyOn(%struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @free_object_addresses(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
