; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_variables.c_ngx_http_variable_headers_internal.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_variables.c_ngx_http_variable_headers_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32*, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32* }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i64, i32)* @ngx_http_variable_headers_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_variable_headers_internal(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_9__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = bitcast %struct.TYPE_11__* %17 to i8*
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = bitcast i8* %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %15, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %26, align 8
  store %struct.TYPE_9__** %27, %struct.TYPE_9__*** %16, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %13, align 8
  br label %28

28:                                               ; preds = %52, %4
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %16, align 8
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %33, i64 %34
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %52

41:                                               ; preds = %32
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %16, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %42, i64 %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 2
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %41, %40
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %13, align 8
  br label %28

55:                                               ; preds = %28
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* @NGX_OK, align 4
  store i32 %61, i32* %5, align 4
  br label %150

62:                                               ; preds = %55
  %63 = load i64, i64* %10, align 8
  %64 = sub i64 %63, 2
  store i64 %64, i64* %10, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp eq i64 %71, 1
  br i1 %72, label %73, label %89

73:                                               ; preds = %62
  %74 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %16, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %16, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  store i32* %85, i32** %87, align 8
  %88 = load i32, i32* @NGX_OK, align 4
  store i32 %88, i32* %5, align 4
  br label %150

89:                                               ; preds = %62
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %10, align 8
  %94 = call i32* @ngx_pnalloc(i32 %92, i64 %93)
  store i32* %94, i32** %11, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @NGX_ERROR, align 4
  store i32 %98, i32* %5, align 4
  br label %150

99:                                               ; preds = %89
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 3
  store i32* %103, i32** %105, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %12, align 8
  store i64 0, i64* %13, align 8
  br label %109

109:                                              ; preds = %145, %99
  %110 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %16, align 8
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %110, i64 %111
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %145

118:                                              ; preds = %109
  %119 = load i32*, i32** %11, align 8
  %120 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %16, align 8
  %121 = load i64, i64* %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %120, i64 %121
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %16, align 8
  %128 = load i64, i64* %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %127, i64 %128
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32* @ngx_copy(i32* %119, i32* %126, i64 %133)
  store i32* %134, i32** %11, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = icmp eq i32* %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %118
  br label %148

139:                                              ; preds = %118
  %140 = load i32, i32* %9, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %11, align 8
  store i32 %140, i32* %141, align 4
  %143 = load i32*, i32** %11, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %11, align 8
  store i32 32, i32* %143, align 4
  br label %145

145:                                              ; preds = %139, %117
  %146 = load i64, i64* %13, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %13, align 8
  br label %109

148:                                              ; preds = %138
  %149 = load i32, i32* @NGX_OK, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %148, %97, %73, %58
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32* @ngx_copy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
