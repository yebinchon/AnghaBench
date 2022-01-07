; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_tplink-safeloader.c_add_flash_partition.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_tplink-safeloader.c_add_flash_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_partition_entry = type { i64, i64, i32* }

@.str = private unnamed_addr constant [36 x i8] c"No free flash part entry available.\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to allocate memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flash_partition_entry*, i64, i8*, i64, i64)* @add_flash_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_flash_partition(%struct.flash_partition_entry* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.flash_partition_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.flash_partition_entry* %0, %struct.flash_partition_entry** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %33, %5
  %13 = load i64, i64* %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %18 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %23 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %28 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %38

32:                                               ; preds = %26, %21, %16
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %11, align 8
  %36 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %37 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %36, i32 1
  store %struct.flash_partition_entry* %37, %struct.flash_partition_entry** %6, align 8
  br label %12

38:                                               ; preds = %31, %12
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = add nsw i64 %46, 1
  %48 = call i32* @calloc(i32 1, i64 %47)
  %49 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %50 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %52 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  %56 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %44
  %58 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %59 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = call i32 @memcpy(i8* %61, i8* %62, i64 %64)
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %68 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %71 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  ret i32 0
}

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
