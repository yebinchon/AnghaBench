; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/nvram/src/extr_nvram.c_staging_to_nvram.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/nvram/src/extr_nvram.c_staging_to_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nvram_part_size = common dso_local global i32 0, align 4
@NVRAM_STAGING = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staging_to_nvram() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = call i8* (...) @nvram_find_mtd()
  store i8* %7, i8** %4, align 8
  %8 = load i32, i32* @nvram_part_size, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  store i32 -1, i32* %3, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %57

14:                                               ; preds = %0
  %15 = load i32, i32* @nvram_part_size, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %14
  %18 = load i8*, i8** @NVRAM_STAGING, align 8
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = call i32 @open(i8* %18, i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %56

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = trunc i64 %9 to i32
  %25 = call i32 @read(i32 %23, i8* %11, i32 %24)
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %26, %9
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @O_WRONLY, align 4
  %31 = load i32, i32* @O_SYNC, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @open(i8* %29, i32 %32)
  store i32 %33, i32* %1, align 4
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* %1, align 4
  %37 = trunc i64 %9 to i32
  %38 = call i32 @write(i32 %36, i8* %11, i32 %37)
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @fsync(i32 %39)
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @close(i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %28
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** @NVRAM_STAGING, align 8
  %51 = call i64 @unlink(i8* %50)
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %44
  br label %56

56:                                               ; preds = %55, %17
  br label %57

57:                                               ; preds = %56, %14, %0
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32, i32* %3, align 4
  %61 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %61)
  ret i32 %60
}

declare dso_local i8* @nvram_find_mtd(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
