; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_init_file_tables.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_init_file_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_tbl_s = type { i64, i32, i32, i64 }

@init_file_tables.done = internal global i32 0, align 4
@type_tbl = common dso_local global %struct.type_tbl_s* null, align 8
@FILE_NAMES_SIZE = common dso_local global i64 0, align 8
@magic_file_names = common dso_local global i32* null, align 8
@magic_file_formats = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_file_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_file_tables() #0 {
  %1 = alloca %struct.type_tbl_s*, align 8
  %2 = load i32, i32* @init_file_tables.done, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %41

5:                                                ; preds = %0
  %6 = load i32, i32* @init_file_tables.done, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @init_file_tables.done, align 4
  %8 = load %struct.type_tbl_s*, %struct.type_tbl_s** @type_tbl, align 8
  store %struct.type_tbl_s* %8, %struct.type_tbl_s** %1, align 8
  br label %9

9:                                                ; preds = %38, %5
  %10 = load %struct.type_tbl_s*, %struct.type_tbl_s** %1, align 8
  %11 = getelementptr inbounds %struct.type_tbl_s, %struct.type_tbl_s* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = load %struct.type_tbl_s*, %struct.type_tbl_s** %1, align 8
  %16 = getelementptr inbounds %struct.type_tbl_s, %struct.type_tbl_s* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FILE_NAMES_SIZE, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %38

21:                                               ; preds = %14
  %22 = load %struct.type_tbl_s*, %struct.type_tbl_s** %1, align 8
  %23 = getelementptr inbounds %struct.type_tbl_s, %struct.type_tbl_s* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @magic_file_names, align 8
  %26 = load %struct.type_tbl_s*, %struct.type_tbl_s** %1, align 8
  %27 = getelementptr inbounds %struct.type_tbl_s, %struct.type_tbl_s* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 %24, i32* %29, align 4
  %30 = load %struct.type_tbl_s*, %struct.type_tbl_s** %1, align 8
  %31 = getelementptr inbounds %struct.type_tbl_s, %struct.type_tbl_s* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** @magic_file_formats, align 8
  %34 = load %struct.type_tbl_s*, %struct.type_tbl_s** %1, align 8
  %35 = getelementptr inbounds %struct.type_tbl_s, %struct.type_tbl_s* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %21, %20
  %39 = load %struct.type_tbl_s*, %struct.type_tbl_s** %1, align 8
  %40 = getelementptr inbounds %struct.type_tbl_s, %struct.type_tbl_s* %39, i32 1
  store %struct.type_tbl_s* %40, %struct.type_tbl_s** %1, align 8
  br label %9

41:                                               ; preds = %4, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
