; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_partition.c_get_partition_ancestors_worker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_partition.c_get_partition_ancestors_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32**)* @get_partition_ancestors_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_partition_ancestors_worker(i32 %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32** %2, i32*** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @get_partition_parent_worker(i32 %8, i64 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @InvalidOid, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %24

15:                                               ; preds = %3
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32* @lappend_oid(i32* %17, i64 %18)
  %20 = load i32**, i32*** %6, align 8
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i32**, i32*** %6, align 8
  call void @get_partition_ancestors_worker(i32 %21, i64 %22, i32** %23)
  br label %24

24:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @get_partition_parent_worker(i32, i64) #1

declare dso_local i32* @lappend_oid(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
