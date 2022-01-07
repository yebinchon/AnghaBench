; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_init_process.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_init_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_28__** }
%struct.TYPE_28__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { %struct.TYPE_26__** }
%struct.TYPE_26__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_26__** }
%struct.TYPE_20__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_24__* }
%struct.TYPE_19__ = type { i64 }

@ngx_rtmp_core_main_conf = common dso_local global %struct.TYPE_16__* null, align 8
@NGX_OK = common dso_local global i32 0, align 4
@ngx_process_slot = common dso_local global i64 0, align 8
@ngx_rtmp_relay_module = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@ngx_rtmp_init_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_rtmp_relay_init_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_relay_init_process(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_28__**, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_18__**, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %3, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_rtmp_core_main_conf, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %4, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = icmp eq %struct.TYPE_16__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %1
  %27 = load i32, i32* @NGX_OK, align 4
  store i32 %27, i32* %2, align 4
  br label %123

28:                                               ; preds = %20
  %29 = load i64, i64* @ngx_process_slot, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @NGX_OK, align 4
  store i32 %32, i32* %2, align 4
  br label %123

33:                                               ; preds = %28
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %36, align 8
  store %struct.TYPE_27__* %37, %struct.TYPE_27__** %14, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %40, align 8
  store %struct.TYPE_28__** %41, %struct.TYPE_28__*** %5, align 8
  store i64 0, i64* %10, align 8
  br label %42

42:                                               ; preds = %116, %33
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %43, %47
  br i1 %48, label %49, label %121

49:                                               ; preds = %42
  %50 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %5, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %50, align 8
  store %struct.TYPE_28__* %51, %struct.TYPE_28__** %6, align 8
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %54, align 8
  store %struct.TYPE_17__** %55, %struct.TYPE_17__*** %7, align 8
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %110, %49
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %57, %61
  br i1 %62, label %63, label %115

63:                                               ; preds = %56
  %64 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %8, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %67, align 8
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ngx_rtmp_relay_module, i32 0, i32 0), align 8
  %70 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %68, i64 %69
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %70, align 8
  store %struct.TYPE_26__* %71, %struct.TYPE_26__** %9, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %74, align 8
  store %struct.TYPE_18__** %75, %struct.TYPE_18__*** %15, align 8
  store i64 0, i64* %12, align 8
  br label %76

76:                                               ; preds = %104, %63
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %77, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %76
  %84 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %15, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  store %struct.TYPE_18__* %85, %struct.TYPE_18__** %16, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %87, align 8
  store %struct.TYPE_25__* %88, %struct.TYPE_25__** %13, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  %94 = bitcast %struct.TYPE_24__* %90 to i8*
  %95 = bitcast %struct.TYPE_24__* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 8, i1 false)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %97, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  store %struct.TYPE_26__** %98, %struct.TYPE_26__*** %101, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %103 = call i32 @ngx_post_event(%struct.TYPE_18__* %102, i32* @ngx_rtmp_init_queue)
  br label %104

104:                                              ; preds = %83
  %105 = load i64, i64* %12, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %12, align 8
  %107 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %107, i32 1
  store %struct.TYPE_18__** %108, %struct.TYPE_18__*** %15, align 8
  br label %76

109:                                              ; preds = %76
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %11, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %11, align 8
  %113 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %113, i32 1
  store %struct.TYPE_17__** %114, %struct.TYPE_17__*** %7, align 8
  br label %56

115:                                              ; preds = %56
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %10, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %10, align 8
  %119 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %119, i32 1
  store %struct.TYPE_28__** %120, %struct.TYPE_28__*** %5, align 8
  br label %42

121:                                              ; preds = %42
  %122 = load i32, i32* @NGX_OK, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %31, %26
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_18__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
