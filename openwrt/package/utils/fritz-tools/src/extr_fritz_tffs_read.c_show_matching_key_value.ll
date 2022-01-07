; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_read.c_show_matching_key_value.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_read.c_show_matching_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tffs_key_name_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32* }
%struct.tffs_entry = type { i32 }

@name_filter = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: no value found for name %s!\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ERROR: Unknown key name %s!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.tffs_key_name_table*)* @show_matching_key_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_matching_key_value(i32* %0, %struct.tffs_key_name_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tffs_key_name_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tffs_entry, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.tffs_key_name_table* %1, %struct.tffs_key_name_table** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %56, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %5, align 8
  %13 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  %17 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %5, align 8
  %18 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** @name_filter, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i64 @strncmp(i8* %25, i8* %26, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %16
  %32 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %5, align 8
  %33 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @to_entry_header_id(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @find_entry(i32* %42, i32 %43, %struct.tffs_entry* %8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = call i32 @print_entry_value(%struct.tffs_entry* %8)
  %48 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %49, i32* %3, align 4
  br label %64

50:                                               ; preds = %31
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %54, i32* %3, align 4
  br label %64

55:                                               ; preds = %16
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %10

59:                                               ; preds = %10
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8*, i8** @name_filter, align 8
  %62 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %50, %46
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @to_entry_header_id(i32) #1

declare dso_local i64 @find_entry(i32*, i32, %struct.tffs_entry*) #1

declare dso_local i32 @print_entry_value(%struct.tffs_entry*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
