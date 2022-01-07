; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_uimage.c_uimage_verify_default.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_uimage.c_uimage_verify_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uimage_header = type { i64, i64, i64 }

@IH_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"invalid uImage magic: %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IH_OS_LINUX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid uImage OS: %08x\0A\00", align 1
@IH_TYPE_KERNEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid uImage type: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*)* @uimage_verify_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uimage_verify_default(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.uimage_header*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.uimage_header*
  store %struct.uimage_header* %10, %struct.uimage_header** %8, align 8
  %11 = load %struct.uimage_header*, %struct.uimage_header** %8, align 8
  %12 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @be32_to_cpu(i64 %13)
  %15 = load i64, i64* @IH_MAGIC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.uimage_header*, %struct.uimage_header** %8, align 8
  %19 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @be32_to_cpu(i64 %20)
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %54

25:                                               ; preds = %3
  %26 = load %struct.uimage_header*, %struct.uimage_header** %8, align 8
  %27 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IH_OS_LINUX, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.uimage_header*, %struct.uimage_header** %8, align 8
  %33 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @be32_to_cpu(i64 %34)
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %54

39:                                               ; preds = %25
  %40 = load %struct.uimage_header*, %struct.uimage_header** %8, align 8
  %41 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IH_TYPE_KERNEL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.uimage_header*, %struct.uimage_header** %8, align 8
  %47 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @be32_to_cpu(i64 %48)
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %45, %31, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
