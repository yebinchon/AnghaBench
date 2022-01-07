; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mmu.c_PpcVirt2phys.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mmu.c_PpcVirt2phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PpcVirt2phys(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %24 = call i32 (...) @GetMSR()
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 32, i32 16
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %149

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 28
  %36 = call i32 @GetSR(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 268435455
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %20, align 4
  %40 = shl i32 %39, 28
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 268435455
  %43 = or i32 %40, %42
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, -2147483648
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %3, align 4
  br label %151

49:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %68, %49
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @GetBat(i32 %54, i32 %55, i32* %9, i32* %10)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @BatHit(i32 %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @BatTranslate(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %151

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %50

71:                                               ; preds = %50
  %72 = call i32 (...) @GetSDR1()
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = and i32 %73, -65536
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 511
  %77 = shl i32 %76, 10
  %78 = or i32 %77, 1023
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %20, align 4
  %80 = and i32 %79, 524287
  %81 = load i32, i32* %14, align 4
  %82 = ashr i32 %81, 12
  %83 = and i32 %82, 65535
  %84 = xor i32 %80, %83
  store i32 %84, i32* %15, align 4
  store i32 0, i32* %21, align 4
  br label %85

85:                                               ; preds = %143, %71
  %86 = load i32, i32* %21, align 4
  %87 = icmp slt i32 %86, 128
  br i1 %87, label %88, label %148

88:                                               ; preds = %85
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = and i32 %89, %90
  %92 = mul nsw i32 %91, 64
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %19, align 4
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %139, %88
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 8
  br i1 %97, label %98, label %142

98:                                               ; preds = %95
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 %100, 8
  %102 = add nsw i32 %99, %101
  %103 = call i32 @GetPhys(i32 %102)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %8, align 4
  %106 = mul nsw i32 %105, 8
  %107 = add nsw i32 %104, %106
  %108 = add nsw i32 %107, 4
  %109 = call i32 @GetPhys(i32 %108)
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %17, align 4
  %111 = ashr i32 %110, 7
  %112 = and i32 %111, 16777215
  store i32 %112, i32* %22, align 4
  %113 = load i32, i32* %17, align 4
  %114 = and i32 %113, 63
  store i32 %114, i32* %23, align 4
  %115 = load i32, i32* %17, align 4
  %116 = and i32 %115, 64
  %117 = load i32, i32* %21, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %98
  br label %139

120:                                              ; preds = %98
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %20, align 4
  %123 = and i32 %122, 16777215
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %139

126:                                              ; preds = %120
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %4, align 4
  %129 = ashr i32 %128, 22
  %130 = and i32 %129, 63
  %131 = icmp ne i32 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %139

133:                                              ; preds = %126
  %134 = load i32, i32* %18, align 4
  %135 = and i32 %134, -4096
  %136 = load i32, i32* %4, align 4
  %137 = and i32 %136, 4095
  %138 = or i32 %135, %137
  store i32 %138, i32* %3, align 4
  br label %151

139:                                              ; preds = %132, %125, %119
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %95

142:                                              ; preds = %95
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, 64
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %15, align 4
  %147 = xor i32 %146, 524287
  store i32 %147, i32* %15, align 4
  br label %85

148:                                              ; preds = %85
  store i32 -1, i32* %3, align 4
  br label %151

149:                                              ; preds = %2
  %150 = load i32, i32* %4, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %148, %133, %62, %47
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @GetMSR(...) #1

declare dso_local i32 @GetSR(i32) #1

declare dso_local i32 @GetBat(i32, i32, i32*, i32*) #1

declare dso_local i64 @BatHit(i32, i32, i32) #1

declare dso_local i32 @BatTranslate(i32, i32, i32) #1

declare dso_local i32 @GetSDR1(...) #1

declare dso_local i32 @GetPhys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
