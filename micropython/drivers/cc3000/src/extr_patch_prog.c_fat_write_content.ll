; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_patch_prog.c_fat_write_content.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_patch_prog.c_fat_write_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"LS\00", align 1
@NVMEM_RM_FILEID = common dso_local global i16 0, align 2
@BIT0 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i16*, i16*)* @fat_write_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fat_write_content(i16* %0, i16* %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca [48 x i8], align 16
  %8 = alloca i8*, align 8
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  store i16 0, i16* %5, align 2
  %9 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  store i8* %9, i8** %8, align 8
  %10 = call zeroext i8 @nvmem_write(i32 16, i32 2, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8 %10, i8* %6, align 1
  br label %11

11:                                               ; preds = %65, %2
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @NVMEM_RM_FILEID, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp sle i32 %13, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %11
  %18 = load i16*, i16** %3, align 8
  %19 = load i16, i16* %5, align 2
  %20 = zext i16 %19 to i64
  %21 = getelementptr inbounds i16, i16* %18, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @BIT0, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i16*, i16** %3, align 8
  %34 = load i16, i16* %5, align 2
  %35 = zext i16 %34 to i64
  %36 = getelementptr inbounds i16, i16* %33, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %8, align 8
  store i8 %41, i8* %42, align 1
  %44 = load i16*, i16** %4, align 8
  %45 = load i16, i16* %5, align 2
  %46 = zext i16 %45 to i64
  %47 = getelementptr inbounds i16, i16* %44, i64 %46
  %48 = load i16, i16* %47, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i16*, i16** %4, align 8
  %55 = load i16, i16* %5, align 2
  %56 = zext i16 %55 to i64
  %57 = getelementptr inbounds i16, i16* %54, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = ashr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  store i8 %62, i8* %63, align 1
  br label %65

65:                                               ; preds = %17
  %66 = load i16, i16* %5, align 2
  %67 = add i16 %66, 1
  store i16 %67, i16* %5, align 2
  br label %11

68:                                               ; preds = %11
  %69 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %70 = call zeroext i8 @nvmem_write(i32 16, i32 24, i32 4, i8* %69)
  store i8 %70, i8* %6, align 1
  %71 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 24
  %72 = call zeroext i8 @nvmem_write(i32 16, i32 24, i32 28, i8* %71)
  store i8 %72, i8* %6, align 1
  %73 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %74 = call i32 @memset(i8* %73, i32 0, i32 48)
  %75 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %76 = call zeroext i8 @nvmem_write(i32 16, i32 16, i32 52, i8* %75)
  store i8 %76, i8* %6, align 1
  %77 = load i8, i8* %6, align 1
  ret i8 %77
}

declare dso_local zeroext i8 @nvmem_write(i32, i32, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
