; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_walmethods.c_tar_write_padding_data.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_walmethods.c_tar_write_padding_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@XLOG_BLCKSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @tar_write_padding_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tar_write_padding_data(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_2__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XLOG_BLCKSZ, align 4
  %14 = call i32 @memset(i32 %12, i32 0, i32 %13)
  br label %15

15:                                               ; preds = %30, %2
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @XLOG_BLCKSZ, align 4
  %21 = call i64 @Min(i64 %19, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @tar_write(i32* %22, i32 %24, i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %35

30:                                               ; preds = %18
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 %32, %31
  store i64 %33, i64* %7, align 8
  br label %15

34:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @Min(i64, i32) #1

declare dso_local i64 @tar_write(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
