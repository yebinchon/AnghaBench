; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_x_gc_free.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_x_gc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { %struct.gc_entry* }
%struct.gc_entry = type { %struct.gc_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x_gc_free(%struct.gc_arena* %0) #0 {
  %2 = alloca %struct.gc_arena*, align 8
  %3 = alloca %struct.gc_entry*, align 8
  %4 = alloca %struct.gc_entry*, align 8
  store %struct.gc_arena* %0, %struct.gc_arena** %2, align 8
  %5 = load %struct.gc_arena*, %struct.gc_arena** %2, align 8
  %6 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %5, i32 0, i32 0
  %7 = load %struct.gc_entry*, %struct.gc_entry** %6, align 8
  store %struct.gc_entry* %7, %struct.gc_entry** %3, align 8
  %8 = load %struct.gc_arena*, %struct.gc_arena** %2, align 8
  %9 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %8, i32 0, i32 0
  store %struct.gc_entry* null, %struct.gc_entry** %9, align 8
  br label %10

10:                                               ; preds = %13, %1
  %11 = load %struct.gc_entry*, %struct.gc_entry** %3, align 8
  %12 = icmp ne %struct.gc_entry* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.gc_entry*, %struct.gc_entry** %3, align 8
  %15 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %14, i32 0, i32 0
  %16 = load %struct.gc_entry*, %struct.gc_entry** %15, align 8
  store %struct.gc_entry* %16, %struct.gc_entry** %4, align 8
  %17 = load %struct.gc_entry*, %struct.gc_entry** %3, align 8
  %18 = call i32 @free(%struct.gc_entry* %17)
  %19 = load %struct.gc_entry*, %struct.gc_entry** %4, align 8
  store %struct.gc_entry* %19, %struct.gc_entry** %3, align 8
  br label %10

20:                                               ; preds = %10
  ret void
}

declare dso_local i32 @free(%struct.gc_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
