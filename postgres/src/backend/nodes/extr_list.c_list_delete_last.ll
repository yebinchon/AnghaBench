; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_list.c_list_delete_last.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_list.c_list_delete_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @list_delete_last(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @check_list_invariants(i32* %4)
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** @NIL, align 8
  %8 = icmp eq i32* %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32*, i32** @NIL, align 8
  store i32* %10, i32** %2, align 8
  br label %25

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @list_length(i32* %12)
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @list_free(i32* %16)
  %18 = load i32*, i32** @NIL, align 8
  store i32* %18, i32** %2, align 8
  br label %25

19:                                               ; preds = %11
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @list_length(i32* %21)
  %23 = sub nsw i32 %22, 1
  %24 = call i32* @list_truncate(i32* %20, i32 %23)
  store i32* %24, i32** %2, align 8
  br label %25

25:                                               ; preds = %19, %15, %9
  %26 = load i32*, i32** %2, align 8
  ret i32* %26
}

declare dso_local i32 @check_list_invariants(i32*) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @list_free(i32*) #1

declare dso_local i32* @list_truncate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
