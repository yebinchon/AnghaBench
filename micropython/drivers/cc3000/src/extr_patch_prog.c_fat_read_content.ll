; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_patch_prog.c_fat_read_content.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_patch_prog.c_fat_read_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVMEM_RM_FILEID = common dso_local global i16 0, align 2
@BIT0 = common dso_local global i8 0, align 1
@BIT1 = common dso_local global i8 0, align 1
@BIT2 = common dso_local global i8 0, align 1
@BIT4 = common dso_local global i8 0, align 1
@BIT5 = common dso_local global i8 0, align 1
@BIT6 = common dso_local global i8 0, align 1
@BIT7 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i8*, i8*, i16*, i16*)* @fat_read_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fat_read_content(i8* %0, i8* %1, i8* %2, i16* %3, i16* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca [48 x i8], align 16
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i16* %3, i16** %9, align 8
  store i16* %4, i16** %10, align 8
  %15 = getelementptr inbounds [48 x i8], [48 x i8]* %13, i64 0, i64 0
  store i8* %15, i8** %14, align 8
  store i16 0, i16* %11, align 2
  br label %16

16:                                               ; preds = %29, %5
  %17 = load i16, i16* %11, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i16, i16* %11, align 2
  %22 = zext i16 %21 to i32
  %23 = mul nsw i32 8, %22
  %24 = add nsw i32 4, %23
  %25 = load i8*, i8** %14, align 8
  %26 = call zeroext i8 @nvmem_read(i32 16, i32 8, i32 %24, i8* %25)
  store i8 %26, i8* %12, align 1
  %27 = load i8*, i8** %14, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 8
  store i8* %28, i8** %14, align 8
  br label %29

29:                                               ; preds = %20
  %30 = load i16, i16* %11, align 2
  %31 = add i16 %30, 1
  store i16 %31, i16* %11, align 2
  br label %16

32:                                               ; preds = %16
  %33 = getelementptr inbounds [48 x i8], [48 x i8]* %13, i64 0, i64 0
  store i8* %33, i8** %14, align 8
  store i16 0, i16* %11, align 2
  br label %34

34:                                               ; preds = %121, %32
  %35 = load i16, i16* %11, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* @NVMEM_RM_FILEID, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp sle i32 %36, %38
  br i1 %39, label %40, label %124

40:                                               ; preds = %34
  %41 = load i8*, i8** %14, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @BIT0, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %43, %45
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  store i8 %47, i8* %48, align 1
  %50 = load i8*, i8** %14, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @BIT1, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %52, %54
  %56 = ashr i32 %55, 1
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  store i8 %57, i8* %58, align 1
  %60 = load i8*, i8** %14, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @BIT2, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = ashr i32 %65, 2
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  store i8 %67, i8* %68, align 1
  %70 = load i8*, i8** %14, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 8
  %75 = load i8*, i8** %14, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %74, %77
  %79 = load i8, i8* @BIT4, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @BIT5, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %80, %82
  %84 = load i8, i8* @BIT6, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %83, %85
  %87 = load i8, i8* @BIT7, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %86, %88
  %90 = and i32 %78, %89
  %91 = trunc i32 %90 to i16
  %92 = load i16*, i16** %9, align 8
  %93 = getelementptr inbounds i16, i16* %92, i32 1
  store i16* %93, i16** %9, align 8
  store i16 %91, i16* %92, align 2
  %94 = load i8*, i8** %14, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 8
  %99 = load i8*, i8** %14, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %98, %102
  %104 = load i8, i8* @BIT4, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @BIT5, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %105, %107
  %109 = load i8, i8* @BIT6, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %108, %110
  %112 = load i8, i8* @BIT7, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %111, %113
  %115 = and i32 %103, %114
  %116 = trunc i32 %115 to i16
  %117 = load i16*, i16** %10, align 8
  %118 = getelementptr inbounds i16, i16* %117, i32 1
  store i16* %118, i16** %10, align 8
  store i16 %116, i16* %117, align 2
  %119 = load i8*, i8** %14, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 4
  store i8* %120, i8** %14, align 8
  br label %121

121:                                              ; preds = %40
  %122 = load i16, i16* %11, align 2
  %123 = add i16 %122, 1
  store i16 %123, i16* %11, align 2
  br label %34

124:                                              ; preds = %34
  %125 = load i8, i8* %12, align 1
  ret i8 %125
}

declare dso_local zeroext i8 @nvmem_read(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
