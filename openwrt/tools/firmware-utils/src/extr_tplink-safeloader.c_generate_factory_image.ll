; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_tplink-safeloader.c_generate_factory_image.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_tplink-safeloader.c_generate_factory_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_info = type { i32, i32 }
%struct.image_partition_entry = type { i64, i64 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device_info*, %struct.image_partition_entry*, i64*)* @generate_factory_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generate_factory_image(%struct.device_info* %0, %struct.image_partition_entry* %1, i64* %2) #0 {
  %4 = alloca %struct.device_info*, align 8
  %5 = alloca %struct.image_partition_entry*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.device_info* %0, %struct.device_info** %4, align 8
  store %struct.image_partition_entry* %1, %struct.image_partition_entry** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i64*, i64** %6, align 8
  store i64 6164, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %27, %3
  %12 = load %struct.image_partition_entry*, %struct.image_partition_entry** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %12, i64 %13
  %15 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load %struct.image_partition_entry*, %struct.image_partition_entry** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %19, i64 %20
  %22 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, %23
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %18
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %7, align 8
  br label %11

30:                                               ; preds = %11
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @malloc(i64 %32)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @error(i32 1, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i8*, i8** %8, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @memset(i8* %40, i32 255, i64 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @put32(i8* %44, i64 %46)
  %48 = load %struct.device_info*, %struct.device_info** %4, align 8
  %49 = getelementptr inbounds %struct.device_info, %struct.device_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %39
  %53 = load %struct.device_info*, %struct.device_info** %4, align 8
  %54 = getelementptr inbounds %struct.device_info, %struct.device_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @strlen(i32 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr i8, i8* %57, i64 20
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @put32(i8* %58, i64 %59)
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr i8, i8* %61, i64 24
  %63 = load %struct.device_info*, %struct.device_info** %4, align 8
  %64 = getelementptr inbounds %struct.device_info, %struct.device_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @memcpy(i8* %62, i32 %65, i64 %66)
  br label %68

68:                                               ; preds = %52, %39
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr i8, i8* %69, i64 4116
  %71 = load %struct.device_info*, %struct.device_info** %4, align 8
  %72 = getelementptr inbounds %struct.device_info, %struct.device_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.image_partition_entry*, %struct.image_partition_entry** %5, align 8
  %75 = call i32 @put_partitions(i8* %70, i32 %73, %struct.image_partition_entry* %74)
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr i8, i8* %76, i64 4
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr i8, i8* %78, i64 20
  %80 = load i64*, i64** %6, align 8
  %81 = load i64, i64* %80, align 8
  %82 = sub i64 %81, 20
  %83 = call i32 @put_md5(i8* %77, i8* %79, i64 %82)
  %84 = load i8*, i8** %8, align 8
  ret i8* %84
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @put32(i8*, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @put_partitions(i8*, i32, %struct.image_partition_entry*) #1

declare dso_local i32 @put_md5(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
