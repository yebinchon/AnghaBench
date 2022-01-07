; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_asm.c_bn_sqr_comba8.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_asm.c_bn_sqr_comba8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bn_sqr_comba8(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @sqr_add_c(i64* %8, i32 0, i64 %9, i64 %10, i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  store i64 %13, i64* %15, align 8
  store i64 0, i64* %5, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @sqr_add_c2(i64* %16, i32 1, i32 0, i64 %17, i64 %18, i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64*, i64** %3, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 %21, i64* %23, align 8
  store i64 0, i64* %6, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @sqr_add_c(i64* %24, i32 1, i64 %25, i64 %26, i64 %27)
  %29 = load i64*, i64** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @sqr_add_c2(i64* %29, i32 2, i32 0, i64 %30, i64 %31, i64 %32)
  %34 = load i64, i64* %7, align 8
  %35 = load i64*, i64** %3, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  store i64 %34, i64* %36, align 8
  store i64 0, i64* %7, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @sqr_add_c2(i64* %37, i32 3, i32 0, i64 %38, i64 %39, i64 %40)
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @sqr_add_c2(i64* %42, i32 2, i32 1, i64 %43, i64 %44, i64 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load i64*, i64** %3, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  store i64 %47, i64* %49, align 8
  store i64 0, i64* %5, align 8
  %50 = load i64*, i64** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @sqr_add_c(i64* %50, i32 2, i64 %51, i64 %52, i64 %53)
  %55 = load i64*, i64** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @sqr_add_c2(i64* %55, i32 3, i32 1, i64 %56, i64 %57, i64 %58)
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @sqr_add_c2(i64* %60, i32 4, i32 0, i64 %61, i64 %62, i64 %63)
  %65 = load i64, i64* %6, align 8
  %66 = load i64*, i64** %3, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 4
  store i64 %65, i64* %67, align 8
  store i64 0, i64* %6, align 8
  %68 = load i64*, i64** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @sqr_add_c2(i64* %68, i32 5, i32 0, i64 %69, i64 %70, i64 %71)
  %73 = load i64*, i64** %4, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @sqr_add_c2(i64* %73, i32 4, i32 1, i64 %74, i64 %75, i64 %76)
  %78 = load i64*, i64** %4, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @sqr_add_c2(i64* %78, i32 3, i32 2, i64 %79, i64 %80, i64 %81)
  %83 = load i64, i64* %7, align 8
  %84 = load i64*, i64** %3, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 5
  store i64 %83, i64* %85, align 8
  store i64 0, i64* %7, align 8
  %86 = load i64*, i64** %4, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @sqr_add_c(i64* %86, i32 3, i64 %87, i64 %88, i64 %89)
  %91 = load i64*, i64** %4, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @sqr_add_c2(i64* %91, i32 4, i32 2, i64 %92, i64 %93, i64 %94)
  %96 = load i64*, i64** %4, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @sqr_add_c2(i64* %96, i32 5, i32 1, i64 %97, i64 %98, i64 %99)
  %101 = load i64*, i64** %4, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @sqr_add_c2(i64* %101, i32 6, i32 0, i64 %102, i64 %103, i64 %104)
  %106 = load i64, i64* %5, align 8
  %107 = load i64*, i64** %3, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 6
  store i64 %106, i64* %108, align 8
  store i64 0, i64* %5, align 8
  %109 = load i64*, i64** %4, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @sqr_add_c2(i64* %109, i32 7, i32 0, i64 %110, i64 %111, i64 %112)
  %114 = load i64*, i64** %4, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @sqr_add_c2(i64* %114, i32 6, i32 1, i64 %115, i64 %116, i64 %117)
  %119 = load i64*, i64** %4, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %5, align 8
  %123 = call i32 @sqr_add_c2(i64* %119, i32 5, i32 2, i64 %120, i64 %121, i64 %122)
  %124 = load i64*, i64** %4, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @sqr_add_c2(i64* %124, i32 4, i32 3, i64 %125, i64 %126, i64 %127)
  %129 = load i64, i64* %6, align 8
  %130 = load i64*, i64** %3, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 7
  store i64 %129, i64* %131, align 8
  store i64 0, i64* %6, align 8
  %132 = load i64*, i64** %4, align 8
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @sqr_add_c(i64* %132, i32 4, i64 %133, i64 %134, i64 %135)
  %137 = load i64*, i64** %4, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %5, align 8
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @sqr_add_c2(i64* %137, i32 5, i32 3, i64 %138, i64 %139, i64 %140)
  %142 = load i64*, i64** %4, align 8
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %6, align 8
  %146 = call i32 @sqr_add_c2(i64* %142, i32 6, i32 2, i64 %143, i64 %144, i64 %145)
  %147 = load i64*, i64** %4, align 8
  %148 = load i64, i64* %7, align 8
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @sqr_add_c2(i64* %147, i32 7, i32 1, i64 %148, i64 %149, i64 %150)
  %152 = load i64, i64* %7, align 8
  %153 = load i64*, i64** %3, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 8
  store i64 %152, i64* %154, align 8
  store i64 0, i64* %7, align 8
  %155 = load i64*, i64** %4, align 8
  %156 = load i64, i64* %5, align 8
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @sqr_add_c2(i64* %155, i32 7, i32 2, i64 %156, i64 %157, i64 %158)
  %160 = load i64*, i64** %4, align 8
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* %6, align 8
  %163 = load i64, i64* %7, align 8
  %164 = call i32 @sqr_add_c2(i64* %160, i32 6, i32 3, i64 %161, i64 %162, i64 %163)
  %165 = load i64*, i64** %4, align 8
  %166 = load i64, i64* %5, align 8
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* %7, align 8
  %169 = call i32 @sqr_add_c2(i64* %165, i32 5, i32 4, i64 %166, i64 %167, i64 %168)
  %170 = load i64, i64* %5, align 8
  %171 = load i64*, i64** %3, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 9
  store i64 %170, i64* %172, align 8
  store i64 0, i64* %5, align 8
  %173 = load i64*, i64** %4, align 8
  %174 = load i64, i64* %6, align 8
  %175 = load i64, i64* %7, align 8
  %176 = load i64, i64* %5, align 8
  %177 = call i32 @sqr_add_c(i64* %173, i32 5, i64 %174, i64 %175, i64 %176)
  %178 = load i64*, i64** %4, align 8
  %179 = load i64, i64* %6, align 8
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* %5, align 8
  %182 = call i32 @sqr_add_c2(i64* %178, i32 6, i32 4, i64 %179, i64 %180, i64 %181)
  %183 = load i64*, i64** %4, align 8
  %184 = load i64, i64* %6, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* %5, align 8
  %187 = call i32 @sqr_add_c2(i64* %183, i32 7, i32 3, i64 %184, i64 %185, i64 %186)
  %188 = load i64, i64* %6, align 8
  %189 = load i64*, i64** %3, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 10
  store i64 %188, i64* %190, align 8
  store i64 0, i64* %6, align 8
  %191 = load i64*, i64** %4, align 8
  %192 = load i64, i64* %7, align 8
  %193 = load i64, i64* %5, align 8
  %194 = load i64, i64* %6, align 8
  %195 = call i32 @sqr_add_c2(i64* %191, i32 7, i32 4, i64 %192, i64 %193, i64 %194)
  %196 = load i64*, i64** %4, align 8
  %197 = load i64, i64* %7, align 8
  %198 = load i64, i64* %5, align 8
  %199 = load i64, i64* %6, align 8
  %200 = call i32 @sqr_add_c2(i64* %196, i32 6, i32 5, i64 %197, i64 %198, i64 %199)
  %201 = load i64, i64* %7, align 8
  %202 = load i64*, i64** %3, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 11
  store i64 %201, i64* %203, align 8
  store i64 0, i64* %7, align 8
  %204 = load i64*, i64** %4, align 8
  %205 = load i64, i64* %5, align 8
  %206 = load i64, i64* %6, align 8
  %207 = load i64, i64* %7, align 8
  %208 = call i32 @sqr_add_c(i64* %204, i32 6, i64 %205, i64 %206, i64 %207)
  %209 = load i64*, i64** %4, align 8
  %210 = load i64, i64* %5, align 8
  %211 = load i64, i64* %6, align 8
  %212 = load i64, i64* %7, align 8
  %213 = call i32 @sqr_add_c2(i64* %209, i32 7, i32 5, i64 %210, i64 %211, i64 %212)
  %214 = load i64, i64* %5, align 8
  %215 = load i64*, i64** %3, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 12
  store i64 %214, i64* %216, align 8
  store i64 0, i64* %5, align 8
  %217 = load i64*, i64** %4, align 8
  %218 = load i64, i64* %6, align 8
  %219 = load i64, i64* %7, align 8
  %220 = load i64, i64* %5, align 8
  %221 = call i32 @sqr_add_c2(i64* %217, i32 7, i32 6, i64 %218, i64 %219, i64 %220)
  %222 = load i64, i64* %6, align 8
  %223 = load i64*, i64** %3, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 13
  store i64 %222, i64* %224, align 8
  store i64 0, i64* %6, align 8
  %225 = load i64*, i64** %4, align 8
  %226 = load i64, i64* %7, align 8
  %227 = load i64, i64* %5, align 8
  %228 = load i64, i64* %6, align 8
  %229 = call i32 @sqr_add_c(i64* %225, i32 7, i64 %226, i64 %227, i64 %228)
  %230 = load i64, i64* %7, align 8
  %231 = load i64*, i64** %3, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 14
  store i64 %230, i64* %232, align 8
  %233 = load i64, i64* %5, align 8
  %234 = load i64*, i64** %3, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 15
  store i64 %233, i64* %235, align 8
  ret void
}

declare dso_local i32 @sqr_add_c(i64*, i32, i64, i64, i64) #1

declare dso_local i32 @sqr_add_c2(i64*, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
