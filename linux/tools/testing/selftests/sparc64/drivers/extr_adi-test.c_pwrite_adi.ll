; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_pwrite_adi.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_pwrite_adi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pwrite(): error %d: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@pwrite_stats = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"\09pwrite elapsed timed = %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"\09Wrote %d of %d bytes starting at address 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i64)* @pwrite_adi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwrite_adi(i32 %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %12, align 8
  br label %17

17:                                               ; preds = %58, %4
  %18 = load i64, i64* %13, align 8
  %19 = call i32 @RDTICK(i64 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @pwrite(i32 %20, i8* %24, i32 %27, i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i64, i64* %14, align 8
  %31 = call i32 @RDTICK(i64 %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %17
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = call i8* @strerror(i32 %37)
  %39 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %38)
  %40 = load i32, i32* @errno, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %70

42:                                               ; preds = %17
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %13, align 8
  %45 = sub nsw i64 %43, %44
  %46 = load i64, i64* %15, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @update_stats(i32* @pwrite_stats, i64 %48, i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %17, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %15, align 8
  %64 = call i32 @DEBUG_PRINT_T(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @DEBUG_PRINT_L3(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66, i64 %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %62, %34
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @RDTICK(i64) #1

declare dso_local i32 @pwrite(i32, i8*, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @update_stats(i32*, i64, i32) #1

declare dso_local i32 @DEBUG_PRINT_T(i8*, i64) #1

declare dso_local i32 @DEBUG_PRINT_L3(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
