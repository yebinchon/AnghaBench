; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_ls.c__merge_sort.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_ls.c__merge_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*, i32)* @_merge_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @_merge_sort(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = icmp ne %struct.TYPE_9__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %3, align 8
  br label %29

16:                                               ; preds = %9
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = call %struct.TYPE_9__* @_sdb_list_split(%struct.TYPE_9__* %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_9__* @_merge_sort(%struct.TYPE_9__* %19, i32 %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %4, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.TYPE_9__* @_merge_sort(%struct.TYPE_9__* %22, i32 %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.TYPE_9__* @_merge(%struct.TYPE_9__* %25, %struct.TYPE_9__* %26, i32 %27)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %3, align 8
  br label %29

29:                                               ; preds = %16, %14
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %30
}

declare dso_local %struct.TYPE_9__* @_sdb_list_split(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @_merge(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
