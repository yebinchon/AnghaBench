; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_list.h_list_remove.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_list.h_list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_entry = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_entry*)* @list_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_remove(%struct.list_entry* %0) #0 {
  %2 = alloca %struct.list_entry*, align 8
  store %struct.list_entry* %0, %struct.list_entry** %2, align 8
  %3 = load %struct.list_entry*, %struct.list_entry** %2, align 8
  %4 = call i32 @list_empty(%struct.list_entry* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = load %struct.list_entry*, %struct.list_entry** %2, align 8
  %8 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load %struct.list_entry*, %struct.list_entry** %2, align 8
  %11 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %13, align 8
  %14 = load %struct.list_entry*, %struct.list_entry** %2, align 8
  %15 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.list_entry*, %struct.list_entry** %2, align 8
  %18 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %20, align 8
  %21 = load %struct.list_entry*, %struct.list_entry** %2, align 8
  %22 = call i32 @list_init(%struct.list_entry* %21)
  br label %23

23:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @list_empty(%struct.list_entry*) #1

declare dso_local i32 @list_init(%struct.list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
