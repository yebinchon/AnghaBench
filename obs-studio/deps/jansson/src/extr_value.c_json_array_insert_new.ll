; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_array_insert_new.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_array_insert_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_insert_new(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32**, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %93

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @json_is_array(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %13
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @json_decref(i32* %22)
  store i32 -1, i32* %4, align 4
  br label %93

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.TYPE_5__* @json_to_array(i32* %25)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @json_decref(i32* %33)
  store i32 -1, i32* %4, align 4
  br label %93

35:                                               ; preds = %24
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = call i32** @json_array_grow(%struct.TYPE_5__* %36, i32 1, i32 0)
  store i32** %37, i32*** %9, align 8
  %38 = load i32**, i32*** %9, align 8
  %39 = icmp ne i32** %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @json_decref(i32* %41)
  store i32 -1, i32* %4, align 4
  br label %93

43:                                               ; preds = %35
  %44 = load i32**, i32*** %9, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = icmp ne i32** %44, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32**, i32*** %9, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @array_copy(i32** %52, i64 0, i32** %53, i64 0, i64 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32**, i32*** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  %61 = load i32**, i32*** %9, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = sub i64 %65, %66
  %68 = call i32 @array_copy(i32** %58, i64 %60, i32** %61, i64 %62, i64 %67)
  %69 = load i32**, i32*** %9, align 8
  %70 = call i32 @jsonp_free(i32** %69)
  br label %82

71:                                               ; preds = %43
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = sub i64 %78, %79
  %81 = call i32 @array_move(%struct.TYPE_5__* %72, i64 %74, i64 %75, i64 %80)
  br label %82

82:                                               ; preds = %71, %49
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32**, i32*** %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  store i32* %83, i32** %88, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %82, %40, %32, %21, %12
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @json_is_array(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local %struct.TYPE_5__* @json_to_array(i32*) #1

declare dso_local i32** @json_array_grow(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @array_copy(i32**, i64, i32**, i64, i64) #1

declare dso_local i32 @jsonp_free(i32**) #1

declare dso_local i32 @array_move(%struct.TYPE_5__*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
