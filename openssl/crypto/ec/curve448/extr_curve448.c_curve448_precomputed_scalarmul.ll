; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_curve448.c_curve448_precomputed_scalarmul.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_curve448.c_curve448_precomputed_scalarmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }

@COMBS_N = common dso_local global i32 0, align 4
@COMBS_T = common dso_local global i32 0, align 4
@COMBS_S = common dso_local global i32 0, align 4
@precomputed_scalarmul_adjustment = common dso_local global i32 0, align 4
@C448_SCALAR_BITS = common dso_local global i32 0, align 4
@WBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @curve448_precomputed_scalarmul(i32 %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %18 = load i32, i32* @COMBS_N, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @COMBS_T, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @COMBS_S, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = load i32, i32* @precomputed_scalarmul_adjustment, align 4
  %24 = call i32 @curve448_scalar_add(%struct.TYPE_15__* %21, %struct.TYPE_15__* %22, i32 %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %27 = call i32 @curve448_scalar_halve(%struct.TYPE_15__* %25, %struct.TYPE_15__* %26)
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %149, %3
  %30 = load i32, i32* %7, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %152

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @point_double_internal(i32 %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %36, %32
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %145, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %148

45:                                               ; preds = %41
  store i32 0, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %84, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = sub i32 %51, 1
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %11, align 4
  %57 = mul i32 %55, %56
  %58 = add i32 %54, %57
  %59 = mul i32 %53, %58
  %60 = add i32 %52, %59
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @C448_SCALAR_BITS, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %50
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* @WBITS, align 4
  %70 = udiv i32 %68, %69
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* @WBITS, align 4
  %76 = urem i32 %74, %75
  %77 = lshr i32 %73, %76
  %78 = and i32 %77, 1
  %79 = load i32, i32* %9, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %15, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %64, %50
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %46

87:                                               ; preds = %46
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sub i32 %89, 1
  %91 = ashr i32 %88, %90
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %15, align 4
  %95 = xor i32 %94, %93
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sub i32 %96, 1
  %98 = shl i32 1, %97
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* %15, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %15, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %11, align 4
  %108 = sub i32 %107, 1
  %109 = shl i32 %106, %108
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %105, i64 %110
  %112 = load i32, i32* %11, align 4
  %113 = sub i32 %112, 1
  %114 = shl i32 1, %113
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @constant_time_lookup_niels(%struct.TYPE_15__* %102, i32* %111, i32 %114, i32 %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @cond_neg_niels(%struct.TYPE_15__* %117, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %126, label %123

123:                                              ; preds = %87
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %123, %87
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sub i32 %130, 1
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 1
  br label %136

136:                                              ; preds = %133, %126
  %137 = phi i1 [ false, %126 ], [ %135, %133 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @add_niels_to_pt(i32 %127, %struct.TYPE_15__* %128, i32 %138)
  br label %144

140:                                              ; preds = %123
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %143 = call i32 @niels_to_pt(i32 %141, %struct.TYPE_15__* %142)
  br label %144

144:                                              ; preds = %140, %136
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %8, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %41

148:                                              ; preds = %41
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %150, -1
  store i32 %151, i32* %7, align 4
  br label %29

152:                                              ; preds = %29
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %154 = call i32 @OPENSSL_cleanse(%struct.TYPE_15__* %153, i32 8)
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %156 = call i32 @OPENSSL_cleanse(%struct.TYPE_15__* %155, i32 8)
  ret void
}

declare dso_local i32 @curve448_scalar_add(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @curve448_scalar_halve(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @point_double_internal(i32, i32, i32) #1

declare dso_local i32 @constant_time_lookup_niels(%struct.TYPE_15__*, i32*, i32, i32) #1

declare dso_local i32 @cond_neg_niels(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @add_niels_to_pt(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @niels_to_pt(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @OPENSSL_cleanse(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
