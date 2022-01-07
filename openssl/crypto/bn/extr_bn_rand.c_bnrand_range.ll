; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_rand.c_bnrand_range.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_rand.c_bnrand_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }

@BN_F_BNRAND_RANGE = common dso_local global i32 0, align 4
@BN_R_INVALID_RANGE = common dso_local global i32 0, align 4
@BN_RAND_TOP_ANY = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@BN_R_TOO_MANY_ITERATIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32*)* @bnrand_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnrand_range(i32 %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 100, i32* %11, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = call i64 @BN_is_zero(%struct.TYPE_15__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %4
  %21 = load i32, i32* @BN_F_BNRAND_RANGE, align 4
  %22 = load i32, i32* @BN_R_INVALID_RANGE, align 4
  %23 = call i32 @BNerr(i32 %21, i32 %22)
  store i32 0, i32* %5, align 4
  br label %127

24:                                               ; preds = %16
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = call i32 @BN_num_bits(%struct.TYPE_15__* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %31 = call i32 @BN_zero(%struct.TYPE_15__* %30)
  br label %124

32:                                               ; preds = %24
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %34, 2
  %36 = call i32 @BN_is_bit_set(%struct.TYPE_15__* %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %97, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 3
  %42 = call i32 @BN_is_bit_set(%struct.TYPE_15__* %39, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %97, label %44

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %91, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %51 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @bnrand(i32 %46, %struct.TYPE_15__* %47, i32 %49, i32 %50, i32 %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %127

56:                                               ; preds = %45
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = call i64 @BN_cmp(%struct.TYPE_15__* %57, %struct.TYPE_15__* %58)
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = call i32 @BN_sub(%struct.TYPE_15__* %62, %struct.TYPE_15__* %63, %struct.TYPE_15__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %127

68:                                               ; preds = %61
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = call i64 @BN_cmp(%struct.TYPE_15__* %69, %struct.TYPE_15__* %70)
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = call i32 @BN_sub(%struct.TYPE_15__* %74, %struct.TYPE_15__* %75, %struct.TYPE_15__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %127

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %68
  br label %82

82:                                               ; preds = %81, %56
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @BN_F_BNRAND_RANGE, align 4
  %88 = load i32, i32* @BN_R_TOO_MANY_ITERATIONS, align 4
  %89 = call i32 @BNerr(i32 %87, i32 %88)
  store i32 0, i32* %5, align 4
  br label %127

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = call i64 @BN_cmp(%struct.TYPE_15__* %92, %struct.TYPE_15__* %93)
  %95 = icmp sge i64 %94, 0
  br i1 %95, label %45, label %96

96:                                               ; preds = %91
  br label %123

97:                                               ; preds = %38, %32
  br label %98

98:                                               ; preds = %117, %97
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %103 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @bnrand(i32 %99, %struct.TYPE_15__* %100, i32 %101, i32 %102, i32 %103, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %127

108:                                              ; preds = %98
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* @BN_F_BNRAND_RANGE, align 4
  %114 = load i32, i32* @BN_R_TOO_MANY_ITERATIONS, align 4
  %115 = call i32 @BNerr(i32 %113, i32 %114)
  store i32 0, i32* %5, align 4
  br label %127

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %120 = call i64 @BN_cmp(%struct.TYPE_15__* %118, %struct.TYPE_15__* %119)
  %121 = icmp sge i64 %120, 0
  br i1 %121, label %98, label %122

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122, %96
  br label %124

124:                                              ; preds = %123, %29
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %126 = call i32 @bn_check_top(%struct.TYPE_15__* %125)
  store i32 1, i32* %5, align 4
  br label %127

127:                                              ; preds = %124, %112, %107, %86, %79, %67, %55, %20
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i64 @BN_is_zero(%struct.TYPE_15__*) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @BN_num_bits(%struct.TYPE_15__*) #1

declare dso_local i32 @BN_zero(%struct.TYPE_15__*) #1

declare dso_local i32 @BN_is_bit_set(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @bnrand(i32, %struct.TYPE_15__*, i32, i32, i32, i32*) #1

declare dso_local i64 @BN_cmp(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @BN_sub(%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @bn_check_top(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
