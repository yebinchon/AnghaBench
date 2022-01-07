; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_file_perm.c_SetDataDirectoryCreatePerm.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_file_perm.c_SetDataDirectoryCreatePerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_DIR_MODE_GROUP = common dso_local global i32 0, align 4
@pg_dir_create_mode = common dso_local global i32 0, align 4
@PG_FILE_MODE_GROUP = common dso_local global i32 0, align 4
@pg_file_create_mode = common dso_local global i32 0, align 4
@PG_MODE_MASK_GROUP = common dso_local global i32 0, align 4
@pg_mode_mask = common dso_local global i32 0, align 4
@PG_DIR_MODE_OWNER = common dso_local global i32 0, align 4
@PG_FILE_MODE_OWNER = common dso_local global i32 0, align 4
@PG_MODE_MASK_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetDataDirectoryCreatePerm(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @PG_DIR_MODE_GROUP, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %3, %4
  %6 = load i32, i32* @PG_DIR_MODE_GROUP, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @PG_DIR_MODE_GROUP, align 4
  store i32 %9, i32* @pg_dir_create_mode, align 4
  %10 = load i32, i32* @PG_FILE_MODE_GROUP, align 4
  store i32 %10, i32* @pg_file_create_mode, align 4
  %11 = load i32, i32* @PG_MODE_MASK_GROUP, align 4
  store i32 %11, i32* @pg_mode_mask, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @PG_DIR_MODE_OWNER, align 4
  store i32 %13, i32* @pg_dir_create_mode, align 4
  %14 = load i32, i32* @PG_FILE_MODE_OWNER, align 4
  store i32 %14, i32* @pg_file_create_mode, align 4
  %15 = load i32, i32* @PG_MODE_MASK_OWNER, align 4
  store i32 %15, i32* @pg_mode_mask, align 4
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
