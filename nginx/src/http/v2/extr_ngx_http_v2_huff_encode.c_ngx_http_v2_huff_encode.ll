; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_huff_encode.c_ngx_http_v2_huff_encode.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_huff_encode.c_ngx_http_v2_huff_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@ngx_http_v2_huff_encode_table_lc = common dso_local global %struct.TYPE_4__* null, align 8
@ngx_http_v2_huff_encode_table = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_v2_huff_encode(i64* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ngx_http_v2_huff_encode_table_lc, align 8
  br label %23

21:                                               ; preds = %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ngx_http_v2_huff_encode_table, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi %struct.TYPE_4__* [ %20, %19 ], [ %22, %21 ]
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %15, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64* %27, i64** %10, align 8
  br label %28

28:                                               ; preds = %93, %51, %23
  %29 = load i64*, i64** %6, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = icmp ne i64* %29, %30
  br i1 %31, label %32, label %95

32:                                               ; preds = %28
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %6, align 8
  %36 = load i64, i64* %34, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %36
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %16, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %14, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 32
  br i1 %50, label %51, label %60

51:                                               ; preds = %32
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 32, %54
  %56 = trunc i64 %55 to i32
  %57 = shl i32 %52, %56
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %28

60:                                               ; preds = %32
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 4
  %63 = load i64, i64* %7, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i64 0, i64* %5, align 8
  br label %138

66:                                               ; preds = %60
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 %68, 32
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %13, align 4
  %73 = ashr i32 %71, %72
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %12, align 4
  %76 = load i64*, i64** %8, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @ngx_http_v2_huff_encode_buf(i64* %78, i32 %79)
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %11, align 8
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %66
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 32, %88
  %90 = trunc i64 %89 to i32
  %91 = shl i32 %86, %90
  br label %93

92:                                               ; preds = %66
  br label %93

93:                                               ; preds = %92, %85
  %94 = phi i32 [ %91, %85 ], [ 0, %92 ]
  store i32 %94, i32* %12, align 4
  br label %28

95:                                               ; preds = %28
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i64, i64* %11, align 8
  store i64 %99, i64* %5, align 8
  br label %138

100:                                              ; preds = %95
  %101 = load i32, i32* %13, align 4
  %102 = ashr i32 -1, %101
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ngx_align(i32 %105, i32 8)
  store i32 %106, i32* %13, align 4
  %107 = load i64, i64* %11, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sdiv i32 %108, 8
  %110 = sext i32 %109 to i64
  %111 = add i64 %107, %110
  %112 = load i64, i64* %7, align 8
  %113 = icmp uge i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  store i64 0, i64* %5, align 8
  br label %138

115:                                              ; preds = %100
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 32, %117
  %119 = load i32, i32* %12, align 4
  %120 = trunc i64 %118 to i32
  %121 = ashr i32 %119, %120
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %133, %115
  %123 = load i32, i32* %13, align 4
  %124 = sub nsw i32 %123, 8
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = ashr i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = load i64*, i64** %8, align 8
  %130 = load i64, i64* %11, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %11, align 8
  %132 = getelementptr inbounds i64, i64* %129, i64 %130
  store i64 %128, i64* %132, align 8
  br label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %122, label %136

136:                                              ; preds = %133
  %137 = load i64, i64* %11, align 8
  store i64 %137, i64* %5, align 8
  br label %138

138:                                              ; preds = %136, %114, %98, %65
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local i32 @ngx_http_v2_huff_encode_buf(i64*, i32) #1

declare dso_local i32 @ngx_align(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
