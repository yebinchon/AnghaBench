; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_compare_values_of_enum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_compare_values_of_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"enum value %u not found in cache for enum %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare_values_of_enum(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %107

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = call i32 @load_enum_cache_data(%struct.TYPE_6__* %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @enum_known_sorted(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @enum_known_sorted(i32* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %107

41:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %107

42:                                               ; preds = %31, %23
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.TYPE_7__* @find_enumitem(i32* %43, i32 %44)
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %9, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.TYPE_7__* @find_enumitem(i32* %46, i32 %47)
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %10, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = icmp eq %struct.TYPE_7__* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = icmp eq %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %88

54:                                               ; preds = %51, %42
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = call i32 @load_enum_cache_data(%struct.TYPE_6__* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call %struct.TYPE_7__* @find_enumitem(i32* %60, i32 %61)
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %9, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call %struct.TYPE_7__* @find_enumitem(i32* %63, i32 %64)
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %10, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = icmp eq %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %54
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @format_type_be(i32 %73)
  %75 = call i32 @elog(i32 %69, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %68, %54
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = icmp eq %struct.TYPE_7__* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @format_type_be(i32 %84)
  %86 = call i32 @elog(i32 %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %79, %76
  br label %88

88:                                               ; preds = %87, %51
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store i32 -1, i32* %4, align 4
  br label %107

97:                                               ; preds = %88
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i32 1, i32* %4, align 4
  br label %107

106:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %105, %96, %41, %40, %14
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @load_enum_cache_data(%struct.TYPE_6__*) #1

declare dso_local i64 @enum_known_sorted(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @find_enumitem(i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @format_type_be(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
