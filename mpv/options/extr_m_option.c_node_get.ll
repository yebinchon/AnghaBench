; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_node_get.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_node_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.mpv_node*, i8*)* @node_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_get(i32* %0, i8* %1, %struct.mpv_node* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpv_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mpv_node, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mpv_node* %2, %struct.mpv_node** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i32 @VAL(i8* %11)
  %13 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = bitcast %struct.mpv_node* %10 to i8*
  %15 = bitcast %struct.mpv_node* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %18 = call i32 @dup_node(i8* %16, %struct.mpv_node* %17)
  ret i32 1
}

declare dso_local i32 @VAL(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dup_node(i8*, %struct.mpv_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
