; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_udp.c_ngx_udp_rbtree_insert_value.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_udp.c_ngx_udp_rbtree_insert_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_udp_rbtree_insert_value(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__**, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  br label %13

13:                                               ; preds = %100, %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  store %struct.TYPE_11__** %23, %struct.TYPE_11__*** %10, align 8
  br label %94

24:                                               ; preds = %13
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  store %struct.TYPE_11__** %34, %struct.TYPE_11__*** %10, align 8
  br label %93

35:                                               ; preds = %24
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = bitcast %struct.TYPE_11__* %36 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %11, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %8, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = bitcast %struct.TYPE_11__* %41 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %12, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %9, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @ngx_cmp_sockaddr(i32 %48, i32 %51, i32 %54, i32 %57, i32 1)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %35
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @ngx_cmp_sockaddr(i32 %71, i32 %74, i32 %77, i32 %80, i32 1)
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %68, %61, %35
  %83 = load i64, i64* %7, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  br label %91

88:                                               ; preds = %82
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi %struct.TYPE_11__** [ %87, %85 ], [ %90, %88 ]
  store %struct.TYPE_11__** %92, %struct.TYPE_11__*** %10, align 8
  br label %93

93:                                               ; preds = %91, %32
  br label %94

94:                                               ; preds = %93, %21
  %95 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = icmp eq %struct.TYPE_11__* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %103

100:                                              ; preds = %94
  %101 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  store %struct.TYPE_11__* %102, %struct.TYPE_11__** %4, align 8
  br label %13

103:                                              ; preds = %99
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  store %struct.TYPE_11__* %104, %struct.TYPE_11__** %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = call i32 @ngx_rbt_red(%struct.TYPE_11__* %115)
  ret void
}

declare dso_local i64 @ngx_cmp_sockaddr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_rbt_red(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
