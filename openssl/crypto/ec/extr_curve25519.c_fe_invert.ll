; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe_invert.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @fe_invert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_invert(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @fe_sq(i32 %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @fe_sq(i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @fe_sq(i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @fe_mul(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @fe_mul(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @fe_sq(i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @fe_mul(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @fe_sq(i32 %34, i32 %35)
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %44, %2
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 5
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @fe_sq(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %37

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @fe_mul(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @fe_sq(i32 %52, i32 %53)
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %62, %47
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 10
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @fe_sq(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %55

65:                                               ; preds = %55
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @fe_mul(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @fe_sq(i32 %70, i32 %71)
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %80, %65
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 20
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @fe_sq(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %73

83:                                               ; preds = %73
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @fe_mul(i32 %84, i32 %85, i32 %86)
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %95, %83
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 10
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @fe_sq(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %88

98:                                               ; preds = %88
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @fe_mul(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @fe_sq(i32 %103, i32 %104)
  store i32 1, i32* %9, align 4
  br label %106

106:                                              ; preds = %113, %98
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 50
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @fe_sq(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %106

116:                                              ; preds = %106
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @fe_mul(i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @fe_sq(i32 %121, i32 %122)
  store i32 1, i32* %9, align 4
  br label %124

124:                                              ; preds = %131, %116
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %125, 100
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @fe_sq(i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %124

134:                                              ; preds = %124
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @fe_mul(i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @fe_sq(i32 %139, i32 %140)
  store i32 1, i32* %9, align 4
  br label %142

142:                                              ; preds = %149, %134
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 50
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @fe_sq(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %142

152:                                              ; preds = %142
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @fe_mul(i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @fe_sq(i32 %157, i32 %158)
  store i32 1, i32* %9, align 4
  br label %160

160:                                              ; preds = %167, %152
  %161 = load i32, i32* %9, align 4
  %162 = icmp slt i32 %161, 5
  br i1 %162, label %163, label %170

163:                                              ; preds = %160
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @fe_sq(i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %160

170:                                              ; preds = %160
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @fe_mul(i32 %171, i32 %172, i32 %173)
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
