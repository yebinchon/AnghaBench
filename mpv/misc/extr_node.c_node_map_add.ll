; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_node.c_node_map_add.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_node.c_node_map_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mpv_node_list* }
%struct.mpv_node_list = type { i64, %struct.mpv_node*, %struct.mpv_node* }

@MPV_FORMAT_NODE_MAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpv_node* @node_map_add(%struct.mpv_node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mpv_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mpv_node_list*, align 8
  %8 = alloca %struct.mpv_node, align 8
  store %struct.mpv_node* %0, %struct.mpv_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load %struct.mpv_node*, %struct.mpv_node** %4, align 8
  %12 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mpv_node_list*, %struct.mpv_node_list** %13, align 8
  store %struct.mpv_node_list* %14, %struct.mpv_node_list** %7, align 8
  %15 = load %struct.mpv_node*, %struct.mpv_node** %4, align 8
  %16 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MPV_FORMAT_NODE_MAP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.mpv_node*, %struct.mpv_node** %4, align 8
  %22 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.mpv_node_list*, %struct.mpv_node_list** %23, align 8
  %25 = icmp ne %struct.mpv_node_list* %24, null
  br label %26

26:                                               ; preds = %20, %3
  %27 = phi i1 [ false, %3 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @assert(i8* %30)
  %32 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %33 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %34 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %33, i32 0, i32 1
  %35 = load %struct.mpv_node*, %struct.mpv_node** %34, align 8
  %36 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %37 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @MP_TARRAY_GROW(%struct.mpv_node_list* %32, %struct.mpv_node* %35, i64 %38)
  %40 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %41 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %42 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %41, i32 0, i32 2
  %43 = load %struct.mpv_node*, %struct.mpv_node** %42, align 8
  %44 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %45 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @MP_TARRAY_GROW(%struct.mpv_node_list* %40, %struct.mpv_node* %43, i64 %46)
  %48 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %49 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %48, i32 0, i32 2
  %50 = load %struct.mpv_node*, %struct.mpv_node** %49, align 8
  %51 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %52 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %50, i64 %53
  %55 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call { i64, %struct.mpv_node_list* } @talloc_strdup(%struct.mpv_node_list* %55, i8* %56)
  %58 = bitcast %struct.mpv_node* %8 to { i64, %struct.mpv_node_list* }*
  %59 = getelementptr inbounds { i64, %struct.mpv_node_list* }, { i64, %struct.mpv_node_list* }* %58, i32 0, i32 0
  %60 = extractvalue { i64, %struct.mpv_node_list* } %57, 0
  store i64 %60, i64* %59, align 8
  %61 = getelementptr inbounds { i64, %struct.mpv_node_list* }, { i64, %struct.mpv_node_list* }* %58, i32 0, i32 1
  %62 = extractvalue { i64, %struct.mpv_node_list* } %57, 1
  store %struct.mpv_node_list* %62, %struct.mpv_node_list** %61, align 8
  %63 = bitcast %struct.mpv_node* %54 to i8*
  %64 = bitcast %struct.mpv_node* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 16, i1 false)
  %65 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %66 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %65, i32 0, i32 1
  %67 = load %struct.mpv_node*, %struct.mpv_node** %66, align 8
  %68 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %69 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %67, i64 %70
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.mpv_node*, %struct.mpv_node** %4, align 8
  %74 = call i32 @node_init(%struct.mpv_node* %71, i32 %72, %struct.mpv_node* %73)
  %75 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %76 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %75, i32 0, i32 1
  %77 = load %struct.mpv_node*, %struct.mpv_node** %76, align 8
  %78 = load %struct.mpv_node_list*, %struct.mpv_node_list** %7, align 8
  %79 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %77, i64 %80
  ret %struct.mpv_node* %82
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @MP_TARRAY_GROW(%struct.mpv_node_list*, %struct.mpv_node*, i64) #1

declare dso_local { i64, %struct.mpv_node_list* } @talloc_strdup(%struct.mpv_node_list*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @node_init(%struct.mpv_node*, i32, %struct.mpv_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
