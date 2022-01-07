; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_pread_adi.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_pread_adi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@pread_stats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\09pread elapsed timed = %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"\09Read  %d bytes starting at offset 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\09\090x%lx\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i64)* @pread_adi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pread_adi(i32 %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %13, align 8
  br label %18

18:                                               ; preds = %54, %4
  %19 = load i64, i64* %14, align 8
  %20 = call i32 @RDTICK(i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @pread(i32 %21, i8* %25, i32 %28, i64 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i64, i64* %15, align 8
  %32 = call i32 @RDTICK(i64 %31)
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load i32, i32* @errno, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %84

38:                                               ; preds = %18
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* %14, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load i64, i64* %16, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @update_stats(i32* @pread_stats, i64 %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %13, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %13, align 8
  br label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %18, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %16, align 8
  %60 = call i32 @DEBUG_PRINT_T(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* %12, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @DEBUG_PRINT_L3(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %62)
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %79, %58
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %69, %71
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @DEBUG_PRINT_L4(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %72, i8 zeroext %77)
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %64

82:                                               ; preds = %64
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %35
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @RDTICK(i64) #1

declare dso_local i32 @pread(i32, i8*, i32, i64) #1

declare dso_local i32 @update_stats(i32*, i64, i32) #1

declare dso_local i32 @DEBUG_PRINT_T(i8*, i64) #1

declare dso_local i32 @DEBUG_PRINT_L3(i8*, i32, i64) #1

declare dso_local i32 @DEBUG_PRINT_L4(i8*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
