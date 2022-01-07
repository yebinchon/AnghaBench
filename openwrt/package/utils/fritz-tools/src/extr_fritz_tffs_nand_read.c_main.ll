; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tffs_entry = type { i32 }
%struct.tffs_key_name_table = type { i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@mtddev = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@mtdfd = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ERROR: Failed to open tffs device %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"ERROR: Parsing blocks from tffs device %s failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"       Is byte-swapping (-b) required?\0A\00", align 1
@TFFS_ID_TABLE_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"ERROR: No name table found on tffs device %s\0A\00", align 1
@print_all_key_names = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@show_all = common dso_local global i64 0, align 8
@sectors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tffs_entry, align 4
  %8 = alloca %struct.tffs_key_name_table, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @basename(i8* %12)
  store i32 %13, i32* @progname, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @parse_options(i32 %14, i8** %15)
  %17 = load i8*, i8** @mtddev, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i64 @open(i8* %17, i32 %18)
  store i64 %19, i64* @mtdfd, align 8
  %20 = load i64, i64* @mtdfd, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** @mtddev, align 8
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %80

26:                                               ; preds = %2
  %27 = call i32 (...) @scan_mtd()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** @mtddev, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %77

35:                                               ; preds = %26
  %36 = load i32, i32* @TFFS_ID_TABLE_NAME, align 4
  %37 = call i32 @find_entry(i32 %36, %struct.tffs_entry* %7)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** @mtddev, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %74

43:                                               ; preds = %35
  %44 = call i32 @parse_key_names(%struct.tffs_entry* %7, %struct.tffs_key_name_table* %8)
  %45 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** @mtddev, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  br label %70

52:                                               ; preds = %43
  %53 = load i64, i64* @print_all_key_names, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = call i32 @show_all_key_names(%struct.tffs_key_name_table* %8)
  %57 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %57, i32* %6, align 4
  br label %66

58:                                               ; preds = %52
  %59 = load i64, i64* @show_all, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @show_all_key_value_pairs(%struct.tffs_key_name_table* %8)
  store i32 %62, i32* %6, align 4
  br label %65

63:                                               ; preds = %58
  %64 = call i32 @show_matching_key_value(%struct.tffs_key_name_table* %8)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %55
  %67 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %8, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @free(i32 %68)
  br label %70

70:                                               ; preds = %66, %48
  %71 = getelementptr inbounds %struct.tffs_entry, %struct.tffs_entry* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @free(i32 %72)
  br label %74

74:                                               ; preds = %70, %39
  %75 = load i32, i32* @sectors, align 4
  %76 = call i32 @free(i32 %75)
  br label %77

77:                                               ; preds = %74, %29
  %78 = load i64, i64* @mtdfd, align 8
  %79 = call i32 @close(i64 %78)
  br label %80

80:                                               ; preds = %77, %22
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @parse_options(i32, i8**) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @scan_mtd(...) #1

declare dso_local i32 @find_entry(i32, %struct.tffs_entry*) #1

declare dso_local i32 @parse_key_names(%struct.tffs_entry*, %struct.tffs_key_name_table*) #1

declare dso_local i32 @show_all_key_names(%struct.tffs_key_name_table*) #1

declare dso_local i32 @show_all_key_value_pairs(%struct.tffs_key_name_table*) #1

declare dso_local i32 @show_matching_key_value(%struct.tffs_key_name_table*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
