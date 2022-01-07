; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cast/extr_c_enc.c_CAST_cbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cast/extr_c_enc.c_CAST_cbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CAST_cbc_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca [2 x i32], align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %19, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %111

24:                                               ; preds = %6
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @n2l(i8* %25, i32 %26)
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @n2l(i8* %28, i32 %29)
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 -8
  store i8* %32, i8** %11, align 8
  %33 = load i64, i64* %19, align 8
  %34 = sub nsw i64 %33, 8
  store i64 %34, i64* %19, align 8
  br label %35

35:                                               ; preds = %68, %24
  %36 = load i64, i64* %19, align 8
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @n2l(i8* %39, i32 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @n2l(i8* %42, i32 %43)
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %13, align 4
  %47 = xor i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %14, align 4
  %50 = xor i32 %49, %48
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %14, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @CAST_encrypt(i32* %55, i32* %56)
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @l2n(i32 %62, i8* %63)
  %65 = load i32, i32* %16, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @l2n(i32 %65, i8* %66)
  br label %68

68:                                               ; preds = %38
  %69 = load i64, i64* %19, align 8
  %70 = sub nsw i64 %69, 8
  store i64 %70, i64* %19, align 8
  br label %35

71:                                               ; preds = %35
  %72 = load i64, i64* %19, align 8
  %73 = icmp ne i64 %72, -8
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i64, i64* %19, align 8
  %79 = add nsw i64 %78, 8
  %80 = call i32 @n2ln(i8* %75, i32 %76, i32 %77, i64 %79)
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %13, align 4
  %83 = xor i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %14, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %14, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @CAST_encrypt(i32* %91, i32* %92)
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %15, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @l2n(i32 %98, i8* %99)
  %101 = load i32, i32* %16, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @l2n(i32 %101, i8* %102)
  br label %104

104:                                              ; preds = %74, %71
  %105 = load i32, i32* %15, align 4
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @l2n(i32 %105, i8* %106)
  %108 = load i32, i32* %16, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 @l2n(i32 %108, i8* %109)
  br label %198

111:                                              ; preds = %6
  %112 = load i8*, i8** %11, align 8
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @n2l(i8* %112, i32 %113)
  %115 = load i8*, i8** %11, align 8
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @n2l(i8* %115, i32 %116)
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 -8
  store i8* %119, i8** %11, align 8
  %120 = load i64, i64* %19, align 8
  %121 = sub nsw i64 %120, 8
  store i64 %121, i64* %19, align 8
  br label %122

122:                                              ; preds = %155, %111
  %123 = load i64, i64* %19, align 8
  %124 = icmp sge i64 %123, 0
  br i1 %124, label %125, label %158

125:                                              ; preds = %122
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @n2l(i8* %126, i32 %127)
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @n2l(i8* %129, i32 %130)
  %132 = load i32, i32* %13, align 4
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %14, align 4
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %134, i32* %135, align 4
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %137 = load i32*, i32** %10, align 8
  %138 = call i32 @CAST_decrypt(i32* %136, i32* %137)
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %17, align 4
  %142 = xor i32 %140, %141
  store i32 %142, i32* %15, align 4
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %18, align 4
  %146 = xor i32 %144, %145
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 @l2n(i32 %147, i8* %148)
  %150 = load i32, i32* %16, align 4
  %151 = load i8*, i8** %8, align 8
  %152 = call i32 @l2n(i32 %150, i8* %151)
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %18, align 4
  br label %155

155:                                              ; preds = %125
  %156 = load i64, i64* %19, align 8
  %157 = sub nsw i64 %156, 8
  store i64 %157, i64* %19, align 8
  br label %122

158:                                              ; preds = %122
  %159 = load i64, i64* %19, align 8
  %160 = icmp ne i64 %159, -8
  br i1 %160, label %161, label %191

161:                                              ; preds = %158
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @n2l(i8* %162, i32 %163)
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @n2l(i8* %165, i32 %166)
  %168 = load i32, i32* %13, align 4
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* %14, align 4
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %170, i32* %171, align 4
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @CAST_decrypt(i32* %172, i32* %173)
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %17, align 4
  %178 = xor i32 %176, %177
  store i32 %178, i32* %15, align 4
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %18, align 4
  %182 = xor i32 %180, %181
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %16, align 4
  %185 = load i8*, i8** %8, align 8
  %186 = load i64, i64* %19, align 8
  %187 = add nsw i64 %186, 8
  %188 = call i32 @l2nn(i32 %183, i32 %184, i8* %185, i64 %187)
  %189 = load i32, i32* %13, align 4
  store i32 %189, i32* %17, align 4
  %190 = load i32, i32* %14, align 4
  store i32 %190, i32* %18, align 4
  br label %191

191:                                              ; preds = %161, %158
  %192 = load i32, i32* %17, align 4
  %193 = load i8*, i8** %11, align 8
  %194 = call i32 @l2n(i32 %192, i8* %193)
  %195 = load i32, i32* %18, align 4
  %196 = load i8*, i8** %11, align 8
  %197 = call i32 @l2n(i32 %195, i8* %196)
  br label %198

198:                                              ; preds = %191, %104
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 0, i32* %199, align 4
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 0, i32* %200, align 4
  ret void
}

declare dso_local i32 @n2l(i8*, i32) #1

declare dso_local i32 @CAST_encrypt(i32*, i32*) #1

declare dso_local i32 @l2n(i32, i8*) #1

declare dso_local i32 @n2ln(i8*, i32, i32, i64) #1

declare dso_local i32 @CAST_decrypt(i32*, i32*) #1

declare dso_local i32 @l2nn(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
