; ModuleID = '/home/carl/AnghaBench/nuklear/demo/extr_node_editor.c_node_editor_init.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/extr_node_editor.c_node_editor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_editor = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Combine\00", align 1
@nk_true = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node_editor*)* @node_editor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_editor_init(%struct.node_editor* %0) #0 {
  %2 = alloca %struct.node_editor*, align 8
  store %struct.node_editor* %0, %struct.node_editor** %2, align 8
  %3 = load %struct.node_editor*, %struct.node_editor** %2, align 8
  %4 = call i32 @memset(%struct.node_editor* %3, i32 0, i32 24)
  %5 = load %struct.node_editor*, %struct.node_editor** %2, align 8
  %6 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %5, i32 0, i32 2
  store i32* null, i32** %6, align 8
  %7 = load %struct.node_editor*, %struct.node_editor** %2, align 8
  %8 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %7, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = load %struct.node_editor*, %struct.node_editor** %2, align 8
  %10 = call i32 @nk_rect(i32 40, i32 10, i32 180, i32 220)
  %11 = call i32 @nk_rgb(i32 255, i32 0, i32 0)
  %12 = call i32 @node_editor_add(%struct.node_editor* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 0, i32 1)
  %13 = load %struct.node_editor*, %struct.node_editor** %2, align 8
  %14 = call i32 @nk_rect(i32 40, i32 260, i32 180, i32 220)
  %15 = call i32 @nk_rgb(i32 0, i32 255, i32 0)
  %16 = call i32 @node_editor_add(%struct.node_editor* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 0, i32 1)
  %17 = load %struct.node_editor*, %struct.node_editor** %2, align 8
  %18 = call i32 @nk_rect(i32 400, i32 100, i32 180, i32 220)
  %19 = call i32 @nk_rgb(i32 0, i32 0, i32 255)
  %20 = call i32 @node_editor_add(%struct.node_editor* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19, i32 2, i32 2)
  %21 = load %struct.node_editor*, %struct.node_editor** %2, align 8
  %22 = call i32 @node_editor_link(%struct.node_editor* %21, i32 0, i32 0, i32 2, i32 0)
  %23 = load %struct.node_editor*, %struct.node_editor** %2, align 8
  %24 = call i32 @node_editor_link(%struct.node_editor* %23, i32 1, i32 0, i32 2, i32 1)
  %25 = load i32, i32* @nk_true, align 4
  %26 = load %struct.node_editor*, %struct.node_editor** %2, align 8
  %27 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  ret void
}

declare dso_local i32 @memset(%struct.node_editor*, i32, i32) #1

declare dso_local i32 @node_editor_add(%struct.node_editor*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local i32 @nk_rgb(i32, i32, i32) #1

declare dso_local i32 @node_editor_link(%struct.node_editor*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
