; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_asm.c_bn_mul_comba4.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_asm.c_bn_mul_comba4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bn_mul_comba4(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @mul_add_c(i64 %12, i64 %15, i64 %16, i64 %17, i64 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load i64*, i64** %4, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %20, i64* %22, align 8
  store i64 0, i64* %7, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @mul_add_c(i64 %25, i64 %28, i64 %29, i64 %30, i64 %31)
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @mul_add_c(i64 %35, i64 %38, i64 %39, i64 %40, i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  store i64 %43, i64* %45, align 8
  store i64 0, i64* %8, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @mul_add_c(i64 %48, i64 %51, i64 %52, i64 %53, i64 %54)
  %56 = load i64*, i64** %5, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @mul_add_c(i64 %58, i64 %61, i64 %62, i64 %63, i64 %64)
  %66 = load i64*, i64** %5, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %6, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @mul_add_c(i64 %68, i64 %71, i64 %72, i64 %73, i64 %74)
  %76 = load i64, i64* %9, align 8
  %77 = load i64*, i64** %4, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  store i64 %76, i64* %78, align 8
  store i64 0, i64* %9, align 8
  %79 = load i64*, i64** %5, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %6, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @mul_add_c(i64 %81, i64 %84, i64 %85, i64 %86, i64 %87)
  %89 = load i64*, i64** %5, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %6, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @mul_add_c(i64 %91, i64 %94, i64 %95, i64 %96, i64 %97)
  %99 = load i64*, i64** %5, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %6, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @mul_add_c(i64 %101, i64 %104, i64 %105, i64 %106, i64 %107)
  %109 = load i64*, i64** %5, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %6, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @mul_add_c(i64 %111, i64 %114, i64 %115, i64 %116, i64 %117)
  %119 = load i64, i64* %7, align 8
  %120 = load i64*, i64** %4, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 3
  store i64 %119, i64* %121, align 8
  store i64 0, i64* %7, align 8
  %122 = load i64*, i64** %5, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 3
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %6, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i32 @mul_add_c(i64 %124, i64 %127, i64 %128, i64 %129, i64 %130)
  %132 = load i64*, i64** %5, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** %6, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* %7, align 8
  %141 = call i32 @mul_add_c(i64 %134, i64 %137, i64 %138, i64 %139, i64 %140)
  %142 = load i64*, i64** %5, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64*, i64** %6, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %7, align 8
  %151 = call i32 @mul_add_c(i64 %144, i64 %147, i64 %148, i64 %149, i64 %150)
  %152 = load i64, i64* %8, align 8
  %153 = load i64*, i64** %4, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 4
  store i64 %152, i64* %154, align 8
  store i64 0, i64* %8, align 8
  %155 = load i64*, i64** %5, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %6, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 3
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* %8, align 8
  %164 = call i32 @mul_add_c(i64 %157, i64 %160, i64 %161, i64 %162, i64 %163)
  %165 = load i64*, i64** %5, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 3
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %6, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* %8, align 8
  %174 = call i32 @mul_add_c(i64 %167, i64 %170, i64 %171, i64 %172, i64 %173)
  %175 = load i64, i64* %9, align 8
  %176 = load i64*, i64** %4, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 5
  store i64 %175, i64* %177, align 8
  store i64 0, i64* %9, align 8
  %178 = load i64*, i64** %5, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 3
  %180 = load i64, i64* %179, align 8
  %181 = load i64*, i64** %6, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 3
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %7, align 8
  %185 = load i64, i64* %8, align 8
  %186 = load i64, i64* %9, align 8
  %187 = call i32 @mul_add_c(i64 %180, i64 %183, i64 %184, i64 %185, i64 %186)
  %188 = load i64, i64* %7, align 8
  %189 = load i64*, i64** %4, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 6
  store i64 %188, i64* %190, align 8
  %191 = load i64, i64* %8, align 8
  %192 = load i64*, i64** %4, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 7
  store i64 %191, i64* %193, align 8
  ret void
}

declare dso_local i32 @mul_add_c(i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
