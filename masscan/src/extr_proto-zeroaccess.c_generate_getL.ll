; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-zeroaccess.c_generate_getL.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-zeroaccess.c_generate_getL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Lteg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @generate_getL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_getL(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

13:                                               ; preds = %3
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 16)
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 4
  %17 = call i32 @memcpy(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %18 = load i32, i32* %7, align 4
  %19 = lshr i32 %18, 24
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 12
  store i8 %20, i8* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 13
  store i8 %24, i8* %25, align 1
  %26 = load i32, i32* %7, align 4
  %27 = lshr i32 %26, 8
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 14
  store i8 %28, i8* %29, align 2
  %30 = load i32, i32* %7, align 4
  %31 = lshr i32 %30, 0
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 15
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %35 = call i32 @crc_calc(i8* %34, i32 16)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = lshr i32 %36, 24
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 3
  store i8 %38, i8* %39, align 1
  %40 = load i32, i32* %9, align 4
  %41 = lshr i32 %40, 16
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 2
  store i8 %42, i8* %43, align 2
  %44 = load i32, i32* %9, align 4
  %45 = lshr i32 %44, 8
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 1
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %9, align 4
  %49 = lshr i32 %48, 0
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  store i8 %50, i8* %51, align 16
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @zadecrypt(i8* %52, i32 16, i8* %53, i32 16)
  store i32 16, i32* %4, align 4
  br label %55

55:                                               ; preds = %13, %12
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @crc_calc(i8*, i32) #1

declare dso_local i32 @zadecrypt(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
