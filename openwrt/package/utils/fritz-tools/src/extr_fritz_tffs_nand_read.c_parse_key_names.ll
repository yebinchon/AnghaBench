; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_parse_key_names.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_parse_key_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tffs_entry = type { i64, i64 }
%struct.tffs_key_name_table = type { i64, %struct.tffs_name_table_entry* }
%struct.tffs_name_table_entry = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ERROR: memory allocation failed!\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tffs_entry*, %struct.tffs_key_name_table*)* @parse_key_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_key_names(%struct.tffs_entry* %0, %struct.tffs_key_name_table* %1) #0 {
  %3 = alloca %struct.tffs_entry*, align 8
  %4 = alloca %struct.tffs_key_name_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tffs_name_table_entry*, align 8
  store %struct.tffs_entry* %0, %struct.tffs_entry** %3, align 8
  store %struct.tffs_key_name_table* %1, %struct.tffs_key_name_table** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %4, align 8
  %9 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %8, i32 0, i32 1
  store %struct.tffs_name_table_entry* null, %struct.tffs_name_table_entry** %9, align 8
  br label %10

10:                                               ; preds = %64, %2
  %11 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %4, align 8
  %12 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %11, i32 0, i32 1
  %13 = load %struct.tffs_name_table_entry*, %struct.tffs_name_table_entry** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add nsw i64 %14, 1
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call %struct.tffs_name_table_entry* @realloc(%struct.tffs_name_table_entry* %13, i32 %17)
  %19 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %4, align 8
  %20 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %19, i32 0, i32 1
  store %struct.tffs_name_table_entry* %18, %struct.tffs_name_table_entry** %20, align 8
  %21 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %4, align 8
  %22 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %21, i32 0, i32 1
  %23 = load %struct.tffs_name_table_entry*, %struct.tffs_name_table_entry** %22, align 8
  %24 = icmp eq %struct.tffs_name_table_entry* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %10
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @exit(i32 %28) #3
  unreachable

30:                                               ; preds = %10
  %31 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %4, align 8
  %32 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %31, i32 0, i32 1
  %33 = load %struct.tffs_name_table_entry*, %struct.tffs_name_table_entry** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.tffs_name_table_entry, %struct.tffs_name_table_entry* %33, i64 %34
  store %struct.tffs_name_table_entry* %35, %struct.tffs_name_table_entry** %7, align 8
  %36 = load %struct.tffs_entry*, %struct.tffs_entry** %3, align 8
  %37 = getelementptr inbounds %struct.tffs_entry, %struct.tffs_entry* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @read_uint32(i64 %38, i64 %39)
  %41 = load %struct.tffs_name_table_entry*, %struct.tffs_name_table_entry** %7, align 8
  %42 = getelementptr inbounds %struct.tffs_name_table_entry, %struct.tffs_name_table_entry* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 8
  store i64 %44, i64* %5, align 8
  %45 = load %struct.tffs_entry*, %struct.tffs_entry** %3, align 8
  %46 = getelementptr inbounds %struct.tffs_entry, %struct.tffs_entry* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %47, %48
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @strdup(i8* %50)
  %52 = load %struct.tffs_name_table_entry*, %struct.tffs_name_table_entry** %7, align 8
  %53 = getelementptr inbounds %struct.tffs_name_table_entry, %struct.tffs_name_table_entry* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.tffs_name_table_entry*, %struct.tffs_name_table_entry** %7, align 8
  %55 = getelementptr inbounds %struct.tffs_name_table_entry, %struct.tffs_name_table_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @strlen(i32 %56)
  %58 = add nsw i64 %57, 1
  %59 = call i64 @get_walk_size(i64 %58)
  %60 = load i64, i64* %5, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %30
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.tffs_entry*, %struct.tffs_entry** %3, align 8
  %67 = getelementptr inbounds %struct.tffs_entry, %struct.tffs_entry* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %10, label %70

70:                                               ; preds = %64
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %4, align 8
  %73 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  ret void
}

declare dso_local %struct.tffs_name_table_entry* @realloc(%struct.tffs_name_table_entry*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @read_uint32(i64, i64) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @get_walk_size(i64) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
