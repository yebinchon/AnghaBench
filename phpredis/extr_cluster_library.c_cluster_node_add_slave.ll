; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_node_add_slave.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_node_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@ht_free_slave = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cluster_node_add_slave(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = call i32 @ALLOC_HASHTABLE(%struct.TYPE_9__* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = load i32, i32* @ht_free_slave, align 4
  %19 = call i32 @zend_hash_init(%struct.TYPE_9__* %17, i32 0, i32* null, i32 %18, i32 0)
  store i32 1, i32* %5, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %10
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i32* @zend_hash_index_update_ptr(%struct.TYPE_9__* %29, i32 %30, %struct.TYPE_8__* %31)
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @ALLOC_HASHTABLE(%struct.TYPE_9__*) #1

declare dso_local i32 @zend_hash_init(%struct.TYPE_9__*, i32, i32*, i32, i32) #1

declare dso_local i32* @zend_hash_index_update_ptr(%struct.TYPE_9__*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
