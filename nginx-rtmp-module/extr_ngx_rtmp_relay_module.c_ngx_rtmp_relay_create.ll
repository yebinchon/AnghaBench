; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_create.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_15__*, i32, %struct.TYPE_15__*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__** }

@ngx_rtmp_relay_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, i32*, %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)*, %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)*)* @ngx_rtmp_relay_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_relay_create(i32* %0, %struct.TYPE_14__* %1, i32* %2, %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)* %3, %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)*, align 8
  %11 = alloca %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__**, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)* %3, %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)** %10, align 8
  store %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)* %4, %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @ngx_rtmp_relay_module, align 4
  %19 = call %struct.TYPE_16__* @ngx_rtmp_get_module_app_conf(i32* %17, i32 %18)
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %12, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %21 = icmp eq %struct.TYPE_16__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @NGX_ERROR, align 4
  store i32 %23, i32* %6, align 4
  br label %134

24:                                               ; preds = %5
  %25 = load %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)*, %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)** %11, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call %struct.TYPE_15__* %25(i32* %26, %struct.TYPE_14__* %27, i32* %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %14, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %31 = icmp eq %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @NGX_ERROR, align 4
  store i32 %33, i32* %6, align 4
  br label %134

34:                                               ; preds = %24
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ngx_hash_key(i32 %37, i32 %40)
  store i64 %41, i64* %16, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %43, align 8
  %45 = load i64, i64* %16, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = urem i64 %45, %48
  %50 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %44, i64 %49
  store %struct.TYPE_15__** %50, %struct.TYPE_15__*** %15, align 8
  br label %51

51:                                               ; preds = %81, %34
  %52 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = icmp ne %struct.TYPE_15__* %53, null
  br i1 %54, label %55, label %85

55:                                               ; preds = %51
  %56 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %55
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ngx_memcmp(i32 %68, i32 %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %65
  br label %85

80:                                               ; preds = %65, %55
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  store %struct.TYPE_15__** %84, %struct.TYPE_15__*** %15, align 8
  br label %51

85:                                               ; preds = %79, %51
  %86 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = icmp ne %struct.TYPE_15__* %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  %90 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %95, align 8
  %96 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 3
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %101, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %103 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %105, align 8
  %106 = load i32, i32* @NGX_OK, align 4
  store i32 %106, i32* %6, align 4
  br label %134

107:                                              ; preds = %85
  %108 = load %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)*, %struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*)** %10, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call %struct.TYPE_15__* %108(i32* %109, %struct.TYPE_14__* %110, i32* %111)
  store %struct.TYPE_15__* %112, %struct.TYPE_15__** %13, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %114 = icmp eq %struct.TYPE_15__* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ngx_rtmp_finalize_session(i32 %118)
  %120 = load i32, i32* @NGX_ERROR, align 4
  store i32 %120, i32* %6, align 4
  br label %134

121:                                              ; preds = %107
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %124, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %127, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  store %struct.TYPE_15__* %128, %struct.TYPE_15__** %130, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %132 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  store %struct.TYPE_15__* %131, %struct.TYPE_15__** %132, align 8
  %133 = load i32, i32* @NGX_OK, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %121, %115, %89, %32, %22
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local %struct.TYPE_16__* @ngx_rtmp_get_module_app_conf(i32*, i32) #1

declare dso_local i64 @ngx_hash_key(i32, i32) #1

declare dso_local i32 @ngx_memcmp(i32, i32, i32) #1

declare dso_local i32 @ngx_rtmp_finalize_session(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
