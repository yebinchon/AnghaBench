; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_dsm.c_dsm_detach_all.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_dsm.c_dsm_detach_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dsm_control = common dso_local global i8* null, align 8
@dsm_segment_list = common dso_local global i32 0, align 4
@dsm_segment = common dso_local global i32 0, align 4
@seg = common dso_local global i32 0, align 4
@node = common dso_local global i32 0, align 4
@DSM_OP_DETACH = common dso_local global i32 0, align 4
@dsm_control_handle = common dso_local global i32 0, align 4
@dsm_control_impl_private = common dso_local global i32 0, align 4
@dsm_control_mapped_size = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsm_detach_all() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @dsm_control, align 8
  store i8* %2, i8** %1, align 8
  br label %3

3:                                                ; preds = %7, %0
  %4 = call i32 @dlist_is_empty(i32* @dsm_segment_list)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load i32, i32* @dsm_segment, align 4
  %9 = load i32, i32* @seg, align 4
  %10 = mul nsw i32 %8, %9
  %11 = load i32, i32* @dsm_segment, align 4
  %12 = load i32, i32* @node, align 4
  %13 = call i32 @dlist_head_element(i32 %11, i32 %12, i32* @dsm_segment_list)
  store i32 %13, i32* @seg, align 4
  %14 = load i32, i32* @seg, align 4
  %15 = call i32 @dsm_detach(i32 %14)
  br label %3

16:                                               ; preds = %3
  %17 = load i8*, i8** %1, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* @DSM_OP_DETACH, align 4
  %21 = load i32, i32* @dsm_control_handle, align 4
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 @dsm_impl_op(i32 %20, i32 %21, i32 0, i32* @dsm_control_impl_private, i8** %1, i32* @dsm_control_mapped_size, i32 %22)
  br label %24

24:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @dlist_is_empty(i32*) #1

declare dso_local i32 @dlist_head_element(i32, i32, i32*) #1

declare dso_local i32 @dsm_detach(i32) #1

declare dso_local i32 @dsm_impl_op(i32, i32, i32, i32*, i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
