; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buffer_list_advance.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buffer_list_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.buffer }
%struct.buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_list_advance(%struct.buffer_list* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer*, align 8
  store %struct.buffer_list* %0, %struct.buffer_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.buffer_list*, %struct.buffer_list** %3, align 8
  %7 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.buffer_list*, %struct.buffer_list** %3, align 8
  %12 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.buffer* %14, %struct.buffer** %5, align 8
  %15 = load %struct.buffer*, %struct.buffer** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @buf_advance(%struct.buffer* %15, i32 %16)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.buffer*, %struct.buffer** %5, align 8
  %20 = call i32 @BLEN(%struct.buffer* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %10
  %23 = load %struct.buffer_list*, %struct.buffer_list** %3, align 8
  %24 = call i32 @buffer_list_pop(%struct.buffer_list* %23)
  br label %25

25:                                               ; preds = %22, %10
  br label %26

26:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_advance(%struct.buffer*, i32) #1

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i32 @buffer_list_pop(%struct.buffer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
