; ModuleID = '/home/carl/AnghaBench/nuklear/demo/extr_node_editor.c_node_editor_link.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/extr_node_editor.c_node_editor_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_editor = type { i64, %struct.node_link* }
%struct.node_link = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node_editor*, i32, i32, i32, i32)* @node_editor_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_editor_link(%struct.node_editor* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.node_editor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.node_link*, align 8
  store %struct.node_editor* %0, %struct.node_editor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.node_editor*, %struct.node_editor** %6, align 8
  %13 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.node_editor*, %struct.node_editor** %6, align 8
  %16 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %15, i32 0, i32 1
  %17 = load %struct.node_link*, %struct.node_link** %16, align 8
  %18 = call i64 @NK_LEN(%struct.node_link* %17)
  %19 = icmp slt i64 %14, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @NK_ASSERT(i32 %20)
  %22 = load %struct.node_editor*, %struct.node_editor** %6, align 8
  %23 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %22, i32 0, i32 1
  %24 = load %struct.node_link*, %struct.node_link** %23, align 8
  %25 = load %struct.node_editor*, %struct.node_editor** %6, align 8
  %26 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds %struct.node_link, %struct.node_link* %24, i64 %27
  store %struct.node_link* %29, %struct.node_link** %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.node_link*, %struct.node_link** %11, align 8
  %32 = getelementptr inbounds %struct.node_link, %struct.node_link* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.node_link*, %struct.node_link** %11, align 8
  %35 = getelementptr inbounds %struct.node_link, %struct.node_link* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.node_link*, %struct.node_link** %11, align 8
  %38 = getelementptr inbounds %struct.node_link, %struct.node_link* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.node_link*, %struct.node_link** %11, align 8
  %41 = getelementptr inbounds %struct.node_link, %struct.node_link* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @NK_ASSERT(i32) #1

declare dso_local i64 @NK_LEN(%struct.node_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
