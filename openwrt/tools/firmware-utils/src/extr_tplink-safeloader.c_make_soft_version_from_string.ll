; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_tplink-safeloader.c_make_soft_version_from_string.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_tplink-safeloader.c_make_soft_version_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_partition_entry = type { i64* }

@.str = private unnamed_addr constant [13 x i8] c"soft-version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i8*)* @make_soft_version_from_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @make_soft_version_from_string(i8* %0) #0 {
  %2 = alloca %struct.image_partition_entry, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 8, %11
  %13 = add i64 %12, 1
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64* @alloc_image_partition(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  store i64* %15, i64** %16, align 8
  %17 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = bitcast i64* %18 to i32*
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @htonl(i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @memcpy(i32* %27, i8* %28, i32 %29)
  %31 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  ret i64* %37
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64* @alloc_image_partition(i8*, i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
