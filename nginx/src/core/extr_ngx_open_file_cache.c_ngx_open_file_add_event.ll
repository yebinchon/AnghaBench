; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_open_file_cache.c_ngx_open_file_add_event.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_open_file_cache.c_ngx_open_file_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_12__*, i32, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64, i64, i32 }

@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_VNODE_EVENT = common dso_local global i32 0, align 4
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@ngx_open_file_cache_remove = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_14__* null, align 8
@NGX_VNODE_EVENT = common dso_local global i32 0, align 4
@NGX_ONESHOT_EVENT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*)* @ngx_open_file_add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_open_file_add_event(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* @ngx_event_flags, align 4
  %11 = load i32, i32* @NGX_USE_VNODE_EVENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NGX_INVALID_FILE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %24, %19, %14, %4
  br label %114

39:                                               ; preds = %30
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call %struct.TYPE_12__* @ngx_calloc(i32 4, i32* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %45, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = icmp eq %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %114

51:                                               ; preds = %39
  %52 = load i32*, i32** %8, align 8
  %53 = call %struct.TYPE_12__* @ngx_alloc(i32 40, i32* %52)
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %9, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = icmp eq %struct.TYPE_12__* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = call i32 @ngx_free(%struct.TYPE_12__* %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %62, align 8
  br label %114

63:                                               ; preds = %51
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 5
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %71, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 4
  store i32* %72, i32** %74, align 8
  %75 = load i32, i32* @ngx_open_file_cache_remove, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 3
  store i32 %75, i32* %79, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %84, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_cycle, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i32, i32* @NGX_VNODE_EVENT, align 4
  %96 = load i32, i32* @NGX_ONESHOT_EVENT, align 4
  %97 = call i64 @ngx_add_event(%struct.TYPE_12__* %94, i32 %95, i32 %96)
  %98 = load i64, i64* @NGX_OK, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %63
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = call i32 @ngx_free(%struct.TYPE_12__* %105)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = call i32 @ngx_free(%struct.TYPE_12__* %109)
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %112, align 8
  br label %114

113:                                              ; preds = %63
  br label %114

114:                                              ; preds = %113, %100, %56, %50, %38
  ret void
}

declare dso_local %struct.TYPE_12__* @ngx_calloc(i32, i32*) #1

declare dso_local %struct.TYPE_12__* @ngx_alloc(i32, i32*) #1

declare dso_local i32 @ngx_free(%struct.TYPE_12__*) #1

declare dso_local i64 @ngx_add_event(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
