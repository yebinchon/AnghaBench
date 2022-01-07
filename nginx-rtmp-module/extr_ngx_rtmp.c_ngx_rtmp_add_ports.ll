; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp.c_ngx_rtmp_add_ports.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp.c_ngx_rtmp_add_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sockaddr* }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_11__*)* @ngx_rtmp_add_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_add_ports(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 10
  %16 = bitcast i32* %15 to %struct.sockaddr*
  store %struct.sockaddr* %16, %struct.sockaddr** %10, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %20 [
  ]

20:                                               ; preds = %3
  %21 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %22, %struct.sockaddr_in** %11, align 8
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %12, align 8
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %59, %26
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %36
  %45 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %47, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i64 %56
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %12, align 8
  br label %90

58:                                               ; preds = %44, %36
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %30

62:                                               ; preds = %30
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = call i8* @ngx_array_push(%struct.TYPE_15__* %63)
  %65 = bitcast i8* %64 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %12, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %67 = icmp eq %struct.TYPE_12__* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i64, i64* @NGX_ERROR, align 8
  store i64 %69, i64* %4, align 8
  br label %136

70:                                               ; preds = %62
  %71 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %72 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ngx_array_init(%struct.TYPE_15__* %80, i32 %83, i32 2, i32 48)
  %85 = load i64, i64* @NGX_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i64, i64* @NGX_ERROR, align 8
  store i64 %88, i64* %4, align 8
  br label %136

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89, %54
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = call i8* @ngx_array_push(%struct.TYPE_15__* %92)
  %94 = bitcast i8* %93 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %94, %struct.TYPE_13__** %13, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %96 = icmp eq %struct.TYPE_13__* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i64, i64* @NGX_ERROR, align 8
  store i64 %98, i64* %4, align 8
  br label %136

99:                                               ; preds = %90
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 10
  %102 = bitcast i32* %101 to %struct.sockaddr*
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 10
  store %struct.sockaddr* %102, %struct.sockaddr** %104, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 9
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load i64, i64* @NGX_OK, align 8
  store i64 %135, i64* %4, align 8
  br label %136

136:                                              ; preds = %99, %97, %87, %68
  %137 = load i64, i64* %4, align 8
  ret i64 %137
}

declare dso_local i8* @ngx_array_push(%struct.TYPE_15__*) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_15__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
