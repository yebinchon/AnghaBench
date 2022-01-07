; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_show_matching_key_value.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_show_matching_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tffs_key_name_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.tffs_entry = type { i32 }

@name_filter = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: no value found for name %s!\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ERROR: Unknown key name %s!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tffs_key_name_table*)* @show_matching_key_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_matching_key_value(%struct.tffs_key_name_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tffs_key_name_table*, align 8
  %4 = alloca %struct.tffs_entry, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.tffs_key_name_table* %0, %struct.tffs_key_name_table** %3, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %50, %1
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %3, align 8
  %10 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %7
  %14 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %3, align 8
  %15 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** @name_filter, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i64 @strncmp(i8* %21, i8* %22, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %13
  %28 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %3, align 8
  %29 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @find_entry(i32 %34, %struct.tffs_entry* %4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = call i32 @print_entry_value(%struct.tffs_entry* %4)
  %39 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.tffs_entry, %struct.tffs_entry* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @free(i32 %41)
  %43 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %43, i32* %2, align 4
  br label %58

44:                                               ; preds = %27
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %48, i32* %2, align 4
  br label %58

49:                                               ; preds = %13
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %7

53:                                               ; preds = %7
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** @name_filter, align 8
  %56 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %44, %37
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @find_entry(i32, %struct.tffs_entry*) #1

declare dso_local i32 @print_entry_value(%struct.tffs_entry*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
