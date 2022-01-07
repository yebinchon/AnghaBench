; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_list.h_list_add_tail.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_list.h_list_add_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_node }
%struct.list_node = type { %struct.list_node*, %struct.list_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.list_node*)* @list_add_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_add_tail(%struct.list_head* %0, %struct.list_node* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_node*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.list_node* %1, %struct.list_node** %4, align 8
  %5 = load %struct.list_head*, %struct.list_head** %3, align 8
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 0
  %7 = load %struct.list_node*, %struct.list_node** %4, align 8
  %8 = getelementptr inbounds %struct.list_node, %struct.list_node* %7, i32 0, i32 1
  store %struct.list_node* %6, %struct.list_node** %8, align 8
  %9 = load %struct.list_head*, %struct.list_head** %3, align 8
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.list_node, %struct.list_node* %10, i32 0, i32 0
  %12 = load %struct.list_node*, %struct.list_node** %11, align 8
  %13 = load %struct.list_node*, %struct.list_node** %4, align 8
  %14 = getelementptr inbounds %struct.list_node, %struct.list_node* %13, i32 0, i32 0
  store %struct.list_node* %12, %struct.list_node** %14, align 8
  %15 = load %struct.list_node*, %struct.list_node** %4, align 8
  %16 = load %struct.list_head*, %struct.list_head** %3, align 8
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.list_node, %struct.list_node* %17, i32 0, i32 0
  %19 = load %struct.list_node*, %struct.list_node** %18, align 8
  %20 = getelementptr inbounds %struct.list_node, %struct.list_node* %19, i32 0, i32 1
  store %struct.list_node* %15, %struct.list_node** %20, align 8
  %21 = load %struct.list_node*, %struct.list_node** %4, align 8
  %22 = load %struct.list_head*, %struct.list_head** %3, align 8
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.list_node, %struct.list_node* %23, i32 0, i32 0
  store %struct.list_node* %21, %struct.list_node** %24, align 8
  %25 = load %struct.list_head*, %struct.list_head** %3, align 8
  %26 = call i32 @list_debug(%struct.list_head* %25)
  ret void
}

declare dso_local i32 @list_debug(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
