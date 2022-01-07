; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream.c_ngx_stream_add_ports.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream.c_ngx_stream_add_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_15__, i32 }
%struct.TYPE_11__ = type { i64, %struct.sockaddr* }
%struct.sockaddr = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_11__*)* @ngx_stream_add_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_add_ports(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  store %struct.sockaddr* %15, %struct.sockaddr** %10, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %17 = call i32 @ngx_inet_get_port(%struct.sockaddr* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %11, align 8
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %60, %3
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %28, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %27
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %35
  %46 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %48, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %57
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %11, align 8
  br label %96

59:                                               ; preds = %45, %35, %27
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %9, align 8
  br label %21

63:                                               ; preds = %21
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = call i8* @ngx_array_push(%struct.TYPE_15__* %64)
  %66 = bitcast i8* %65 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %11, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %68 = icmp eq %struct.TYPE_12__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i64, i64* @NGX_ERROR, align 8
  store i64 %70, i64* %4, align 8
  br label %112

71:                                               ; preds = %63
  %72 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %73 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @ngx_array_init(%struct.TYPE_15__* %86, i32 %89, i32 2, i32 16)
  %91 = load i64, i64* @NGX_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %71
  %94 = load i64, i64* @NGX_ERROR, align 8
  store i64 %94, i64* %4, align 8
  br label %112

95:                                               ; preds = %71
  br label %96

96:                                               ; preds = %95, %55
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = call i8* @ngx_array_push(%struct.TYPE_15__* %98)
  %100 = bitcast i8* %99 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %12, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %102 = icmp eq %struct.TYPE_13__* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i64, i64* @NGX_ERROR, align 8
  store i64 %104, i64* %4, align 8
  br label %112

105:                                              ; preds = %96
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = bitcast %struct.TYPE_11__* %107 to i8*
  %110 = bitcast %struct.TYPE_11__* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 16, i1 false)
  %111 = load i64, i64* @NGX_OK, align 8
  store i64 %111, i64* %4, align 8
  br label %112

112:                                              ; preds = %105, %103, %93, %69
  %113 = load i64, i64* %4, align 8
  ret i64 %113
}

declare dso_local i32 @ngx_inet_get_port(%struct.sockaddr*) #1

declare dso_local i8* @ngx_array_push(%struct.TYPE_15__*) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_15__*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
