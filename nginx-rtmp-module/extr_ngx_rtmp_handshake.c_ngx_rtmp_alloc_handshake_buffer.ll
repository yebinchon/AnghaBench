; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handshake.c_ngx_rtmp_alloc_handshake_buffer.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handshake.c_ngx_rtmp_alloc_handshake_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32*, i32*, i32*, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_15__* }

@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"handshake: allocating buffer\00", align 1
@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_RTMP_HANDSHAKE_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_12__*)* @ngx_rtmp_alloc_handshake_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @ngx_rtmp_alloc_handshake_buffer(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ngx_log_debug0(i32 %7, i32 %12, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = load i32, i32* @ngx_rtmp_core_module, align 4
  %16 = call %struct.TYPE_13__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_12__* %14, i32 %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %4, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %5, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %6, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = call i32 @ngx_free_chain(i32 %35, %struct.TYPE_14__* %36)
  br label %72

38:                                               ; preds = %1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @ngx_pcalloc(i32 %41, i32 40)
  %43 = bitcast i8* %42 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %6, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = icmp eq %struct.TYPE_15__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %81

47:                                               ; preds = %38
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NGX_RTMP_HANDSHAKE_BUFSIZE, align 4
  %54 = call i8* @ngx_pcalloc(i32 %52, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %81

63:                                               ; preds = %47
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @NGX_RTMP_HANDSHAKE_BUFSIZE, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 4
  store i32* %69, i32** %71, align 8
  br label %72

72:                                               ; preds = %63, %21
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 3
  store i32* %75, i32** %79, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %2, align 8
  br label %81

81:                                               ; preds = %72, %62, %46
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %82
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_13__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_free_chain(i32, %struct.TYPE_14__*) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
