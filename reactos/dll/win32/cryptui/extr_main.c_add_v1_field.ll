; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_v1_field.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_v1_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.detail_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v1_field = type { i32, i32, i32* (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.detail_data*, %struct.v1_field*)* @add_v1_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_v1_field(i32 %0, %struct.detail_data* %1, %struct.v1_field* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.detail_data*, align 8
  %6 = alloca %struct.v1_field*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.detail_data* %1, %struct.detail_data** %5, align 8
  store %struct.v1_field* %2, %struct.v1_field** %6, align 8
  %8 = load %struct.v1_field*, %struct.v1_field** %6, align 8
  %9 = getelementptr inbounds %struct.v1_field, %struct.v1_field* %8, i32 0, i32 2
  %10 = load i32* (i32)*, i32* (i32)** %9, align 8
  %11 = load %struct.detail_data*, %struct.detail_data** %5, align 8
  %12 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* %10(i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.detail_data*, %struct.detail_data** %5, align 8
  %22 = load %struct.v1_field*, %struct.v1_field** %6, align 8
  %23 = getelementptr inbounds %struct.v1_field, %struct.v1_field* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.v1_field*, %struct.v1_field** %6, align 8
  %27 = getelementptr inbounds %struct.v1_field, %struct.v1_field* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @add_string_id_and_value_to_list(i32 %20, %struct.detail_data* %21, i32 %24, i32* %25, i32 %28, i32* null)
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @HeapFree(i32 %30, i32 0, i32* %31)
  br label %33

33:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @add_string_id_and_value_to_list(i32, %struct.detail_data*, i32, i32*, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
