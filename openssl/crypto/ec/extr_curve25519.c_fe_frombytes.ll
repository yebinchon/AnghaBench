; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe_frombytes.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe_frombytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kTop39Bits = common dso_local global i32 0, align 4
@kTop38Bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*)* @fe_frombytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_frombytes(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @load_4(i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = call i32 @load_3(i32* %28)
  %30 = shl i32 %29, 6
  store i32 %30, i32* %6, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 7
  %33 = call i32 @load_3(i32* %32)
  %34 = shl i32 %33, 5
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 10
  %37 = call i32 @load_3(i32* %36)
  %38 = shl i32 %37, 3
  store i32 %38, i32* %8, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 13
  %41 = call i32 @load_3(i32* %40)
  %42 = shl i32 %41, 2
  store i32 %42, i32* %9, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 16
  %45 = call i32 @load_4(i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 20
  %48 = call i32 @load_3(i32* %47)
  %49 = shl i32 %48, 7
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 23
  %52 = call i32 @load_3(i32* %51)
  %53 = shl i32 %52, 5
  store i32 %53, i32* %12, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 26
  %56 = call i32 @load_3(i32* %55)
  %57 = shl i32 %56, 4
  store i32 %57, i32* %13, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 29
  %60 = call i32 @load_3(i32* %59)
  %61 = and i32 %60, 8388607
  %62 = shl i32 %61, 2
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 16777216
  store i32 %64, i32* %24, align 4
  %65 = load i32, i32* %24, align 4
  %66 = ashr i32 %65, 25
  %67 = mul nsw i32 %66, 19
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %24, align 4
  %71 = load i32, i32* @kTop39Bits, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 16777216
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = ashr i32 %77, 25
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* @kTop39Bits, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 16777216
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = ashr i32 %88, 25
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* @kTop39Bits, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 16777216
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %20, align 4
  %100 = ashr i32 %99, 25
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* @kTop39Bits, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 16777216
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %22, align 4
  %111 = ashr i32 %110, 25
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %22, align 4
  %115 = load i32, i32* @kTop39Bits, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* %12, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 33554432
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = ashr i32 %121, 26
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @kTop38Bits, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* %5, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 33554432
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = ashr i32 %132, 26
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* @kTop38Bits, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* %7, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 33554432
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* %19, align 4
  %144 = ashr i32 %143, 26
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* @kTop38Bits, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* %9, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 33554432
  store i32 %153, i32* %21, align 4
  %154 = load i32, i32* %21, align 4
  %155 = ashr i32 %154, 26
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* @kTop38Bits, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* %11, align 4
  %162 = sub nsw i32 %161, %160
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 33554432
  store i32 %164, i32* %23, align 4
  %165 = load i32, i32* %23, align 4
  %166 = ashr i32 %165, 26
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* @kTop38Bits, align 4
  %171 = and i32 %169, %170
  %172 = load i32, i32* %13, align 4
  %173 = sub nsw i32 %172, %171
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = load i64*, i64** %3, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  store i64 %175, i64* %177, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = load i64*, i64** %3, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 1
  store i64 %179, i64* %181, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = load i64*, i64** %3, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 2
  store i64 %183, i64* %185, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64*, i64** %3, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 3
  store i64 %187, i64* %189, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = load i64*, i64** %3, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 4
  store i64 %191, i64* %193, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = load i64*, i64** %3, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 5
  store i64 %195, i64* %197, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = load i64*, i64** %3, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 6
  store i64 %199, i64* %201, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = load i64*, i64** %3, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 7
  store i64 %203, i64* %205, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = load i64*, i64** %3, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 8
  store i64 %207, i64* %209, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64*, i64** %3, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 9
  store i64 %211, i64* %213, align 8
  ret void
}

declare dso_local i32 @load_4(i32*) #1

declare dso_local i32 @load_3(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
