; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_mpv_command_node.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_mpv_command_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mpv_node = type { i32 }

@MPV_FORMAT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpv_command_node(%struct.TYPE_4__* %0, %struct.mpv_node* %1, %struct.mpv_node* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.mpv_node*, align 8
  %6 = alloca %struct.mpv_node*, align 8
  %7 = alloca %struct.mpv_node, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.mpv_node* %1, %struct.mpv_node** %5, align 8
  store %struct.mpv_node* %2, %struct.mpv_node** %6, align 8
  %9 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %7, i32 0, i32 0
  %10 = load i32, i32* @MPV_FORMAT_NONE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mpv_node*, %struct.mpv_node** %5, align 8
  %16 = call i32 @mp_input_parse_cmd_node(i32 %14, %struct.mpv_node* %15)
  %17 = call i32 @run_client_command(%struct.TYPE_4__* %11, i32 %16, %struct.mpv_node* %7)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.mpv_node*, %struct.mpv_node** %6, align 8
  %19 = icmp ne %struct.mpv_node* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.mpv_node*, %struct.mpv_node** %6, align 8
  %25 = bitcast %struct.mpv_node* %24 to i8*
  %26 = bitcast %struct.mpv_node* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  br label %27

27:                                               ; preds = %23, %20, %3
  %28 = load i32, i32* %8, align 4
  ret i32 %28
}

declare dso_local i32 @run_client_command(%struct.TYPE_4__*, i32, %struct.mpv_node*) #1

declare dso_local i32 @mp_input_parse_cmd_node(i32, %struct.mpv_node*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
