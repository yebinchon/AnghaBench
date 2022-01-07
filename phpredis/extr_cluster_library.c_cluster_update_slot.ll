; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_update_slot.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_update_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8*, i32, %struct.TYPE_10__**, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @cluster_update_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_update_slot(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %8, i64 %11
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %79

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = call i32 @CLUSTER_REDIR_CMP(%struct.TYPE_11__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %122

20:                                               ; preds = %15
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_10__* @cluster_find_node(%struct.TYPE_11__* %21, i8* %24, i32 %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %3, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = icmp ne %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %35, i64 %38
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %39, align 8
  br label %78

40:                                               ; preds = %20
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.TYPE_10__* @cluster_node_create(%struct.TYPE_11__* %41, i8* %44, i32 %47, i32 %50, i64 %53, i32 0)
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @snprintf(i8* %55, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %61)
  store i64 %62, i64* %5, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = call i32 @zend_hash_str_update_ptr(i32 %65, i8* %66, i64 %67, %struct.TYPE_10__* %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %73, i64 %76
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %77, align 8
  br label %78

78:                                               ; preds = %40, %31
  br label %114

79:                                               ; preds = %1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.TYPE_10__* @cluster_find_node(%struct.TYPE_11__* %80, i8* %83, i32 %86)
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %3, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = icmp ne %struct.TYPE_10__* %88, null
  br i1 %89, label %105, label %90

90:                                               ; preds = %79
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call %struct.TYPE_10__* @cluster_node_create(%struct.TYPE_11__* %91, i8* %94, i32 %97, i32 %100, i64 %103, i32 0)
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %3, align 8
  br label %105

105:                                              ; preds = %90, %79
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %109, i64 %112
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %113, align 8
  br label %114

114:                                              ; preds = %105, %78
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %114, %19
  ret void
}

declare dso_local i32 @CLUSTER_REDIR_CMP(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @cluster_find_node(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @cluster_node_create(%struct.TYPE_11__*, i8*, i32, i32, i64, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @zend_hash_str_update_ptr(i32, i8*, i64, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
