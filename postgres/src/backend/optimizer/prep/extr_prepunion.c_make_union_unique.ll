; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/prep/extr_prepunion.c_make_union_unique.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/prep/extr_prepunion.c_make_union_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, i32 }

@UPPERREL_SETOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"UNION\00", align 1
@AGG_HASHED = common dso_local global i32 0, align 4
@AGGSPLIT_SIMPLE = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, %struct.TYPE_8__*, i32*, i32*)* @make_union_unique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @make_union_unique(i32* %0, %struct.TYPE_8__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* @UPPERREL_SETOP, align 4
  %14 = call i32* @fetch_upper_rel(i32* %12, i32 %13, i32* null)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @generate_setop_grouplist(i32* %15, i32* %16)
  store i32* %17, i32** %10, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  store double %20, double* %11, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = load double, double* %11, align 8
  %25 = load double, double* %11, align 8
  %26 = call i64 @choose_hashed_setop(i32* %21, i32* %22, %struct.TYPE_8__* %23, double %24, double %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @create_pathtarget(i32* %32, i32* %33)
  %35 = load i32, i32* @AGG_HASHED, align 4
  %36 = load i32, i32* @AGGSPLIT_SIMPLE, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* @NIL, align 4
  %39 = load double, double* %11, align 8
  %40 = call i64 @create_agg_path(i32* %29, i32* %30, %struct.TYPE_8__* %31, i32 %34, i32 %35, i32 %36, i32* %37, i32 %38, i32* null, double %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %6, align 8
  br label %66

42:                                               ; preds = %4
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @make_pathkeys_for_sortclauses(i32* %49, i32* %50, i32* %51)
  %53 = call i64 @create_sort_path(i32* %46, i32* %47, %struct.TYPE_8__* %48, i32 %52, double -1.000000e+00)
  %54 = inttoptr i64 %53 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %6, align 8
  br label %55

55:                                               ; preds = %45, %42
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @list_length(i32 %61)
  %63 = load double, double* %11, align 8
  %64 = call i64 @create_upper_unique_path(i32* %56, i32* %57, %struct.TYPE_8__* %58, i32 %62, double %63)
  %65 = inttoptr i64 %64 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %6, align 8
  br label %66

66:                                               ; preds = %55, %28
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %67
}

declare dso_local i32* @fetch_upper_rel(i32*, i32, i32*) #1

declare dso_local i32* @generate_setop_grouplist(i32*, i32*) #1

declare dso_local i64 @choose_hashed_setop(i32*, i32*, %struct.TYPE_8__*, double, double, i8*) #1

declare dso_local i64 @create_agg_path(i32*, i32*, %struct.TYPE_8__*, i32, i32, i32, i32*, i32, i32*, double) #1

declare dso_local i32 @create_pathtarget(i32*, i32*) #1

declare dso_local i64 @create_sort_path(i32*, i32*, %struct.TYPE_8__*, i32, double) #1

declare dso_local i32 @make_pathkeys_for_sortclauses(i32*, i32*, i32*) #1

declare dso_local i64 @create_upper_unique_path(i32*, i32*, %struct.TYPE_8__*, i32, double) #1

declare dso_local i32 @list_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
