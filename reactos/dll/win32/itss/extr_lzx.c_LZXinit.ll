; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_lzx.c_LZXinit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_lzx.c_LZXinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LZXstate = type { i32, i32, i32, i32, i32, i64*, i64*, i64, i64, i64, i32, i64, i64, i64, i64, i8* }

@extra_bits = common dso_local global i32* null, align 8
@LZX_NUM_CHARS = common dso_local global i64 0, align 8
@LZX_BLOCKTYPE_INVALID = common dso_local global i32 0, align 4
@LZX_MAINTREE_MAXSYMBOLS = common dso_local global i32 0, align 4
@LZX_LENGTH_MAXSYMBOLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.LZXstate* @LZXinit(i32 %0) #0 {
  %2 = alloca %struct.LZXstate*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.LZXstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.LZXstate* null, %struct.LZXstate** %4, align 8
  %7 = call i32 (...) @GetProcessHeap()
  %8 = call i8* @HeapAlloc(i32 %7, i32 0, i32 112)
  %9 = bitcast i8* %8 to %struct.LZXstate*
  store %struct.LZXstate* %9, %struct.LZXstate** %4, align 8
  %10 = call i32 (...) @GetProcessHeap()
  %11 = load i32, i32* %3, align 4
  %12 = call i8* @HeapAlloc(i32 %10, i32 0, i32 %11)
  %13 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %14 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %13, i32 0, i32 15
  store i8* %12, i8** %14, align 8
  %15 = icmp ne i8* %12, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i32 (...) @GetProcessHeap()
  %18 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %19 = call i32 @HeapFree(i32 %17, i32 0, %struct.LZXstate* %18)
  store %struct.LZXstate* null, %struct.LZXstate** %2, align 8
  br label %101

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %23 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %26 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %31, %20
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32*, i32** @extra_bits, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %43 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %42, i32 0, i32 4
  store i32 1, i32* %43, align 8
  %44 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %45 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  %46 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %47 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load i64, i64* @LZX_NUM_CHARS, align 8
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %54 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %53, i32 0, i32 14
  store i64 %52, i64* %54, align 8
  %55 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %56 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %55, i32 0, i32 13
  store i64 0, i64* %56, align 8
  %57 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %58 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %57, i32 0, i32 12
  store i64 0, i64* %58, align 8
  %59 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %60 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %59, i32 0, i32 11
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @LZX_BLOCKTYPE_INVALID, align 4
  %62 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %63 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 8
  %64 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %65 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %64, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %67 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %66, i32 0, i32 8
  store i64 0, i64* %67, align 8
  %68 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %69 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %68, i32 0, i32 7
  store i64 0, i64* %69, align 8
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %81, %41
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @LZX_MAINTREE_MAXSYMBOLS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %76 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %75, i32 0, i32 6
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %70

84:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %96, %84
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @LZX_LENGTH_MAXSYMBOLS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %91 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %90, i32 0, i32 5
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %85

99:                                               ; preds = %85
  %100 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  store %struct.LZXstate* %100, %struct.LZXstate** %2, align 8
  br label %101

101:                                              ; preds = %99, %16
  %102 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  ret %struct.LZXstate* %102
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.LZXstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
