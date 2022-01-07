; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_mtd.c_mtd_check_open.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_mtd.c_mtd_check_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info_user = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not open mtd device: %s\0A\00", align 1
@MEMGETINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not get MTD device info from %s\0A\00", align 1
@mtdsize = common dso_local global i32 0, align 4
@erasesize = common dso_local global i32 0, align 4
@mtdtype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_check_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mtd_info_user, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @mtd_open(i8* %6, i32 0)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 -1, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MEMGETINFO, align 4
  %17 = call i64 @ioctl(i32 %15, i32 %16, %struct.mtd_info_user* %4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @close(i32 %23)
  store i32 -1, i32* %2, align 4
  br label %33

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %4, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @mtdsize, align 4
  %28 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %4, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* @erasesize, align 4
  %30 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* @mtdtype, align 4
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %25, %19, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @mtd_open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mtd_info_user*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
