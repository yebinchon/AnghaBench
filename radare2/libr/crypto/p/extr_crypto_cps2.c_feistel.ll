; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_cps2.c_feistel.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_cps2.c_feistel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimised_sbox = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, %struct.optimised_sbox*, %struct.optimised_sbox*, %struct.optimised_sbox*, %struct.optimised_sbox*, i32, i32, i32, i32)* @feistel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feistel(i32 %0, i32* %1, i32* %2, %struct.optimised_sbox* %3, %struct.optimised_sbox* %4, %struct.optimised_sbox* %5, %struct.optimised_sbox* %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.optimised_sbox*, align 8
  %16 = alloca %struct.optimised_sbox*, align 8
  %17 = alloca %struct.optimised_sbox*, align 8
  %18 = alloca %struct.optimised_sbox*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store %struct.optimised_sbox* %3, %struct.optimised_sbox** %15, align 8
  store %struct.optimised_sbox* %4, %struct.optimised_sbox** %16, align 8
  store %struct.optimised_sbox* %5, %struct.optimised_sbox** %17, align 8
  store %struct.optimised_sbox* %6, %struct.optimised_sbox** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 7
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 6
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %14, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %14, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @BITSWAP8(i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49)
  store i32 %50, i32* %23, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 7
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @BITSWAP8(i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75)
  store i32 %76, i32* %24, align 4
  %77 = load i32, i32* %24, align 4
  %78 = load %struct.optimised_sbox*, %struct.optimised_sbox** %15, align 8
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @fn(i32 %77, %struct.optimised_sbox* %78, i32 %79)
  %81 = load i32, i32* %23, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %23, align 4
  %83 = load i32, i32* %23, align 4
  %84 = load %struct.optimised_sbox*, %struct.optimised_sbox** %16, align 8
  %85 = load i32, i32* %20, align 4
  %86 = call i32 @fn(i32 %83, %struct.optimised_sbox* %84, i32 %85)
  %87 = load i32, i32* %24, align 4
  %88 = xor i32 %87, %86
  store i32 %88, i32* %24, align 4
  %89 = load i32, i32* %24, align 4
  %90 = load %struct.optimised_sbox*, %struct.optimised_sbox** %17, align 8
  %91 = load i32, i32* %21, align 4
  %92 = call i32 @fn(i32 %89, %struct.optimised_sbox* %90, i32 %91)
  %93 = load i32, i32* %23, align 4
  %94 = xor i32 %93, %92
  store i32 %94, i32* %23, align 4
  %95 = load i32, i32* %23, align 4
  %96 = load %struct.optimised_sbox*, %struct.optimised_sbox** %18, align 8
  %97 = load i32, i32* %22, align 4
  %98 = call i32 @fn(i32 %95, %struct.optimised_sbox* %96, i32 %97)
  %99 = load i32, i32* %24, align 4
  %100 = xor i32 %99, %98
  store i32 %100, i32* %24, align 4
  %101 = load i32, i32* %23, align 4
  %102 = call i32 @BIT(i32 %101, i32 0)
  %103 = load i32*, i32** %13, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %102, %105
  %107 = load i32, i32* %23, align 4
  %108 = call i32 @BIT(i32 %107, i32 1)
  %109 = load i32*, i32** %13, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %108, %111
  %113 = or i32 %106, %112
  %114 = load i32, i32* %23, align 4
  %115 = call i32 @BIT(i32 %114, i32 2)
  %116 = load i32*, i32** %13, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %115, %118
  %120 = or i32 %113, %119
  %121 = load i32, i32* %23, align 4
  %122 = call i32 @BIT(i32 %121, i32 3)
  %123 = load i32*, i32** %13, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %122, %125
  %127 = or i32 %120, %126
  %128 = load i32, i32* %23, align 4
  %129 = call i32 @BIT(i32 %128, i32 4)
  %130 = load i32*, i32** %13, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %129, %132
  %134 = or i32 %127, %133
  %135 = load i32, i32* %23, align 4
  %136 = call i32 @BIT(i32 %135, i32 5)
  %137 = load i32*, i32** %13, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 5
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %136, %139
  %141 = or i32 %134, %140
  %142 = load i32, i32* %23, align 4
  %143 = call i32 @BIT(i32 %142, i32 6)
  %144 = load i32*, i32** %13, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 6
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %143, %146
  %148 = or i32 %141, %147
  %149 = load i32, i32* %23, align 4
  %150 = call i32 @BIT(i32 %149, i32 7)
  %151 = load i32*, i32** %13, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 7
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %150, %153
  %155 = or i32 %148, %154
  %156 = load i32, i32* %24, align 4
  %157 = call i32 @BIT(i32 %156, i32 0)
  %158 = load i32*, i32** %14, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %157, %160
  %162 = or i32 %155, %161
  %163 = load i32, i32* %24, align 4
  %164 = call i32 @BIT(i32 %163, i32 1)
  %165 = load i32*, i32** %14, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %164, %167
  %169 = or i32 %162, %168
  %170 = load i32, i32* %24, align 4
  %171 = call i32 @BIT(i32 %170, i32 2)
  %172 = load i32*, i32** %14, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %171, %174
  %176 = or i32 %169, %175
  %177 = load i32, i32* %24, align 4
  %178 = call i32 @BIT(i32 %177, i32 3)
  %179 = load i32*, i32** %14, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %178, %181
  %183 = or i32 %176, %182
  %184 = load i32, i32* %24, align 4
  %185 = call i32 @BIT(i32 %184, i32 4)
  %186 = load i32*, i32** %14, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 4
  %188 = load i32, i32* %187, align 4
  %189 = shl i32 %185, %188
  %190 = or i32 %183, %189
  %191 = load i32, i32* %24, align 4
  %192 = call i32 @BIT(i32 %191, i32 5)
  %193 = load i32*, i32** %14, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 5
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %192, %195
  %197 = or i32 %190, %196
  %198 = load i32, i32* %24, align 4
  %199 = call i32 @BIT(i32 %198, i32 6)
  %200 = load i32*, i32** %14, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 6
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 %199, %202
  %204 = or i32 %197, %203
  %205 = load i32, i32* %24, align 4
  %206 = call i32 @BIT(i32 %205, i32 7)
  %207 = load i32*, i32** %14, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 7
  %209 = load i32, i32* %208, align 4
  %210 = shl i32 %206, %209
  %211 = or i32 %204, %210
  ret i32 %211
}

declare dso_local i32 @BITSWAP8(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fn(i32, %struct.optimised_sbox*, i32) #1

declare dso_local i32 @BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
