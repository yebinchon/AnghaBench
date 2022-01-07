; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_em4100_blocks.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_em4100_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_sr98_em4100_blocks(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %57, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 4
  %20 = sub nsw i32 36, %19
  %21 = ashr i32 %17, %20
  %22 = and i32 %21, 15
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %40, %16
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %27, %28
  %30 = and i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = xor i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, %34
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %45, 5
  %47 = sub nsw i32 51, %46
  %48 = shl i32 %44, %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %50, 5
  %52 = sub nsw i32 50, %51
  %53 = shl i32 %49, %52
  %54 = or i32 %48, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %13

60:                                               ; preds = %13
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 4
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 3
  %67 = or i32 %63, %66
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 2
  %71 = or i32 %67, %70
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = shl i32 %73, 1
  %75 = or i32 %71, %74
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 1343552, i32* %79, align 4
  %80 = load i32, i32* %5, align 4
  %81 = ashr i32 %80, 32
  %82 = load i32*, i32** %3, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 %84, i32* %86, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
