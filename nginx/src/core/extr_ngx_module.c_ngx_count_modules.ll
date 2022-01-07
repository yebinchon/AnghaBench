; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_module.c_ngx_count_modules.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_module.c_ngx_count_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__** }
%struct.TYPE_6__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, i64 }

@NGX_MODULE_UNSET_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_count_modules(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %77, %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %12, i64 %13
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %80

17:                                               ; preds = %9
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %77

30:                                               ; preds = %17
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NGX_MODULE_UNSET_INDEX, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %52, %46
  br label %77

56:                                               ; preds = %30
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @ngx_module_ctx_index(%struct.TYPE_8__* %57, i64 %58, i64 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %68, %56
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %72, %55, %29
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %9

80:                                               ; preds = %9
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = icmp ne %struct.TYPE_6__* %83, null
  br i1 %84, label %85, label %133

85:                                               ; preds = %80
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %89, align 8
  %91 = icmp ne %struct.TYPE_7__** %90, null
  br i1 %91, label %92, label %133

92:                                               ; preds = %85
  store i64 0, i64* %5, align 8
  br label %93

93:                                               ; preds = %129, %92
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %98, i64 %99
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = icmp ne %struct.TYPE_7__* %101, null
  br i1 %102, label %103, label %132

103:                                              ; preds = %93
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %108, i64 %109
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %8, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %4, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %103
  br label %129

118:                                              ; preds = %103
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = icmp ugt i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %7, align 8
  br label %128

128:                                              ; preds = %124, %118
  br label %129

129:                                              ; preds = %128, %117
  %130 = load i64, i64* %5, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %5, align 8
  br label %93

132:                                              ; preds = %93
  br label %133

133:                                              ; preds = %132, %85, %80
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load i64, i64* %7, align 8
  %137 = add i64 %136, 1
  ret i64 %137
}

declare dso_local i64 @ngx_module_ctx_index(%struct.TYPE_8__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
