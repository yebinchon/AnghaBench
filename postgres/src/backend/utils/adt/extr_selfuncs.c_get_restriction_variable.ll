; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_get_restriction_variable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_get_restriction_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_restriction_variable(i32* %0, i32* %1, i32 %2, %struct.TYPE_5__* %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @list_length(i32* %17)
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %86

21:                                               ; preds = %6
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @linitial(i32* %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i64 @lsecond(i32* %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = call i32 @examine_variable(i32* %28, i32* %29, i32 %30, %struct.TYPE_5__* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @examine_variable(i32* %33, i32* %34, i32 %35, %struct.TYPE_5__* %16)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32*, i32** %13, align 8
  store i32 1, i32* %46, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32* @estimate_expression_value(i32* %47, i32 %49)
  %51 = load i32**, i32*** %12, align 8
  store i32* %50, i32** %51, align 8
  store i32 1, i32* %7, align 4
  br label %86

52:                                               ; preds = %41, %21
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32*, i32** %13, align 8
  store i32 0, i32* %62, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32* @estimate_expression_value(i32* %63, i32 %66)
  %68 = load i32**, i32*** %12, align 8
  store i32* %67, i32** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %70 = bitcast %struct.TYPE_5__* %69 to i8*
  %71 = bitcast %struct.TYPE_5__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  store i32 1, i32* %7, align 4
  br label %86

72:                                               ; preds = %57, %52
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %74 = bitcast %struct.TYPE_5__* %73 to { i32, i32* }*
  %75 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %74, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @ReleaseVariableStats(i32 %76, i32* %78)
  %80 = bitcast %struct.TYPE_5__* %16 to { i32, i32* }*
  %81 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %80, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @ReleaseVariableStats(i32 %82, i32* %84)
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %72, %61, %45, %20
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i64 @lsecond(i32*) #1

declare dso_local i32 @examine_variable(i32*, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32* @estimate_expression_value(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ReleaseVariableStats(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
