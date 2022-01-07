; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_netcall_module.c_ngx_rtmp_netcall_close.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_netcall_module.c_ngx_rtmp_netcall_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (i32*, i32, %struct.TYPE_14__*)*, %struct.TYPE_14__*, i32, %struct.TYPE_10__*, i32*, i32 (i32*, %struct.TYPE_14__*)*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }

@ngx_rtmp_netcall_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @ngx_rtmp_netcall_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_netcall_close(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %116

17:                                               ; preds = %1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %108, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @ngx_rtmp_netcall_module, align 4
  %30 = call %struct.TYPE_11__* @ngx_rtmp_get_module_ctx(i32* %28, i32 %29)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %7, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = icmp ne %struct.TYPE_14__* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %24
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 5
  %38 = load i32 (i32*, %struct.TYPE_14__*)*, i32 (i32*, %struct.TYPE_14__*)** %37, align 8
  %39 = icmp ne i32 (i32*, %struct.TYPE_14__*)* %38, null
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 5
  %43 = load i32 (i32*, %struct.TYPE_14__*)*, i32 (i32*, %struct.TYPE_14__*)** %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = call i32 %43(i32* %46, %struct.TYPE_14__* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %8, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %40, %35, %24
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store %struct.TYPE_10__** %65, %struct.TYPE_10__*** %4, align 8
  br label %66

66:                                               ; preds = %81, %63
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = icmp ne %struct.TYPE_10__* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = icmp eq %struct.TYPE_10__* %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %79, align 8
  br label %85

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  store %struct.TYPE_10__** %84, %struct.TYPE_10__*** %4, align 8
  br label %66

85:                                               ; preds = %75, %66
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64 (i32*, i32, %struct.TYPE_14__*)*, i64 (i32*, i32, %struct.TYPE_14__*)** %87, align 8
  %89 = icmp ne i64 (i32*, i32, %struct.TYPE_14__*)* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %85
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64 (i32*, i32, %struct.TYPE_14__*)*, i64 (i32*, i32, %struct.TYPE_14__*)** %92, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = call i64 %93(i32* %94, i32 %97, %struct.TYPE_14__* %100)
  %102 = load i64, i64* @NGX_OK, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %90
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @ngx_rtmp_finalize_session(i32* %105)
  br label %107

107:                                              ; preds = %104, %90, %85
  br label %108

108:                                              ; preds = %107, %17
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %5, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %113 = call i32 @ngx_close_connection(%struct.TYPE_12__* %112)
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @ngx_destroy_pool(i32* %114)
  br label %116

116:                                              ; preds = %108, %16
  ret void
}

declare dso_local %struct.TYPE_11__* @ngx_rtmp_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_finalize_session(i32*) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_12__*) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
