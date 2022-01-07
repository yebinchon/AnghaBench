; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_sub_filter_module.c_ngx_http_sub_init_tables.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_sub_filter_module.c_ngx_http_sub_init_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64*, i64* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64* }

@ngx_http_sub_cmp_index = common dso_local global i32 0, align 4
@ngx_http_sub_cmp_matches = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i64)* @ngx_http_sub_init_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_sub_init_tables(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  store i64 1, i64* %8, align 8
  br label %23

23:                                               ; preds = %45, %3
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @ngx_min(i64 %28, i64 %34)
  %36 = ptrtoint i8* %35 to i64
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @ngx_max(i64 %37, i64 %43)
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %27
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %23

48:                                               ; preds = %23
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, 1
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* @ngx_http_sub_cmp_index, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* @ngx_http_sub_cmp_matches, align 4
  %63 = call i32 @ngx_sort(%struct.TYPE_9__* %60, i64 %61, i32 16, i32 %62)
  %64 = load i64, i64* %10, align 8
  %65 = call i8* @ngx_min(i64 %64, i64 255)
  %66 = ptrtoint i8* %65 to i64
  store i64 %66, i64* %10, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @ngx_memset(i64* %69, i64 %70, i32 256)
  store i64 0, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %72

72:                                               ; preds = %139, %48
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %142

76:                                               ; preds = %72
  store i64 0, i64* %9, align 8
  br label %77

77:                                               ; preds = %110, %76
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %113

81:                                               ; preds = %77
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %90, 1
  %92 = load i64, i64* %9, align 8
  %93 = sub i64 %91, %92
  %94 = getelementptr inbounds i64, i64* %87, i64 %93
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %7, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i8* @ngx_min(i64 %101, i64 %102)
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64 %104, i64* %109, align 8
  br label %110

110:                                              ; preds = %81
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %77

113:                                              ; preds = %77
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sub i64 %122, 1
  %124 = getelementptr inbounds i64, i64* %119, i64 %123
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %130, %113
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %7, align 8
  %129 = icmp ule i64 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* %12, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %12, align 8
  %137 = getelementptr inbounds i64, i64* %134, i64 %135
  store i64 %131, i64* %137, align 8
  br label %126

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %8, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %8, align 8
  br label %72

142:                                              ; preds = %72
  br label %143

143:                                              ; preds = %146, %142
  %144 = load i64, i64* %12, align 8
  %145 = icmp ult i64 %144, 257
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load i64, i64* %6, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* %12, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %12, align 8
  %153 = getelementptr inbounds i64, i64* %150, i64 %151
  store i64 %147, i64* %153, align 8
  br label %143

154:                                              ; preds = %143
  ret void
}

declare dso_local i8* @ngx_min(i64, i64) #1

declare dso_local i64 @ngx_max(i64, i64) #1

declare dso_local i32 @ngx_sort(%struct.TYPE_9__*, i64, i32, i32) #1

declare dso_local i32 @ngx_memset(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
