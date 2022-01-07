; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_lzx.c_LZXreset.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_lzx.c_LZXreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LZXstate = type { i32, i32, i32, i64*, i64*, i64, i64, i64, i32, i64, i64, i64 }

@LZX_BLOCKTYPE_INVALID = common dso_local global i32 0, align 4
@LZX_MAINTREE_MAXSYMBOLS = common dso_local global i32 0, align 4
@LZX_LENTABLE_SAFETY = common dso_local global i32 0, align 4
@LZX_LENGTH_MAXSYMBOLS = common dso_local global i32 0, align 4
@DECR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZXreset(%struct.LZXstate* %0) #0 {
  %2 = alloca %struct.LZXstate*, align 8
  %3 = alloca i32, align 4
  store %struct.LZXstate* %0, %struct.LZXstate** %2, align 8
  %4 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  %5 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %4, i32 0, i32 2
  store i32 1, i32* %5, align 8
  %6 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  %7 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %6, i32 0, i32 1
  store i32 1, i32* %7, align 4
  %8 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  %9 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  %11 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %10, i32 0, i32 11
  store i64 0, i64* %11, align 8
  %12 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  %13 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %12, i32 0, i32 10
  store i64 0, i64* %13, align 8
  %14 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  %15 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %14, i32 0, i32 9
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @LZX_BLOCKTYPE_INVALID, align 4
  %17 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  %18 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 8
  %19 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  %20 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  %21 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  %22 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  %24 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %38, %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @LZX_MAINTREE_MAXSYMBOLS, align 4
  %28 = load i32, i32* @LZX_LENTABLE_SAFETY, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  %33 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %32, i32 0, i32 4
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %25

41:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @LZX_LENGTH_MAXSYMBOLS, align 4
  %45 = load i32, i32* @LZX_LENTABLE_SAFETY, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  %50 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load i32, i32* @DECR_OK, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
