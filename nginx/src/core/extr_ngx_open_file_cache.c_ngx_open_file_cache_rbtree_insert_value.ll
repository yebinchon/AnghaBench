; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_open_file_cache.c_ngx_open_file_cache_rbtree_insert_value.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_open_file_cache.c_ngx_open_file_cache_rbtree_insert_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*)* @ngx_open_file_cache_rbtree_insert_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_open_file_cache_rbtree_insert_value(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  br label %10

10:                                               ; preds = %60, %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store %struct.TYPE_7__** %20, %struct.TYPE_7__*** %7, align 8
  br label %54

21:                                               ; preds = %10
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store %struct.TYPE_7__** %31, %struct.TYPE_7__*** %7, align 8
  br label %53

32:                                               ; preds = %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = bitcast %struct.TYPE_7__* %33 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %8, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = bitcast %struct.TYPE_7__* %35 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %9, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ngx_strcmp(i32 %39, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  br label %51

48:                                               ; preds = %32
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi %struct.TYPE_7__** [ %47, %45 ], [ %50, %48 ]
  store %struct.TYPE_7__** %52, %struct.TYPE_7__*** %7, align 8
  br label %53

53:                                               ; preds = %51, %29
  br label %54

54:                                               ; preds = %53, %18
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = icmp eq %struct.TYPE_7__* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %63

60:                                               ; preds = %54
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %4, align 8
  br label %10

63:                                               ; preds = %59
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = call i32 @ngx_rbt_red(%struct.TYPE_7__* %75)
  ret void
}

declare dso_local i64 @ngx_strcmp(i32, i32) #1

declare dso_local i32 @ngx_rbt_red(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
