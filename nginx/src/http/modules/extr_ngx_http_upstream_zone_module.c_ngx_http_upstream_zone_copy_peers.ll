; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_upstream_zone_module.c_ngx_http_upstream_zone_copy_peers.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_upstream_zone_module.c_ngx_http_upstream_zone_copy_peers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_17__*, i32*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i32*, %struct.TYPE_15__*)* @ngx_http_upstream_zone_copy_peers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @ngx_http_upstream_zone_copy_peers(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__**, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @ngx_slab_alloc(i32* %11, i32 32)
  %13 = bitcast i8* %12 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %9, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %149

17:                                               ; preds = %2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = call i32 @ngx_memcpy(%struct.TYPE_16__* %18, %struct.TYPE_16__* %22, i32 32)
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @ngx_slab_alloc(i32* %24, i32 16)
  %26 = bitcast i8* %25 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %6, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = icmp eq %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %149

30:                                               ; preds = %17
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @ngx_slab_alloc(i32* %31, i32 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_16__*
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = icmp eq %struct.TYPE_16__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %149

46:                                               ; preds = %30
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ngx_memcpy(%struct.TYPE_16__* %49, %struct.TYPE_16__* %54, i32 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 3
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  store %struct.TYPE_17__** %75, %struct.TYPE_17__*** %8, align 8
  br label %76

76:                                               ; preds = %91, %46
  %77 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = icmp ne %struct.TYPE_17__* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %82 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = call %struct.TYPE_17__* @ngx_http_upstream_zone_copy_peer(%struct.TYPE_16__* %81, %struct.TYPE_17__* %83)
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %7, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %86 = icmp eq %struct.TYPE_17__* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %149

88:                                               ; preds = %80
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %90 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %90, align 8
  br label %91

91:                                               ; preds = %88
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  store %struct.TYPE_17__** %93, %struct.TYPE_17__*** %8, align 8
  br label %76

94:                                               ; preds = %76
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = icmp eq %struct.TYPE_16__* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %143

100:                                              ; preds = %94
  %101 = load i32*, i32** %4, align 8
  %102 = call i8* @ngx_slab_alloc(i32* %101, i32 32)
  %103 = bitcast i8* %102 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %10, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %105 = icmp eq %struct.TYPE_16__* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %149

107:                                              ; preds = %100
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = call i32 @ngx_memcpy(%struct.TYPE_16__* %108, %struct.TYPE_16__* %111, i32 32)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 3
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %115, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  store i32* %116, i32** %118, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  store %struct.TYPE_17__** %120, %struct.TYPE_17__*** %8, align 8
  br label %121

121:                                              ; preds = %136, %107
  %122 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = icmp ne %struct.TYPE_17__* %123, null
  br i1 %124, label %125, label %139

125:                                              ; preds = %121
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %127 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = call %struct.TYPE_17__* @ngx_http_upstream_zone_copy_peer(%struct.TYPE_16__* %126, %struct.TYPE_17__* %128)
  store %struct.TYPE_17__* %129, %struct.TYPE_17__** %7, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %131 = icmp eq %struct.TYPE_17__* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %149

133:                                              ; preds = %125
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %135 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  store %struct.TYPE_17__* %134, %struct.TYPE_17__** %135, align 8
  br label %136

136:                                              ; preds = %133
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  store %struct.TYPE_17__** %138, %struct.TYPE_17__*** %8, align 8
  br label %121

139:                                              ; preds = %121
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  store %struct.TYPE_16__* %140, %struct.TYPE_16__** %142, align 8
  br label %143

143:                                              ; preds = %139, %99
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  store %struct.TYPE_16__* %144, %struct.TYPE_16__** %147, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %148, %struct.TYPE_16__** %3, align 8
  br label %149

149:                                              ; preds = %143, %132, %106, %87, %45, %29, %16
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %150
}

declare dso_local i8* @ngx_slab_alloc(i32*, i32) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_http_upstream_zone_copy_peer(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
