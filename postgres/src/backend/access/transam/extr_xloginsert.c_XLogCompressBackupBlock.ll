; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogCompressBackupBlock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogCompressBackupBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@BLCKSZ = common dso_local global i64 0, align 8
@SizeOfXLogRecordBlockCompressHeader = common dso_local global i64 0, align 8
@PGLZ_strategy_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i8*, i64*)* @XLogCompressBackupBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XLogCompressBackupBlock(i8* %0, i64 %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_2__, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load i64, i64* @BLCKSZ, align 8
  %18 = load i64, i64* %9, align 8
  %19 = sub nsw i64 %17, %18
  store i64 %19, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @memcpy(i8* %25, i8* %26, i64 %27)
  %29 = load i8*, i8** %15, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %33, %34
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i64, i64* @BLCKSZ, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %38, %39
  %41 = sub nsw i64 %37, %40
  %42 = call i32 @memcpy(i8* %31, i8* %36, i64 %41)
  %43 = load i64, i64* @SizeOfXLogRecordBlockCompressHeader, align 8
  store i64 %43, i64* %14, align 8
  br label %46

44:                                               ; preds = %5
  %45 = load i8*, i8** %7, align 8
  store i8* %45, i8** %15, align 8
  br label %46

46:                                               ; preds = %44, %22
  %47 = load i8*, i8** %15, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* @PGLZ_strategy_default, align 4
  %51 = call i64 @pglz_compress(i8* %47, i64 %48, i8* %49, i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* %12, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i64, i64* %13, align 8
  %62 = load i64*, i64** %11, align 8
  store i64 %61, i64* %62, align 8
  store i32 1, i32* %6, align 4
  br label %64

63:                                               ; preds = %54, %46
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @pglz_compress(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
