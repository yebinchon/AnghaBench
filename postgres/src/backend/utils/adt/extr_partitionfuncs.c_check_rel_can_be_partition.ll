; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_partitionfuncs.c_check_rel_can_be_partition.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_partitionfuncs.c_check_rel_can_be_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RELOID = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_INDEX = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_rel_can_be_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_rel_can_be_partition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @RELOID, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ObjectIdGetDatum(i32 %7)
  %9 = call i32 @SearchSysCacheExists1(i32 %6, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call signext i8 @get_rel_relkind(i32 %13)
  store i8 %14, i8* %4, align 1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @get_rel_relispartition(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %12
  %20 = load i8, i8* %4, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i8, i8* %4, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @RELKIND_PARTITIONED_INDEX, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %25, %19, %12
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @SearchSysCacheExists1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i32 @get_rel_relispartition(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
