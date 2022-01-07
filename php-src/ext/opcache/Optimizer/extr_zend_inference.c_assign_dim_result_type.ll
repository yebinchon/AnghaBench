; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_assign_dim_result_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_assign_dim_result_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAY_BE_RC1 = common dso_local global i32 0, align 4
@MAY_BE_RCN = common dso_local global i32 0, align 4
@MAY_BE_UNDEF = common dso_local global i32 0, align 4
@MAY_BE_NULL = common dso_local global i32 0, align 4
@MAY_BE_FALSE = common dso_local global i32 0, align 4
@MAY_BE_ARRAY = common dso_local global i32 0, align 4
@MAY_BE_STRING = common dso_local global i32 0, align 4
@MAY_BE_OBJECT = common dso_local global i32 0, align 4
@MAY_BE_RESOURCE = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_NULL = common dso_local global i32 0, align 4
@IS_UNUSED = common dso_local global i64 0, align 8
@MAY_BE_ARRAY_KEY_LONG = common dso_local global i32 0, align 4
@MAY_BE_LONG = common dso_local global i32 0, align 4
@MAY_BE_TRUE = common dso_local global i32 0, align 4
@MAY_BE_DOUBLE = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_KEY_STRING = common dso_local global i32 0, align 4
@IS_CONST = common dso_local global i64 0, align 8
@MAY_BE_ARRAY_KEY_ANY = common dso_local global i32 0, align 4
@MAY_BE_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @assign_dim_result_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_dim_result_type(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MAY_BE_RC1, align 4
  %12 = load i32, i32* @MAY_BE_RCN, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MAY_BE_UNDEF, align 4
  %18 = load i32, i32* @MAY_BE_NULL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MAY_BE_FALSE, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %4
  %25 = load i32, i32* @MAY_BE_UNDEF, align 4
  %26 = load i32, i32* @MAY_BE_NULL, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MAY_BE_FALSE, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @MAY_BE_ARRAY, align 4
  %34 = load i32, i32* @MAY_BE_RC1, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %24, %4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MAY_BE_ARRAY, align 4
  %41 = load i32, i32* @MAY_BE_STRING, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @MAY_BE_RC1, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @MAY_BE_OBJECT, align 4
  %52 = load i32, i32* @MAY_BE_RESOURCE, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @MAY_BE_RC1, align 4
  %58 = load i32, i32* @MAY_BE_RCN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %56, %49
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @MAY_BE_ARRAY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %144

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MAY_BE_UNDEF, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @MAY_BE_ARRAY_OF_NULL, align 4
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @IS_UNUSED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @MAY_BE_ARRAY_KEY_LONG, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %130

84:                                               ; preds = %76
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @MAY_BE_LONG, align 4
  %87 = load i32, i32* @MAY_BE_FALSE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @MAY_BE_TRUE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @MAY_BE_RESOURCE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @MAY_BE_DOUBLE, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %85, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load i32, i32* @MAY_BE_ARRAY_KEY_LONG, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %97, %84
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @MAY_BE_STRING, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load i32, i32* @MAY_BE_ARRAY_KEY_STRING, align 4
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* @IS_CONST, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* @MAY_BE_ARRAY_KEY_LONG, align 4
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %113, %106
  br label %118

118:                                              ; preds = %117, %101
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @MAY_BE_UNDEF, align 4
  %121 = load i32, i32* @MAY_BE_NULL, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %119, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32, i32* @MAY_BE_ARRAY_KEY_STRING, align 4
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %125, %118
  br label %130

130:                                              ; preds = %129, %80
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @MAY_BE_ANY, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @MAY_BE_ARRAY_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %135, %130
  br label %144

144:                                              ; preds = %143, %62
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
