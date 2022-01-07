; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rc2/extr_rc2_cbc.c_RC2_decrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rc2/extr_rc2_cbc.c_RC2_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RC2_decrypt(i64* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %14, align 8
  %22 = lshr i64 %21, 16
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i64*, i64** %3, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 65535
  store i32 %29, i32* %11, align 4
  %30 = load i64, i64* %14, align 8
  %31 = lshr i64 %30, 16
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  store i32 3, i32* %6, align 4
  store i32 5, i32* %5, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 63
  store i32* %36, i32** %7, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32* %40, i32** %8, align 8
  br label %41

41:                                               ; preds = %175, %2
  %42 = load i32, i32* %12, align 4
  %43 = shl i32 %42, 11
  %44 = load i32, i32* %12, align 4
  %45 = ashr i32 %44, 5
  %46 = or i32 %43, %45
  %47 = and i32 %46, 65535
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = sub nsw i32 %48, %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %54, %55
  %57 = sub nsw i32 %53, %56
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 -1
  store i32* %59, i32** %7, align 8
  %60 = load i32, i32* %58, align 4
  %61 = sub nsw i32 %57, %60
  %62 = and i32 %61, 65535
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = shl i32 %63, 13
  %65 = load i32, i32* %11, align 4
  %66 = ashr i32 %65, 3
  %67 = or i32 %64, %66
  %68 = and i32 %67, 65535
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %10, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = sub nsw i32 %69, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %75, %76
  %78 = sub nsw i32 %74, %77
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 -1
  store i32* %80, i32** %7, align 8
  %81 = load i32, i32* %79, align 4
  %82 = sub nsw i32 %78, %81
  %83 = and i32 %82, 65535
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = shl i32 %84, 14
  %86 = load i32, i32* %10, align 4
  %87 = ashr i32 %86, 2
  %88 = or i32 %85, %87
  %89 = and i32 %88, 65535
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %9, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = sub nsw i32 %90, %94
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %96, %97
  %99 = sub nsw i32 %95, %98
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 -1
  store i32* %101, i32** %7, align 8
  %102 = load i32, i32* %100, align 4
  %103 = sub nsw i32 %99, %102
  %104 = and i32 %103, 65535
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %9, align 4
  %106 = shl i32 %105, 15
  %107 = load i32, i32* %9, align 4
  %108 = ashr i32 %107, 1
  %109 = or i32 %106, %108
  %110 = and i32 %109, 65535
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %12, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = sub nsw i32 %111, %115
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = and i32 %117, %118
  %120 = sub nsw i32 %116, %119
  %121 = load i32*, i32** %7, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 -1
  store i32* %122, i32** %7, align 8
  %123 = load i32, i32* %121, align 4
  %124 = sub nsw i32 %120, %123
  %125 = and i32 %124, 65535
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %5, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %175

129:                                              ; preds = %41
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %6, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %176

134:                                              ; preds = %129
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 2
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 6, i32 5
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %11, align 4
  %142 = and i32 %141, 63
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %139, %145
  %147 = and i32 %146, 65535
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %10, align 4
  %151 = and i32 %150, 63
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %148, %154
  %156 = and i32 %155, 65535
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = and i32 %159, 63
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %157, %163
  %165 = and i32 %164, 65535
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %12, align 4
  %169 = and i32 %168, 63
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %166, %172
  %174 = and i32 %173, 65535
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %134, %41
  br label %41

176:                                              ; preds = %133
  %177 = load i32, i32* %9, align 4
  %178 = and i32 %177, 65535
  %179 = sext i32 %178 to i64
  %180 = load i32, i32* %10, align 4
  %181 = and i32 %180, 65535
  %182 = sext i32 %181 to i64
  %183 = shl i64 %182, 16
  %184 = or i64 %179, %183
  %185 = load i64*, i64** %3, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 0
  store i64 %184, i64* %186, align 8
  %187 = load i32, i32* %11, align 4
  %188 = and i32 %187, 65535
  %189 = sext i32 %188 to i64
  %190 = load i32, i32* %12, align 4
  %191 = and i32 %190, 65535
  %192 = sext i32 %191 to i64
  %193 = shl i64 %192, 16
  %194 = or i64 %189, %193
  %195 = load i64*, i64** %3, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 1
  store i64 %194, i64* %196, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
