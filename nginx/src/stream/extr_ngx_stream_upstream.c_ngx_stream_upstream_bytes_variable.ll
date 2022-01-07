; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream.c_ngx_stream_upstream_bytes_variable.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream.c_ngx_stream_upstream_bytes_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i64 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_OFF_T_LEN = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_10__*, i64)* @ngx_stream_upstream_bytes_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_upstream_bytes_variable(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = icmp eq %struct.TYPE_9__* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22, %3
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @NGX_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %111

33:                                               ; preds = %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NGX_OFF_T_LEN, align 4
  %40 = add nsw i32 %39, 2
  %41 = mul nsw i32 %38, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %9, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i32* @ngx_pnalloc(i32 %47, i64 %48)
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32, i32* @NGX_ERROR, align 4
  store i32 %53, i32* %4, align 4
  br label %111

54:                                               ; preds = %33
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  store i32* %55, i32** %57, align 8
  store i64 0, i64* %10, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %11, align 8
  br label %63

63:                                               ; preds = %93, %54
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %64, 1
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32*, i32** %8, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @ngx_sprintf(i32* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32* %73, i32** %8, align 8
  br label %82

74:                                               ; preds = %63
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32* @ngx_sprintf(i32* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %80)
  store i32* %81, i32** %8, align 8
  br label %82

82:                                               ; preds = %74, %66
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %10, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = icmp eq i64 %84, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %98

93:                                               ; preds = %82
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %8, align 8
  store i32 44, i32* %94, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %8, align 8
  store i32 32, i32* %96, align 4
  br label %63

98:                                               ; preds = %92
  %99 = load i32*, i32** %8, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = ptrtoint i32* %99 to i64
  %104 = ptrtoint i32* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sdiv exact i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @NGX_OK, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %98, %52, %29
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
