; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp224.c_felem_contract.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp224.c_felem_contract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@felem_contract.two56 = internal constant i32 -2147483648, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @felem_contract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @felem_contract(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %9, i32* %10, align 16
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %17, i32* %18, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 56
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %29 = load i32, i32* %28, align 16
  %30 = sub nsw i32 %29, %27
  store i32 %30, i32* %28, align 16
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %31, 40
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = and i64 %38, 72057594037927935
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = or i64 %52, 1099511627775
  %54 = and i64 %48, %53
  %55 = add nsw i64 %54, 1
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = and i64 %63, 1099511627775
  %65 = add nsw i64 %59, %64
  %66 = trunc i64 %65 to i32
  %67 = sub nsw i32 %66, 1
  %68 = ashr i32 %67, 63
  %69 = sext i32 %68 to i64
  %70 = or i64 %55, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = and i64 %73, 72057594037927935
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %76, 1
  %78 = ashr i32 %77, 63
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = xor i64 %80, -1
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = and i64 %84, %81
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = xor i64 %88, -1
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = and i64 %92, %89
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = xor i64 %96, -1
  %98 = or i64 %97, 1099511627775
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = and i64 %101, %98
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  %104 = load i32, i32* %6, align 4
  %105 = and i32 1, %104
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = sub nsw i32 %107, %105
  store i32 %108, i32* %106, align 16
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %110 = load i32, i32* %109, align 16
  %111 = ashr i32 %110, 63
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = and i32 -2147483648, %112
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %115 = load i32, i32* %114, align 16
  %116 = add nsw i32 %115, %113
  store i32 %116, i32* %114, align 16
  %117 = load i32, i32* %6, align 4
  %118 = and i32 1, %117
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, %118
  store i32 %121, i32* %119, align 4
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 56
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, %124
  store i32 %127, i32* %125, align 8
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = and i64 %130, 72057594037927935
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %134 = load i32, i32* %133, align 8
  %135 = ashr i32 %134, 56
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %135
  store i32 %138, i32* %136, align 4
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = and i64 %141, 72057594037927935
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 8
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = load i32*, i32** %3, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %145, i32* %147, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %3, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %3, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  store i32 %153, i32* %155, align 4
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %3, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 3
  store i32 %157, i32* %159, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
