; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_list.h_list_append_list.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_list.h_list_append_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.list_node* }
%struct.list_node = type { %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.list_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.list_head*)* @list_append_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_append_list(%struct.list_head* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_node*, align 8
  %6 = alloca %struct.list_node*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load %struct.list_head*, %struct.list_head** %4, align 8
  %8 = call %struct.TYPE_6__* @list_debug(%struct.list_head* %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.list_node*, %struct.list_node** %10, align 8
  store %struct.list_node* %11, %struct.list_node** %5, align 8
  %12 = load %struct.list_head*, %struct.list_head** %3, align 8
  %13 = call %struct.TYPE_6__* @list_debug(%struct.list_head* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.list_node*, %struct.list_node** %15, align 8
  store %struct.list_node* %16, %struct.list_node** %6, align 8
  %17 = load %struct.list_node*, %struct.list_node** %5, align 8
  %18 = load %struct.list_head*, %struct.list_head** %3, align 8
  %19 = getelementptr inbounds %struct.list_head, %struct.list_head* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.list_node* %17, %struct.list_node** %20, align 8
  %21 = load %struct.list_head*, %struct.list_head** %3, align 8
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i32 0, i32 0
  %23 = load %struct.list_node*, %struct.list_node** %5, align 8
  %24 = getelementptr inbounds %struct.list_node, %struct.list_node* %23, i32 0, i32 0
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %24, align 8
  %25 = load %struct.list_head*, %struct.list_head** %4, align 8
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i32 0, i32 0
  %27 = load %struct.list_node*, %struct.list_node** %6, align 8
  %28 = getelementptr inbounds %struct.list_node, %struct.list_node* %27, i32 0, i32 0
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %28, align 8
  %29 = load %struct.list_node*, %struct.list_node** %6, align 8
  %30 = load %struct.list_head*, %struct.list_head** %4, align 8
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.list_node* %29, %struct.list_node** %32, align 8
  %33 = load %struct.list_head*, %struct.list_head** %4, align 8
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i32 0, i32 0
  %35 = call i32 @list_del(%struct.TYPE_5__* %34)
  %36 = load %struct.list_head*, %struct.list_head** %4, align 8
  %37 = call i32 @list_head_init(%struct.list_head* %36)
  ret void
}

declare dso_local %struct.TYPE_6__* @list_debug(%struct.list_head*) #1

declare dso_local i32 @list_del(%struct.TYPE_5__*) #1

declare dso_local i32 @list_head_init(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
