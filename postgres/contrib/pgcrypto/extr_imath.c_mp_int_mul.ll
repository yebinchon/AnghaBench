; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_mul.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32* }

@MP_OK = common dso_local global i32 0, align 4
@MP_ZPOS = common dso_local global i32 0, align 4
@MP_NEG = common dso_local global i32 0, align 4
@default_precision = common dso_local global i32 0, align 4
@MP_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_mul(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br label %22

22:                                               ; preds = %19, %16, %3
  %23 = phi i1 [ false, %16 ], [ false, %3 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = call i64 @mp_int_compare_zero(%struct.TYPE_12__* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = call i64 @mp_int_compare_zero(%struct.TYPE_12__* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = call i32 @mp_int_zero(%struct.TYPE_12__* %34)
  %36 = load i32, i32* @MP_OK, align 4
  store i32 %36, i32* %4, align 4
  br label %136

37:                                               ; preds = %29
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = call i64 @MP_SIGN(%struct.TYPE_12__* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = call i64 @MP_SIGN(%struct.TYPE_12__* %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @MP_ZPOS, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @MP_NEG, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %8, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = call i32 @MP_USED(%struct.TYPE_12__* %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = call i32 @MP_USED(%struct.TYPE_12__* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @MAX(i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  %58 = sdiv i32 %57, 2
  %59 = mul nsw i32 4, %58
  store i32 %59, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = icmp eq %struct.TYPE_12__* %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %47
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = icmp eq %struct.TYPE_12__* %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63, %47
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @s_round_prec(i32 %68)
  %70 = load i32, i32* @default_precision, align 4
  %71 = call i32 @MAX(i32 %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32* @s_alloc(i32 %72)
  store i32* %73, i32** %12, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @MP_MEMORY, align 4
  store i32 %76, i32* %4, align 4
  br label %136

77:                                               ; preds = %67
  br label %88

78:                                               ; preds = %63
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @s_pad(%struct.TYPE_12__* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @MP_MEMORY, align 4
  store i32 %84, i32* %4, align 4
  br label %136

85:                                               ; preds = %78
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = call i32* @MP_DIGITS(%struct.TYPE_12__* %86)
  store i32* %87, i32** %12, align 8
  br label %88

88:                                               ; preds = %85, %77
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @ZERO(i32* %89, i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = call i32* @MP_DIGITS(%struct.TYPE_12__* %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = call i32* @MP_DIGITS(%struct.TYPE_12__* %94)
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @s_kmul(i32* %93, i32* %95, i32* %96, i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %88
  %102 = load i32, i32* @MP_MEMORY, align 4
  store i32 %102, i32* %4, align 4
  br label %136

103:                                              ; preds = %88
  %104 = load i32*, i32** %12, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %106 = call i32* @MP_DIGITS(%struct.TYPE_12__* %105)
  %107 = icmp ne i32* %104, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %103
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = call i32* @MP_DIGITS(%struct.TYPE_12__* %109)
  %111 = bitcast i32* %110 to i8*
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %113 = bitcast %struct.TYPE_12__* %112 to i8*
  %114 = icmp ne i8* %111, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %117 = call i32* @MP_DIGITS(%struct.TYPE_12__* %116)
  %118 = call i32 @s_free(i32* %117)
  br label %119

119:                                              ; preds = %115, %108
  %120 = load i32*, i32** %12, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 3
  store i32* %120, i32** %122, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %119, %103
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %131 = call i32 @CLAMP(%struct.TYPE_12__* %130)
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @MP_OK, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %126, %101, %83, %75, %33
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mp_int_compare_zero(%struct.TYPE_12__*) #1

declare dso_local i32 @mp_int_zero(%struct.TYPE_12__*) #1

declare dso_local i64 @MP_SIGN(%struct.TYPE_12__*) #1

declare dso_local i32 @MP_USED(%struct.TYPE_12__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @s_round_prec(i32) #1

declare dso_local i32* @s_alloc(i32) #1

declare dso_local i32 @s_pad(%struct.TYPE_12__*, i32) #1

declare dso_local i32* @MP_DIGITS(%struct.TYPE_12__*) #1

declare dso_local i32 @ZERO(i32*, i32) #1

declare dso_local i32 @s_kmul(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @s_free(i32*) #1

declare dso_local i32 @CLAMP(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
