; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_memory.c_ecpg_clear_auto_mem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_memory.c_ecpg_clear_auto_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auto_mem = type { %struct.auto_mem* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecpg_clear_auto_mem() #0 {
  %1 = alloca %struct.auto_mem*, align 8
  %2 = alloca %struct.auto_mem*, align 8
  %3 = call %struct.auto_mem* (...) @get_auto_allocs()
  store %struct.auto_mem* %3, %struct.auto_mem** %1, align 8
  %4 = load %struct.auto_mem*, %struct.auto_mem** %1, align 8
  %5 = icmp ne %struct.auto_mem* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %14, %6
  %8 = load %struct.auto_mem*, %struct.auto_mem** %1, align 8
  store %struct.auto_mem* %8, %struct.auto_mem** %2, align 8
  %9 = load %struct.auto_mem*, %struct.auto_mem** %1, align 8
  %10 = getelementptr inbounds %struct.auto_mem, %struct.auto_mem* %9, i32 0, i32 0
  %11 = load %struct.auto_mem*, %struct.auto_mem** %10, align 8
  store %struct.auto_mem* %11, %struct.auto_mem** %1, align 8
  %12 = load %struct.auto_mem*, %struct.auto_mem** %2, align 8
  %13 = call i32 @ecpg_free(%struct.auto_mem* %12)
  br label %14

14:                                               ; preds = %7
  %15 = load %struct.auto_mem*, %struct.auto_mem** %1, align 8
  %16 = icmp ne %struct.auto_mem* %15, null
  br i1 %16, label %7, label %17

17:                                               ; preds = %14
  %18 = call i32 @set_auto_allocs(i32* null)
  br label %19

19:                                               ; preds = %17, %0
  ret void
}

declare dso_local %struct.auto_mem* @get_auto_allocs(...) #1

declare dso_local i32 @ecpg_free(%struct.auto_mem*) #1

declare dso_local i32 @set_auto_allocs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
