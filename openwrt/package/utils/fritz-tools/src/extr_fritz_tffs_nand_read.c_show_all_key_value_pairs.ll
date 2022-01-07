; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_show_all_key_value_pairs.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_show_all_key_value_pairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tffs_key_name_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.tffs_entry = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ERROR: no values found!\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tffs_key_name_table*)* @show_all_key_value_pairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_all_key_value_pairs(%struct.tffs_key_name_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tffs_key_name_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tffs_entry, align 4
  %6 = alloca i64, align 8
  store %struct.tffs_key_name_table* %0, %struct.tffs_key_name_table** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %3, align 8
  %10 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %7
  %14 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %3, align 8
  %15 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @find_entry(i32 %20, %struct.tffs_entry* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %13
  %24 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %3, align 8
  %25 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = call i32 @print_entry_value(%struct.tffs_entry* %5)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %4, align 8
  %37 = getelementptr inbounds %struct.tffs_entry, %struct.tffs_entry* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @free(i32 %38)
  br label %40

40:                                               ; preds = %23, %13
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %6, align 8
  br label %7

44:                                               ; preds = %7
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @find_entry(i32, %struct.tffs_entry*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_entry_value(%struct.tffs_entry*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
