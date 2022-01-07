; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/nvram/src/extr_nvram.c_nvram_to_staging.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/nvram/src/extr_nvram.c_nvram_to_staging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nvram_part_size = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@NVRAM_STAGING = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvram_to_staging() #0 {
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
  br i1 %13, label %14, label %50

14:                                               ; preds = %0
  %15 = load i32, i32* @nvram_part_size, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = call i32 (i8*, i32, ...) @open(i8* %18, i32 %19)
  store i32 %20, i32* %1, align 4
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load i32, i32* %1, align 4
  %24 = trunc i64 %9 to i32
  %25 = call i32 @read(i32 %23, i8* %11, i32 %24)
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %26, %9
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load i32, i32* @NVRAM_STAGING, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load i32, i32* @O_WRONLY, align 4
  %33 = load i32, i32* @O_CREAT, align 4
  %34 = or i32 %32, %33
  %35 = call i32 (i8*, i32, ...) @open(i8* %31, i32 %34, i32 384)
  store i32 %35, i32* %2, align 4
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load i32, i32* %2, align 4
  %39 = trunc i64 %9 to i32
  %40 = call i32 @write(i32 %38, i8* %11, i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @fsync(i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @close(i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %28
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @close(i32 %47)
  br label %49

49:                                               ; preds = %46, %17
  br label %50

50:                                               ; preds = %49, %14, %0
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i32, i32* %3, align 4
  %54 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %54)
  ret i32 %53
}

declare dso_local i8* @nvram_find_mtd(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @close(i32) #1

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
