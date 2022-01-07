; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_add_map_entry.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_add_map_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mpv_node_list* }
%struct.mpv_node_list = type { i64, %struct.mpv_node*, %struct.mpv_node* }

@MPV_FORMAT_NODE_MAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mpv_node* (%struct.mpv_node*, i8*)* @add_map_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mpv_node* @add_map_entry(%struct.mpv_node* %0, i8* %1) #0 {
  %3 = alloca %struct.mpv_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mpv_node_list*, align 8
  %6 = alloca %struct.mpv_node, align 8
  store %struct.mpv_node* %0, %struct.mpv_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.mpv_node*, %struct.mpv_node** %3, align 8
  %8 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mpv_node_list*, %struct.mpv_node_list** %9, align 8
  store %struct.mpv_node_list* %10, %struct.mpv_node_list** %5, align 8
  %11 = load %struct.mpv_node*, %struct.mpv_node** %3, align 8
  %12 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MPV_FORMAT_NODE_MAP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.mpv_node*, %struct.mpv_node** %3, align 8
  %18 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mpv_node_list*, %struct.mpv_node_list** %19, align 8
  %21 = icmp ne %struct.mpv_node_list* %20, null
  br label %22

22:                                               ; preds = %16, %2
  %23 = phi i1 [ false, %2 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %27 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %28 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %27, i32 0, i32 1
  %29 = load %struct.mpv_node*, %struct.mpv_node** %28, align 8
  %30 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %31 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @MP_TARRAY_GROW(%struct.mpv_node_list* %26, %struct.mpv_node* %29, i64 %32)
  %34 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %35 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %36 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %35, i32 0, i32 2
  %37 = load %struct.mpv_node*, %struct.mpv_node** %36, align 8
  %38 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %39 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @MP_TARRAY_GROW(%struct.mpv_node_list* %34, %struct.mpv_node* %37, i64 %40)
  %42 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %43 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %42, i32 0, i32 2
  %44 = load %struct.mpv_node*, %struct.mpv_node** %43, align 8
  %45 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %46 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %44, i64 %47
  %49 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call { i64, %struct.mpv_node_list* } @talloc_strdup(%struct.mpv_node_list* %49, i8* %50)
  %52 = bitcast %struct.mpv_node* %6 to { i64, %struct.mpv_node_list* }*
  %53 = getelementptr inbounds { i64, %struct.mpv_node_list* }, { i64, %struct.mpv_node_list* }* %52, i32 0, i32 0
  %54 = extractvalue { i64, %struct.mpv_node_list* } %51, 0
  store i64 %54, i64* %53, align 8
  %55 = getelementptr inbounds { i64, %struct.mpv_node_list* }, { i64, %struct.mpv_node_list* }* %52, i32 0, i32 1
  %56 = extractvalue { i64, %struct.mpv_node_list* } %51, 1
  store %struct.mpv_node_list* %56, %struct.mpv_node_list** %55, align 8
  %57 = bitcast %struct.mpv_node* %48 to i8*
  %58 = bitcast %struct.mpv_node* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %60 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %59, i32 0, i32 1
  %61 = load %struct.mpv_node*, %struct.mpv_node** %60, align 8
  %62 = load %struct.mpv_node_list*, %struct.mpv_node_list** %5, align 8
  %63 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %61, i64 %64
  ret %struct.mpv_node* %66
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_TARRAY_GROW(%struct.mpv_node_list*, %struct.mpv_node*, i64) #1

declare dso_local { i64, %struct.mpv_node_list* } @talloc_strdup(%struct.mpv_node_list*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
