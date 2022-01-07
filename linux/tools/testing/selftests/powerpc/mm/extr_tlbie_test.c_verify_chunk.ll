; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_tlbie_test.c_verify_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_tlbie_test.c_verify_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RIM_CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32)* @verify_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_chunk(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @RIM_CHUNK_SIZE, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i8* @compute_chunk_start_addr(i32 %17)
  store i8* %18, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @start_verification_log(i32 %19, i32* %20, i32 %21, i32 %22)
  %24 = load i8*, i8** %13, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %9, align 8
  br label %26

26:                                               ; preds = %64, %4
  %27 = load i32*, i32** %9, align 8
  %28 = ptrtoint i32* %27 to i64
  %29 = load i8*, i8** %13, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = icmp ult i64 %28, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %26
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ult i32* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %15, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @compute_store_pattern(i32 %44, i32* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @dcbf(i32* %48)
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %43
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @log_anamoly(i32 %58, i32* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %43
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %9, align 8
  br label %26

67:                                               ; preds = %26
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @end_verification_log(i32 %68, i32 %69)
  ret void
}

declare dso_local i8* @compute_chunk_start_addr(i32) #1

declare dso_local i32 @start_verification_log(i32, i32*, i32, i32) #1

declare dso_local i32 @compute_store_pattern(i32, i32*, i32) #1

declare dso_local i32 @dcbf(i32*) #1

declare dso_local i32 @log_anamoly(i32, i32*, i32, i32) #1

declare dso_local i32 @end_verification_log(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
