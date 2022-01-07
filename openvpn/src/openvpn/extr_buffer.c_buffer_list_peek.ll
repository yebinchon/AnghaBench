; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buffer_list_peek.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buffer_list_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.buffer_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.buffer }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer* @buffer_list_peek(%struct.buffer_list* %0) #0 {
  %2 = alloca %struct.buffer*, align 8
  %3 = alloca %struct.buffer_list*, align 8
  store %struct.buffer_list* %0, %struct.buffer_list** %3, align 8
  %4 = load %struct.buffer_list*, %struct.buffer_list** %3, align 8
  %5 = icmp ne %struct.buffer_list* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load %struct.buffer_list*, %struct.buffer_list** %3, align 8
  %8 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.buffer_list*, %struct.buffer_list** %3, align 8
  %13 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.buffer* %15, %struct.buffer** %2, align 8
  br label %17

16:                                               ; preds = %6, %1
  store %struct.buffer* null, %struct.buffer** %2, align 8
  br label %17

17:                                               ; preds = %16, %11
  %18 = load %struct.buffer*, %struct.buffer** %2, align 8
  ret %struct.buffer* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
