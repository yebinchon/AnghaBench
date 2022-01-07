; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp256.c_smallfelem_square.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp256.c_smallfelem_square.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @smallfelem_square to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smallfelem_square(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 64
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 64
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 64
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 2
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %5, align 4
  %78 = ashr i32 %77, 64
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %5, align 4
  %96 = ashr i32 %95, 64
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32*, i32** %3, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, 2
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32*, i32** %3, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %113, %116
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %5, align 4
  %120 = ashr i32 %119, 64
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32*, i32** %3, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32*, i32** %3, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %133, %136
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %5, align 4
  %140 = ashr i32 %139, 64
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load i32*, i32** %3, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load i32*, i32** %3, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 4
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %148, 2
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32*, i32** %3, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 5
  store i32 %150, i32* %152, align 4
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %155, %158
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %5, align 4
  %162 = ashr i32 %161, 64
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32*, i32** %3, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 5
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load i32*, i32** %3, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 5
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %170, 2
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load i32*, i32** %3, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 6
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %6, align 4
  %176 = load i32*, i32** %3, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 6
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load i32*, i32** %4, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %4, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %182, %185
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %5, align 4
  %189 = ashr i32 %188, 64
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load i32*, i32** %3, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 4
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %190
  store i32 %194, i32* %192, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load i32*, i32** %3, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 5
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load i32*, i32** %4, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %4, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 3
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %202, %205
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %5, align 4
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* %5, align 4
  %209 = ashr i32 %208, 64
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %7, align 4
  %211 = load i32*, i32** %3, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 6
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = load i32, i32* %6, align 4
  %216 = load i32*, i32** %3, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 7
  store i32 %215, i32* %217, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
