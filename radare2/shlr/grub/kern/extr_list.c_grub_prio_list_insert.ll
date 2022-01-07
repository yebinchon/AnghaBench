; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_list.c_grub_prio_list_insert.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_list.c_grub_prio_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.grub_prio_list_insert_closure = type { i64 }

@grub_prio_list_insert_test = common dso_local global i64 0, align 8
@GRUB_PRIO_LIST_FLAG_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grub_prio_list_insert(%struct.TYPE_6__** %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.grub_prio_list_insert_closure, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.grub_prio_list_insert_closure, %struct.grub_prio_list_insert_closure* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %8 = call i32 @GRUB_AS_LIST_P(%struct.TYPE_6__** %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = call i32 @GRUB_AS_LIST(%struct.TYPE_6__* %9)
  %11 = load i64, i64* @grub_prio_list_insert_test, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @grub_list_insert(i32 %8, i32 %10, i32 %12, %struct.grub_prio_list_insert_closure* %5)
  %14 = getelementptr inbounds %struct.grub_prio_list_insert_closure, %struct.grub_prio_list_insert_closure* %5, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @GRUB_PRIO_LIST_FLAG_ACTIVE, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @grub_list_insert(i32, i32, i32, %struct.grub_prio_list_insert_closure*) #1

declare dso_local i32 @GRUB_AS_LIST_P(%struct.TYPE_6__**) #1

declare dso_local i32 @GRUB_AS_LIST(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
