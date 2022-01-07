; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_radix_tree.c_ngx_radix32tree_insert.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_radix_tree.c_ngx_radix32tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }

@NGX_RADIX_NO_VALUE = common dso_local global i64 0, align 8
@NGX_BUSY = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_radix32tree_insert(%struct.TYPE_6__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 -2147483648, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %11, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %12, align 8
  br label %19

19:                                               ; preds = %41, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %12, align 8
  br label %37

33:                                               ; preds = %24
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %12, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %39 = icmp eq %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %11, align 8
  br label %19

45:                                               ; preds = %40, %19
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %47 = icmp ne %struct.TYPE_7__* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NGX_RADIX_NO_VALUE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @NGX_BUSY, align 4
  store i32 %55, i32* %5, align 4
  br label %106

56:                                               ; preds = %48
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @NGX_OK, align 4
  store i32 %60, i32* %5, align 4
  br label %106

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %97, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = call %struct.TYPE_7__* @ngx_radix_alloc(%struct.TYPE_6__* %68)
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %12, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %71 = icmp eq %struct.TYPE_7__* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @NGX_ERROR, align 4
  store i32 %73, i32* %5, align 4
  br label %106

74:                                               ; preds = %67
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %81, align 8
  %82 = load i64, i64* @NGX_RADIX_NO_VALUE, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %74
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %92, align 8
  br label %97

93:                                               ; preds = %74
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %96, align 8
  br label %97

97:                                               ; preds = %93, %89
  %98 = load i32, i32* %10, align 4
  %99 = ashr i32 %98, 1
  store i32 %99, i32* %10, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %11, align 8
  br label %62

101:                                              ; preds = %62
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* @NGX_OK, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %101, %72, %56, %54
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_7__* @ngx_radix_alloc(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
