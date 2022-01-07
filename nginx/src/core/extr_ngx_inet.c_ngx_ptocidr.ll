; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_inet.c_ngx_ptocidr.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_inet.c_ngx_ptocidr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }

@INADDR_NONE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_ptocidr(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @ngx_strlchr(i32* %19, i32* %20, i8 signext 47)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32*, i32** %7, align 8
  br label %28

26:                                               ; preds = %2
  %27 = load i32*, i32** %8, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32* [ %25, %24 ], [ %27, %26 ]
  %30 = load i32*, i32** %6, align 8
  %31 = ptrtoint i32* %29 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  store i64 %34, i64* %9, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @ngx_inet_addr(i32* %35, i64 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @INADDR_NONE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %28
  %50 = load i32, i32* @AF_INET, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  %60 = load i64, i64* @NGX_OK, align 8
  store i64 %60, i64* %3, align 8
  br label %141

61:                                               ; preds = %49
  br label %64

62:                                               ; preds = %28
  %63 = load i64, i64* @NGX_ERROR, align 8
  store i64 %63, i64* %3, align 8
  br label %141

64:                                               ; preds = %61
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %7, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i64 @ngx_atoi(i32* %67, i32 %74)
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @NGX_ERROR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = load i64, i64* @NGX_ERROR, align 8
  store i64 %80, i64* %3, align 8
  br label %141

81:                                               ; preds = %64
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %85 [
  ]

85:                                               ; preds = %81
  %86 = load i64, i64* %10, align 8
  %87 = icmp sgt i64 %86, 32
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i64, i64* @NGX_ERROR, align 8
  store i64 %89, i64* %3, align 8
  br label %141

90:                                               ; preds = %85
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i64, i64* %10, align 8
  %95 = sub nsw i64 32, %94
  %96 = trunc i64 %95 to i32
  %97 = shl i32 -1, %96
  %98 = call i32 @htonl(i32 %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 4
  br label %108

103:                                              ; preds = %90
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %93
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %118, %123
  %125 = icmp eq i32 %113, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %108
  %127 = load i64, i64* @NGX_OK, align 8
  store i64 %127, i64* %3, align 8
  br label %141

128:                                              ; preds = %108
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, %133
  store i32 %139, i32* %137, align 8
  %140 = load i64, i64* @NGX_DONE, align 8
  store i64 %140, i64* %3, align 8
  br label %141

141:                                              ; preds = %128, %126, %88, %79, %62, %55
  %142 = load i64, i64* %3, align 8
  ret i64 %142
}

declare dso_local i32* @ngx_strlchr(i32*, i32*, i8 signext) #1

declare dso_local i32 @ngx_inet_addr(i32*, i64) #1

declare dso_local i64 @ngx_atoi(i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
