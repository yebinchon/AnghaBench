; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe_pow22523.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe_pow22523.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @fe_pow22523 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_pow22523(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @fe_sq(i32 %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @fe_sq(i32 %12, i32 %13)
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %22, %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @fe_sq(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %15

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @fe_mul(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @fe_mul(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @fe_sq(i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @fe_mul(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @fe_sq(i32 %41, i32 %42)
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %51, %25
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 5
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @fe_sq(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %44

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @fe_mul(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @fe_sq(i32 %59, i32 %60)
  store i32 1, i32* %8, align 4
  br label %62

62:                                               ; preds = %69, %54
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 10
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @fe_sq(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %62

72:                                               ; preds = %62
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @fe_mul(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @fe_sq(i32 %77, i32 %78)
  store i32 1, i32* %8, align 4
  br label %80

80:                                               ; preds = %87, %72
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 20
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @fe_sq(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %80

90:                                               ; preds = %80
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @fe_mul(i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @fe_sq(i32 %95, i32 %96)
  store i32 1, i32* %8, align 4
  br label %98

98:                                               ; preds = %105, %90
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 10
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @fe_sq(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %98

108:                                              ; preds = %98
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @fe_mul(i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @fe_sq(i32 %113, i32 %114)
  store i32 1, i32* %8, align 4
  br label %116

116:                                              ; preds = %123, %108
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 50
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @fe_sq(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %116

126:                                              ; preds = %116
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @fe_mul(i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @fe_sq(i32 %131, i32 %132)
  store i32 1, i32* %8, align 4
  br label %134

134:                                              ; preds = %141, %126
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 100
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @fe_sq(i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %134

144:                                              ; preds = %134
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @fe_mul(i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @fe_sq(i32 %149, i32 %150)
  store i32 1, i32* %8, align 4
  br label %152

152:                                              ; preds = %159, %144
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %153, 50
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @fe_sq(i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %152

162:                                              ; preds = %152
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @fe_mul(i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @fe_sq(i32 %167, i32 %168)
  store i32 1, i32* %8, align 4
  br label %170

170:                                              ; preds = %177, %162
  %171 = load i32, i32* %8, align 4
  %172 = icmp slt i32 %171, 2
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @fe_sq(i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %170

180:                                              ; preds = %170
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @fe_mul(i32 %181, i32 %182, i32 %183)
  ret void
}

declare dso_local i32 @fe_sq(i32, i32) #1

declare dso_local i32 @fe_mul(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
