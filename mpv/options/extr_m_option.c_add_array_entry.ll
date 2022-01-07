; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_add_array_entry.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_add_array_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mpv_node_list* }
%struct.mpv_node_list = type { i32, %struct.mpv_node* }

@MPV_FORMAT_NODE_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mpv_node* (%struct.mpv_node*)* @add_array_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mpv_node* @add_array_entry(%struct.mpv_node* %0) #0 {
  %2 = alloca %struct.mpv_node*, align 8
  %3 = alloca %struct.mpv_node_list*, align 8
  store %struct.mpv_node* %0, %struct.mpv_node** %2, align 8
  %4 = load %struct.mpv_node*, %struct.mpv_node** %2, align 8
  %5 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.mpv_node_list*, %struct.mpv_node_list** %6, align 8
  store %struct.mpv_node_list* %7, %struct.mpv_node_list** %3, align 8
  %8 = load %struct.mpv_node*, %struct.mpv_node** %2, align 8
  %9 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MPV_FORMAT_NODE_ARRAY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.mpv_node*, %struct.mpv_node** %2, align 8
  %15 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mpv_node_list*, %struct.mpv_node_list** %16, align 8
  %18 = icmp ne %struct.mpv_node_list* %17, null
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ false, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.mpv_node_list*, %struct.mpv_node_list** %3, align 8
  %24 = load %struct.mpv_node_list*, %struct.mpv_node_list** %3, align 8
  %25 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %24, i32 0, i32 1
  %26 = load %struct.mpv_node*, %struct.mpv_node** %25, align 8
  %27 = load %struct.mpv_node_list*, %struct.mpv_node_list** %3, align 8
  %28 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @MP_TARRAY_GROW(%struct.mpv_node_list* %23, %struct.mpv_node* %26, i32 %29)
  %31 = load %struct.mpv_node_list*, %struct.mpv_node_list** %3, align 8
  %32 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %31, i32 0, i32 1
  %33 = load %struct.mpv_node*, %struct.mpv_node** %32, align 8
  %34 = load %struct.mpv_node_list*, %struct.mpv_node_list** %3, align 8
  %35 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %33, i64 %38
  ret %struct.mpv_node* %39
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_TARRAY_GROW(%struct.mpv_node_list*, %struct.mpv_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
