; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_cps2.c_optimise_sboxes.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_cps2.c_optimise_sboxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimised_sbox = type { i32*, i32* }
%struct.sbox = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.optimised_sbox*, %struct.sbox*)* @optimise_sboxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimise_sboxes(%struct.optimised_sbox* %0, %struct.sbox* %1) #0 {
  %3 = alloca %struct.optimised_sbox*, align 8
  %4 = alloca %struct.sbox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.optimised_sbox* %0, %struct.optimised_sbox** %3, align 8
  store %struct.sbox* %1, %struct.sbox** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %114, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %117

11:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %33, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.sbox*, %struct.sbox** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sbox, %struct.sbox* %17, i64 %19
  %21 = getelementptr inbounds %struct.sbox, %struct.sbox* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @extract_inputs(i32 %16, i32 %22)
  %24 = load %struct.optimised_sbox*, %struct.optimised_sbox** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %24, i64 %26
  %28 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %23, i32* %32, align 4
  br label %33

33:                                               ; preds = %15
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %12

36:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %110, %36
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 64
  br i1 %39, label %40, label %113

40:                                               ; preds = %37
  %41 = load %struct.sbox*, %struct.sbox** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sbox, %struct.sbox* %41, i64 %43
  %45 = getelementptr inbounds %struct.sbox, %struct.sbox* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.optimised_sbox*, %struct.optimised_sbox** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %51, i64 %53
  %55 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %40
  %64 = load %struct.sbox*, %struct.sbox** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sbox, %struct.sbox* %64, i64 %66
  %68 = getelementptr inbounds %struct.sbox, %struct.sbox* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 1, %71
  %73 = load %struct.optimised_sbox*, %struct.optimised_sbox** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %73, i64 %75
  %77 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %72
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %63, %40
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 2
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %84
  %89 = load %struct.sbox*, %struct.sbox** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.sbox, %struct.sbox* %89, i64 %91
  %93 = getelementptr inbounds %struct.sbox, %struct.sbox* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 1, %96
  %98 = load %struct.optimised_sbox*, %struct.optimised_sbox** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %98, i64 %100
  %102 = getelementptr inbounds %struct.optimised_sbox, %struct.optimised_sbox* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %97
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %88, %84
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %37

113:                                              ; preds = %37
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %8

117:                                              ; preds = %8
  ret void
}

declare dso_local i32 @extract_inputs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
