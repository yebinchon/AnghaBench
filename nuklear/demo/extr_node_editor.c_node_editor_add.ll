; ModuleID = '/home/carl/AnghaBench/nuklear/demo/extr_node_editor.c_node_editor_add.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/extr_node_editor.c_node_editor_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_editor = type { i64, %struct.node* }
%struct.node = type { i32, i32, i32, %struct.nk_rect, %struct.nk_color, i64, i32 }
%struct.nk_rect = type { i32 }
%struct.nk_color = type { i32 }

@node_editor_add.IDs = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node_editor*, i8*, i32, i32, i32, i32)* @node_editor_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_editor_add(%struct.node_editor* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nk_rect, align 4
  %8 = alloca %struct.nk_color, align 4
  %9 = alloca %struct.node_editor*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.node*, align 8
  %14 = alloca %struct.nk_color, align 4
  %15 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %7, i32 0, i32 0
  store i32 %2, i32* %15, align 4
  %16 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  store i32 %3, i32* %16, align 4
  store %struct.node_editor* %0, %struct.node_editor** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.node_editor*, %struct.node_editor** %9, align 8
  %18 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.node_editor*, %struct.node_editor** %9, align 8
  %21 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %20, i32 0, i32 1
  %22 = load %struct.node*, %struct.node** %21, align 8
  %23 = call i64 @NK_LEN(%struct.node* %22)
  %24 = icmp slt i64 %19, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @NK_ASSERT(i32 %25)
  %27 = load %struct.node_editor*, %struct.node_editor** %9, align 8
  %28 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %27, i32 0, i32 1
  %29 = load %struct.node*, %struct.node** %28, align 8
  %30 = load %struct.node_editor*, %struct.node_editor** %9, align 8
  %31 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %29, i64 %32
  store %struct.node* %34, %struct.node** %13, align 8
  %35 = load i32, i32* @node_editor_add.IDs, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @node_editor_add.IDs, align 4
  %37 = load %struct.node*, %struct.node** %13, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 6
  store i32 %35, i32* %38, align 8
  %39 = load %struct.node*, %struct.node** %13, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.node*, %struct.node** %13, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 4
  %43 = call i32 @nk_rgb(i32 255, i32 0, i32 0)
  %44 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %14, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = bitcast %struct.nk_color* %42 to i8*
  %46 = bitcast %struct.nk_color* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.node*, %struct.node** %13, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.node*, %struct.node** %13, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.node*, %struct.node** %13, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 4
  %55 = bitcast %struct.nk_color* %54 to i8*
  %56 = bitcast %struct.nk_color* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 4 %56, i64 4, i1 false)
  %57 = load %struct.node*, %struct.node** %13, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 3
  %59 = bitcast %struct.nk_rect* %58 to i8*
  %60 = bitcast %struct.nk_rect* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  %61 = load %struct.node*, %struct.node** %13, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @strcpy(i32 %63, i8* %64)
  %66 = load %struct.node_editor*, %struct.node_editor** %9, align 8
  %67 = load %struct.node*, %struct.node** %13, align 8
  %68 = call i32 @node_editor_push(%struct.node_editor* %66, %struct.node* %67)
  ret void
}

declare dso_local i32 @NK_ASSERT(i32) #1

declare dso_local i64 @NK_LEN(%struct.node*) #1

declare dso_local i32 @nk_rgb(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @node_editor_push(%struct.node_editor*, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
