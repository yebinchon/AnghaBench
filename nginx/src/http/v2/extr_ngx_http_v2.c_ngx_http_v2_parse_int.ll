; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_parse_int.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_V2_INT_OCTETS = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**, i32*, i32)* @ngx_http_v2_parse_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_v2_parse_int(%struct.TYPE_5__* %0, i32** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32**, i32*** %7, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %11, align 8
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @NGX_ERROR, align 4
  store i32 %33, i32* %5, align 4
  br label %133

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32**, i32*** %7, align 8
  store i32* %40, i32** %41, align 8
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %133

43:                                               ; preds = %4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = ptrtoint i32* %44 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  %50 = load i32, i32* @NGX_HTTP_V2_INT_OCTETS, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp sgt i64 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* @NGX_HTTP_V2_INT_OCTETS, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32* %57, i32** %8, align 8
  br label %58

58:                                               ; preds = %53, %43
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %105, %58
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ne i32* %60, %61
  br i1 %62, label %63, label %108

63:                                               ; preds = %59
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %11, align 8
  %66 = load i32, i32* %64, align 4
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = and i32 %67, 127
  %69 = load i32, i32* %14, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 128
  br i1 %74, label %75, label %104

75:                                               ; preds = %63
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ugt i64 %81, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %75
  %88 = load i32, i32* @NGX_ERROR, align 4
  store i32 %88, i32* %5, align 4
  br label %133

89:                                               ; preds = %75
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %99, %95
  store i64 %100, i64* %98, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32**, i32*** %7, align 8
  store i32* %101, i32** %102, align 8
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %5, align 4
  br label %133

104:                                              ; preds = %63
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 7
  store i32 %107, i32* %14, align 4
  br label %59

108:                                              ; preds = %59
  %109 = load i32*, i32** %8, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = ptrtoint i32* %109 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp uge i64 %114, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = load i32, i32* @NGX_ERROR, align 4
  store i32 %121, i32* %5, align 4
  br label %133

122:                                              ; preds = %108
  %123 = load i32*, i32** %8, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* @NGX_HTTP_V2_INT_OCTETS, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = icmp eq i32* %123, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %130, i32* %5, align 4
  br label %133

131:                                              ; preds = %122
  %132 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %131, %129, %120, %89, %87, %34, %32
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
