; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_node.c_node_map_add_string.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_node.c_node_map_add_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MPV_FORMAT_NONE = common dso_local global i32 0, align 4
@MPV_FORMAT_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @node_map_add_string(%struct.mpv_node* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mpv_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpv_node*, align 8
  store %struct.mpv_node* %0, %struct.mpv_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @assert(i8* %8)
  %10 = load %struct.mpv_node*, %struct.mpv_node** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @MPV_FORMAT_NONE, align 4
  %13 = call %struct.mpv_node* @node_map_add(%struct.mpv_node* %10, i8* %11, i32 %12)
  store %struct.mpv_node* %13, %struct.mpv_node** %7, align 8
  %14 = load i32, i32* @MPV_FORMAT_STRING, align 4
  %15 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %16 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mpv_node*, %struct.mpv_node** %4, align 8
  %18 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @talloc_strdup(i32 %20, i8* %21)
  %23 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %24 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local %struct.mpv_node* @node_map_add(%struct.mpv_node*, i8*, i32) #1

declare dso_local i32 @talloc_strdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
