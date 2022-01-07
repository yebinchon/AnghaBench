; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test3_prpw_unaligned_12541bytes.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test3_prpw_unaligned_12541bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@start_addr = common dso_local global i32* null, align 8
@ADI_BLKSZ = common dso_local global i32 0, align 4
@TEST3_VERSION_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"\09Expected version %d but read version %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test3_prpw_unaligned_12541bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test3_prpw_unaligned_12541bytes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32*, i32** @start_addr, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 49152
  %15 = load i32, i32* @ADI_BLKSZ, align 4
  %16 = sub nsw i32 %15, 1
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = add nsw i32 %18, 17
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %4, align 8
  %21 = load i32, i32* @TEST3_VERSION_SZ, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %5, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %6, align 8
  %25 = load i32, i32* @TEST3_VERSION_SZ, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %44, %1
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @TEST3_VERSION_SZ, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = call zeroext i8 (...) @random_version()
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %24, i64 %35
  store i8 %33, i8* %36, align 1
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %24, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %27, i64 %42
  store i8 %40, i8* %43, align 1
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load i64, i64* %4, align 8
  %49 = load i32, i32* @ADI_BLKSZ, align 4
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %48, %50
  store i64 %51, i64* %8, align 8
  %52 = load i32, i32* %3, align 4
  %53 = trunc i64 %22 to i32
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @pwrite_adi(i32 %52, i8* %24, i32 %53, i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, %22
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  %61 = trunc i32 %60 to i8
  %62 = call i32 @TEST_STEP_FAILURE(i8 zeroext %61)
  br label %63

63:                                               ; preds = %59, %47
  %64 = load i32, i32* %3, align 4
  %65 = trunc i64 %22 to i32
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @pread_adi(i32 %64, i8* %24, i32 %65, i64 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %69, %22
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32, i32* %9, align 4
  %73 = trunc i32 %72 to i8
  %74 = call i32 @TEST_STEP_FAILURE(i8 zeroext %73)
  br label %75

75:                                               ; preds = %71, %63
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %105, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @TEST3_VERSION_SZ, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %108

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %27, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %24, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %85, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %80
  %93 = getelementptr inbounds i8, i8* %24, i64 0
  %94 = load i8, i8* %93, align 16
  %95 = call i32 @DEBUG_PRINT_L2(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %27, i8 zeroext %94)
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %27, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = sub nsw i32 0, %100
  %102 = trunc i32 %101 to i8
  %103 = call i32 @TEST_STEP_FAILURE(i8 zeroext %102)
  br label %104

104:                                              ; preds = %92, %80
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %76

108:                                              ; preds = %76
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @RETURN_FROM_TEST(i32 %110)
  %112 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local zeroext i8 @random_version(...) #2

declare dso_local i32 @pwrite_adi(i32, i8*, i32, i64) #2

declare dso_local i32 @TEST_STEP_FAILURE(i8 zeroext) #2

declare dso_local i32 @pread_adi(i32, i8*, i32, i64) #2

declare dso_local i32 @DEBUG_PRINT_L2(i8*, i8*, i8 zeroext) #2

declare dso_local i32 @RETURN_FROM_TEST(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
