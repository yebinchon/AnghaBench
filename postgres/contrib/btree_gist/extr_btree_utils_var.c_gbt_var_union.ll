; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_union.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gbt_var_union(%struct.TYPE_11__* %0, i32* %1, i32 %2, %struct.TYPE_10__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 4, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @DatumGetPointer(i32 %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @gbt_var_key_readable(i32* %30)
  store i32 %31, i32* %15, align 4
  %32 = call i32* @gbt_var_key_copy(i32* %15)
  %33 = call i32 @PointerGetDatum(i32* %32)
  store i32 %33, i32* %14, align 4
  store i32 1, i32* %11, align 4
  br label %34

34:                                               ; preds = %54, %5
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @DatumGetPointer(i32 %46)
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %13, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @gbt_var_bin_union(i32* %14, i32* %49, i32 %50, %struct.TYPE_10__* %51, i32* %52)
  br label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %34

57:                                               ; preds = %34
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  store i32* null, i32** %17, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i64 @DatumGetPointer(i32 %63)
  %65 = inttoptr i64 %64 to i32*
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %67 = call i32 @gbt_var_node_cp_len(i32* %65, %struct.TYPE_10__* %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i64 @DatumGetPointer(i32 %68)
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = call i32* @gbt_var_node_truncate(i32* %70, i32 %72, %struct.TYPE_10__* %73)
  store i32* %74, i32** %17, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = call i32 @PointerGetDatum(i32* %75)
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %62, %57
  %78 = load i32, i32* %14, align 4
  %79 = call i64 @DatumGetPointer(i32 %78)
  %80 = inttoptr i64 %79 to i32*
  ret i32* %80
}

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @gbt_var_key_readable(i32*) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32* @gbt_var_key_copy(i32*) #1

declare dso_local i32 @gbt_var_bin_union(i32*, i32*, i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @gbt_var_node_cp_len(i32*, %struct.TYPE_10__*) #1

declare dso_local i32* @gbt_var_node_truncate(i32*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
