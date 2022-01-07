; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_node.c_node_map_add_double.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_node.c_node_map_add_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { double }

@MPV_FORMAT_DOUBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @node_map_add_double(%struct.mpv_node* %0, i8* %1, double %2) #0 {
  %4 = alloca %struct.mpv_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  store %struct.mpv_node* %0, %struct.mpv_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %6, align 8
  %8 = load %struct.mpv_node*, %struct.mpv_node** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @MPV_FORMAT_DOUBLE, align 4
  %11 = call %struct.TYPE_4__* @node_map_add(%struct.mpv_node* %8, i8* %9, i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store double %7, double* %13, align 8
  ret void
}

declare dso_local %struct.TYPE_4__* @node_map_add(%struct.mpv_node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
