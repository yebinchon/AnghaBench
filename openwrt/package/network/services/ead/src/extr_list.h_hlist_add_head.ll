; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_list.h_hlist_add_head.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_list.h_hlist_add_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_node = type { %struct.hlist_node**, %struct.hlist_node* }
%struct.hlist_head = type { %struct.hlist_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hlist_node*, %struct.hlist_head*)* @hlist_add_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hlist_add_head(%struct.hlist_node* %0, %struct.hlist_head* %1) #0 {
  %3 = alloca %struct.hlist_node*, align 8
  %4 = alloca %struct.hlist_head*, align 8
  %5 = alloca %struct.hlist_node*, align 8
  store %struct.hlist_node* %0, %struct.hlist_node** %3, align 8
  store %struct.hlist_head* %1, %struct.hlist_head** %4, align 8
  %6 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  %7 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %6, i32 0, i32 0
  %8 = load %struct.hlist_node*, %struct.hlist_node** %7, align 8
  store %struct.hlist_node* %8, %struct.hlist_node** %5, align 8
  %9 = load %struct.hlist_node*, %struct.hlist_node** %5, align 8
  %10 = load %struct.hlist_node*, %struct.hlist_node** %3, align 8
  %11 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %10, i32 0, i32 1
  store %struct.hlist_node* %9, %struct.hlist_node** %11, align 8
  %12 = load %struct.hlist_node*, %struct.hlist_node** %5, align 8
  %13 = icmp ne %struct.hlist_node* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.hlist_node*, %struct.hlist_node** %3, align 8
  %16 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %15, i32 0, i32 1
  %17 = load %struct.hlist_node*, %struct.hlist_node** %5, align 8
  %18 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %17, i32 0, i32 0
  store %struct.hlist_node** %16, %struct.hlist_node*** %18, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.hlist_node*, %struct.hlist_node** %3, align 8
  %21 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  %22 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %21, i32 0, i32 0
  store %struct.hlist_node* %20, %struct.hlist_node** %22, align 8
  %23 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  %24 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %23, i32 0, i32 0
  %25 = load %struct.hlist_node*, %struct.hlist_node** %3, align 8
  %26 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %25, i32 0, i32 0
  store %struct.hlist_node** %24, %struct.hlist_node*** %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
