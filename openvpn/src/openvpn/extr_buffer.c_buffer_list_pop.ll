; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buffer_list_pop.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buffer_list_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_list = type { i32*, i32, %struct.buffer_entry* }
%struct.buffer_entry = type { i32, %struct.buffer_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_list_pop(%struct.buffer_list* %0) #0 {
  %2 = alloca %struct.buffer_list*, align 8
  %3 = alloca %struct.buffer_entry*, align 8
  store %struct.buffer_list* %0, %struct.buffer_list** %2, align 8
  %4 = load %struct.buffer_list*, %struct.buffer_list** %2, align 8
  %5 = icmp ne %struct.buffer_list* %4, null
  br i1 %5, label %6, label %39

6:                                                ; preds = %1
  %7 = load %struct.buffer_list*, %struct.buffer_list** %2, align 8
  %8 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %7, i32 0, i32 2
  %9 = load %struct.buffer_entry*, %struct.buffer_entry** %8, align 8
  %10 = icmp ne %struct.buffer_entry* %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %6
  %12 = load %struct.buffer_list*, %struct.buffer_list** %2, align 8
  %13 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %12, i32 0, i32 2
  %14 = load %struct.buffer_entry*, %struct.buffer_entry** %13, align 8
  %15 = getelementptr inbounds %struct.buffer_entry, %struct.buffer_entry* %14, i32 0, i32 1
  %16 = load %struct.buffer_entry*, %struct.buffer_entry** %15, align 8
  store %struct.buffer_entry* %16, %struct.buffer_entry** %3, align 8
  %17 = load %struct.buffer_list*, %struct.buffer_list** %2, align 8
  %18 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %17, i32 0, i32 2
  %19 = load %struct.buffer_entry*, %struct.buffer_entry** %18, align 8
  %20 = getelementptr inbounds %struct.buffer_entry, %struct.buffer_entry* %19, i32 0, i32 0
  %21 = call i32 @free_buf(i32* %20)
  %22 = load %struct.buffer_list*, %struct.buffer_list** %2, align 8
  %23 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %22, i32 0, i32 2
  %24 = load %struct.buffer_entry*, %struct.buffer_entry** %23, align 8
  %25 = call i32 @free(%struct.buffer_entry* %24)
  %26 = load %struct.buffer_entry*, %struct.buffer_entry** %3, align 8
  %27 = load %struct.buffer_list*, %struct.buffer_list** %2, align 8
  %28 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %27, i32 0, i32 2
  store %struct.buffer_entry* %26, %struct.buffer_entry** %28, align 8
  %29 = load %struct.buffer_list*, %struct.buffer_list** %2, align 8
  %30 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.buffer_entry*, %struct.buffer_entry** %3, align 8
  %34 = icmp ne %struct.buffer_entry* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %11
  %36 = load %struct.buffer_list*, %struct.buffer_list** %2, align 8
  %37 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %11
  br label %39

39:                                               ; preds = %38, %6, %1
  ret void
}

declare dso_local i32 @free_buf(i32*) #1

declare dso_local i32 @free(%struct.buffer_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
