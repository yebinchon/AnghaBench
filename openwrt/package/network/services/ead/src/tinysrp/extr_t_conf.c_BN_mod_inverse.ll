; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_t_conf.c_BN_mod_inverse.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_t_conf.c_BN_mod_inverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BN_mod_inverse(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %17, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @bn_check_top(i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @bn_check_top(i32* %21)
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @BN_CTX_start(i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @BN_CTX_get(i32* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @BN_CTX_get(i32* %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32* @BN_CTX_get(i32* %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @BN_CTX_get(i32* %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* @BN_CTX_get(i32* %33)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @BN_CTX_get(i32* %35)
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %4
  br label %133

40:                                               ; preds = %4
  %41 = load i32*, i32** %5, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32* (...) @BN_new()
  store i32* %44, i32** %15, align 8
  br label %47

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  store i32* %46, i32** %15, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i32*, i32** %15, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %133

51:                                               ; preds = %47
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @BN_zero(i32* %52)
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @BN_one(i32* %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32* @BN_copy(i32* %56, i32* %57)
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %133

61:                                               ; preds = %51
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32* @BN_copy(i32* %62, i32* %63)
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %133

67:                                               ; preds = %61
  store i32 1, i32* %18, align 4
  br label %68

68:                                               ; preds = %100, %67
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @BN_is_zero(i32* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %73, label %106

73:                                               ; preds = %68
  %74 = load i32*, i32** %14, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @BN_div(i32* %74, i32* %75, i32* %76, i32* %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  br label %133

82:                                               ; preds = %73
  %83 = load i32*, i32** %9, align 8
  store i32* %83, i32** %16, align 8
  %84 = load i32*, i32** %10, align 8
  store i32* %84, i32** %9, align 8
  %85 = load i32*, i32** %13, align 8
  store i32* %85, i32** %10, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @BN_mul(i32* %86, i32* %87, i32* %88, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %82
  br label %133

93:                                               ; preds = %82
  %94 = load i32*, i32** %16, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @BN_add(i32* %94, i32* %95, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  br label %133

100:                                              ; preds = %93
  %101 = load i32*, i32** %12, align 8
  store i32* %101, i32** %13, align 8
  %102 = load i32*, i32** %11, align 8
  store i32* %102, i32** %12, align 8
  %103 = load i32*, i32** %16, align 8
  store i32* %103, i32** %11, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %18, align 4
  br label %68

106:                                              ; preds = %68
  %107 = load i32, i32* %18, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i32*, i32** %12, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @BN_sub(i32* %110, i32* %111, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %133

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %106
  %118 = load i32*, i32** %9, align 8
  %119 = call i64 @BN_is_one(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load i32*, i32** %15, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @BN_mod(i32* %122, i32* %123, i32* %124, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %133

129:                                              ; preds = %121
  br label %131

130:                                              ; preds = %117
  br label %133

131:                                              ; preds = %129
  %132 = load i32*, i32** %15, align 8
  store i32* %132, i32** %17, align 8
  br label %133

133:                                              ; preds = %131, %130, %128, %115, %99, %92, %81, %66, %60, %50, %39
  %134 = load i32*, i32** %17, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32*, i32** %5, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @BN_free(i32* %140)
  br label %142

142:                                              ; preds = %139, %136, %133
  %143 = load i32*, i32** %8, align 8
  %144 = call i32 @BN_CTX_end(i32* %143)
  %145 = load i32*, i32** %17, align 8
  ret i32* %145
}

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i32 @BN_one(i32*) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
