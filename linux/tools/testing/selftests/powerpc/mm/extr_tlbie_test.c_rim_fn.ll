; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_tlbie_test.c_rim_fn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_tlbie_test.c_rim_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RIM_CHUNK_SIZE = common dso_local global i32 0, align 4
@corruption_found = common dso_local global i32 0, align 4
@timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rim_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rim_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @RIM_CHUNK_SIZE, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i8* @compute_chunk_start_addr(i32 %18)
  store i8* %19, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %9, align 4
  store i32* %9, i32** %10, align 8
  %21 = call i32 (...) @set_segv_handler()
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %11, align 8
  br label %24

24:                                               ; preds = %42, %1
  %25 = load i32*, i32** %11, align 8
  %26 = ptrtoint i32* %25 to i64
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %28, %30
  %32 = icmp ult i64 %26, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @compute_store_pattern(i32 %34, i32* %35, i32 %36)
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %11, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %33
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %11, align 8
  br label %24

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %107, %45
  %47 = load i32, i32* @corruption_found, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* @timeout, align 8
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %108

55:                                               ; preds = %53
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = bitcast i8* %59 to i32*
  store i32* %60, i32** %11, align 8
  br label %61

61:                                               ; preds = %104, %55
  %62 = load i32*, i32** %11, align 8
  %63 = ptrtoint i32* %62 to i64
  %64 = load i8*, i8** %6, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %65, %67
  %69 = icmp ult i64 %63, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %61
  %71 = load i32, i32* %4, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @compute_store_pattern(i32 %71, i32* %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @dcbf(i32* %75)
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store i32 1, i32* @corruption_found, align 4
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i32, i32* @corruption_found, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* @timeout, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %4, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @verify_chunk(i32 %90, i32* %91, i32 %92, i32 %93)
  store i8* null, i8** %2, align 8
  br label %109

95:                                               ; preds = %86
  %96 = load i32, i32* %4, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @compute_store_pattern(i32 %96, i32* %97, i32 %98)
  %100 = load i32*, i32** %10, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %11, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %95
  %105 = load i32*, i32** %11, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %11, align 8
  br label %61

107:                                              ; preds = %61
  br label %46

108:                                              ; preds = %53
  store i8* null, i8** %2, align 8
  br label %109

109:                                              ; preds = %108, %89
  %110 = load i8*, i8** %2, align 8
  ret i8* %110
}

declare dso_local i8* @compute_chunk_start_addr(i32) #1

declare dso_local i32 @set_segv_handler(...) #1

declare dso_local i32 @compute_store_pattern(i32, i32*, i32) #1

declare dso_local i32 @dcbf(i32*) #1

declare dso_local i32 @verify_chunk(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
