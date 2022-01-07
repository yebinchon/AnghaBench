; ModuleID = '/home/carl/AnghaBench/radare2/libr/hash/extr_xxhash.c_XXH32_getIntermediateResult.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/hash/extr_xxhash.c_XXH32_getIntermediateResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.XXH_state32_t = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@PRIME32_5 = common dso_local global i32 0, align 4
@PRIME32_3 = common dso_local global i32 0, align 4
@PRIME32_4 = common dso_local global i32 0, align 4
@PRIME32_1 = common dso_local global i32 0, align 4
@PRIME32_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32_getIntermediateResult(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.XXH_state32_t*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.XXH_state32_t*
  store %struct.XXH_state32_t* %8, %struct.XXH_state32_t** %3, align 8
  %9 = load %struct.XXH_state32_t*, %struct.XXH_state32_t** %3, align 8
  %10 = getelementptr inbounds %struct.XXH_state32_t, %struct.XXH_state32_t* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %4, align 8
  %13 = load %struct.XXH_state32_t*, %struct.XXH_state32_t** %3, align 8
  %14 = getelementptr inbounds %struct.XXH_state32_t, %struct.XXH_state32_t* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load %struct.XXH_state32_t*, %struct.XXH_state32_t** %3, align 8
  %18 = getelementptr inbounds %struct.XXH_state32_t, %struct.XXH_state32_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %5, align 8
  %22 = load %struct.XXH_state32_t*, %struct.XXH_state32_t** %3, align 8
  %23 = getelementptr inbounds %struct.XXH_state32_t, %struct.XXH_state32_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 16
  br i1 %25, label %26, label %46

26:                                               ; preds = %1
  %27 = load %struct.XXH_state32_t*, %struct.XXH_state32_t** %3, align 8
  %28 = getelementptr inbounds %struct.XXH_state32_t, %struct.XXH_state32_t* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @XXH_rotl32(i32 %29, i32 1)
  %31 = load %struct.XXH_state32_t*, %struct.XXH_state32_t** %3, align 8
  %32 = getelementptr inbounds %struct.XXH_state32_t, %struct.XXH_state32_t* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @XXH_rotl32(i32 %33, i32 7)
  %35 = add nsw i32 %30, %34
  %36 = load %struct.XXH_state32_t*, %struct.XXH_state32_t** %3, align 8
  %37 = getelementptr inbounds %struct.XXH_state32_t, %struct.XXH_state32_t* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @XXH_rotl32(i32 %38, i32 12)
  %40 = add nsw i32 %35, %39
  %41 = load %struct.XXH_state32_t*, %struct.XXH_state32_t** %3, align 8
  %42 = getelementptr inbounds %struct.XXH_state32_t, %struct.XXH_state32_t* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @XXH_rotl32(i32 %43, i32 18)
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* %6, align 4
  br label %52

46:                                               ; preds = %1
  %47 = load %struct.XXH_state32_t*, %struct.XXH_state32_t** %3, align 8
  %48 = getelementptr inbounds %struct.XXH_state32_t, %struct.XXH_state32_t* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PRIME32_5, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %46, %26
  %53 = load %struct.XXH_state32_t*, %struct.XXH_state32_t** %3, align 8
  %54 = getelementptr inbounds %struct.XXH_state32_t, %struct.XXH_state32_t* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %63, %52
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 -4
  %62 = icmp ule i32* %59, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @r_read_le32(i32* %64)
  %66 = load i32, i32* @PRIME32_3, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @XXH_rotl32(i32 %70, i32 17)
  %72 = load i32, i32* @PRIME32_4, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32* %75, i32** %4, align 8
  br label %58

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = icmp ult i32* %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PRIME32_5, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @XXH_rotl32(i32 %88, i32 11)
  %90 = load i32, i32* @PRIME32_1, align 4
  %91 = mul nsw i32 %89, %90
  store i32 %91, i32* %6, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %4, align 8
  br label %77

94:                                               ; preds = %77
  %95 = load i32, i32* %6, align 4
  %96 = ashr i32 %95, 15
  %97 = load i32, i32* %6, align 4
  %98 = xor i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @PRIME32_2, align 4
  %100 = load i32, i32* %6, align 4
  %101 = mul nsw i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = ashr i32 %102, 13
  %104 = load i32, i32* %6, align 4
  %105 = xor i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* @PRIME32_3, align 4
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 %107, %106
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = ashr i32 %109, 16
  %111 = load i32, i32* %6, align 4
  %112 = xor i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @XXH_rotl32(i32, i32) #1

declare dso_local i32 @r_read_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
