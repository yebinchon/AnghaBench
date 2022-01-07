; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolver_export.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolver_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.in6_addr*, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_15__ = type { %struct.sockaddr_in6, %struct.sockaddr_in }
%struct.sockaddr_in6 = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (i32*, %struct.TYPE_16__*, i32)* @ngx_resolver_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @ngx_resolver_export(i32* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.sockaddr_in*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 16
  %23 = trunc i64 %22 to i32
  %24 = call i8* @ngx_resolver_calloc(i32* %19, i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %15, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %27 = icmp eq %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %137

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 16
  %34 = trunc i64 %33 to i32
  %35 = call i8* @ngx_resolver_calloc(i32* %30, i32 %34)
  %36 = bitcast i8* %35 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %13, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %38 = icmp eq %struct.TYPE_15__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %42 = call i32 @ngx_resolver_free(i32* %40, %struct.TYPE_17__* %41)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %137

43:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = call i32 (...) @ngx_random()
  %48 = load i32, i32* %11, align 4
  %49 = srem i32 %47, %48
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32 [ %49, %46 ], [ 0, %50 ]
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %135

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = call i32 (...) @ngx_random()
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = srem i32 %61, %64
  br label %67

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %60
  %68 = phi i32 [ %65, %60 ], [ 0, %66 ]
  store i32 %68, i32* %10, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  br label %82

77:                                               ; preds = %67
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  br label %82

82:                                               ; preds = %77, %73
  %83 = phi i32* [ %76, %73 ], [ %81, %77 ]
  store i32* %83, i32** %12, align 8
  br label %84

84:                                               ; preds = %127, %82
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  store %struct.sockaddr_in* %89, %struct.sockaddr_in** %14, align 8
  %90 = load i32, i32* @AF_INET, align 4
  %91 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %100 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  %102 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %103 = bitcast %struct.sockaddr_in* %102 to %struct.sockaddr*
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  store %struct.sockaddr* %103, %struct.sockaddr** %108, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  store i32 8, i32* %114, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %84
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %118, %84
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %125, %119
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %84, label %134

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %51
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %136, %struct.TYPE_17__** %4, align 8
  br label %137

137:                                              ; preds = %135, %39, %28
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %138
}

declare dso_local i8* @ngx_resolver_calloc(i32*, i32) #1

declare dso_local i32 @ngx_resolver_free(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @ngx_random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
