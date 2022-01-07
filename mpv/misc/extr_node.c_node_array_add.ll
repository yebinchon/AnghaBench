; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_node.c_node_array_add.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_node.c_node_array_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mpv_node_list* }
%struct.mpv_node_list = type { i64, %struct.mpv_node* }

@MPV_FORMAT_NODE_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpv_node* @node_array_add(%struct.mpv_node* %0, i32 %1) #0 {
  %3 = alloca %struct.mpv_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpv_node_list*, align 8
  store %struct.mpv_node* %0, %struct.mpv_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mpv_node*, %struct.mpv_node** %3, align 8
  %7 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mpv_node_list*, %struct.mpv_node_list** %8, align 8
  store %struct.mpv_node_list* %9, %struct.mpv_node_list** %5, align 8
  %10 = load %struct.mpv_node*, %struct.mpv_node** %3, align 8
  %11 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MPV_FORMAT_NODE_ARRAY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.mpv_node*, %struct.mpv_node** %3, align 8
  %17 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mpv_node_list*, %struct.mpv_node_list** %18, align 8
  %20 = icmp ne %struct.mpv_node_list* %19, null
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ false, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %26 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %27 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %26, i32 0, i32 1
  %28 = load %struct.mpv_node*, %struct.mpv_node** %27, align 8
  %29 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %30 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @MP_TARRAY_GROW(%struct.mpv_node_list* %25, %struct.mpv_node* %28, i64 %31)
  %33 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %34 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %33, i32 0, i32 1
  %35 = load %struct.mpv_node*, %struct.mpv_node** %34, align 8
  %36 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %37 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %35, i64 %38
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.mpv_node*, %struct.mpv_node** %3, align 8
  %42 = call i32 @node_init(%struct.mpv_node* %39, i32 %40, %struct.mpv_node* %41)
  %43 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %44 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %43, i32 0, i32 1
  %45 = load %struct.mpv_node*, %struct.mpv_node** %44, align 8
  %46 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %47 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %45, i64 %48
  ret %struct.mpv_node* %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_TARRAY_GROW(%struct.mpv_node_list*, %struct.mpv_node*, i64) #1

declare dso_local i32 @node_init(%struct.mpv_node*, i32, %struct.mpv_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
