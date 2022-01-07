; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_copy_route_option_list.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_copy_route_option_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_option_list = type { %struct.gc_arena* }
%struct.gc_arena = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_route_option_list(%struct.route_option_list* %0, %struct.route_option_list* %1, %struct.gc_arena* %2) #0 {
  %4 = alloca %struct.route_option_list*, align 8
  %5 = alloca %struct.route_option_list*, align 8
  %6 = alloca %struct.gc_arena*, align 8
  store %struct.route_option_list* %0, %struct.route_option_list** %4, align 8
  store %struct.route_option_list* %1, %struct.route_option_list** %5, align 8
  store %struct.gc_arena* %2, %struct.gc_arena** %6, align 8
  %7 = load %struct.route_option_list*, %struct.route_option_list** %4, align 8
  %8 = load %struct.route_option_list*, %struct.route_option_list** %5, align 8
  %9 = bitcast %struct.route_option_list* %7 to i8*
  %10 = bitcast %struct.route_option_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  %11 = load %struct.gc_arena*, %struct.gc_arena** %6, align 8
  %12 = load %struct.route_option_list*, %struct.route_option_list** %4, align 8
  %13 = getelementptr inbounds %struct.route_option_list, %struct.route_option_list* %12, i32 0, i32 0
  store %struct.gc_arena* %11, %struct.gc_arena** %13, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
