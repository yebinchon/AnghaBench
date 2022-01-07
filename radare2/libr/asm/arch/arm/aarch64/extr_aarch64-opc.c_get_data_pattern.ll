; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_get_data_pattern.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_get_data_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@DP_VECTOR_3SAME = common dso_local global i32 0, align 4
@DP_VECTOR_LONG = common dso_local global i32 0, align 4
@DP_VECTOR_WIDE = common dso_local global i32 0, align 4
@AARCH64_OPND_QLF_NIL = common dso_local global i64 0, align 8
@DP_VECTOR_ACROSS_LANES = common dso_local global i32 0, align 4
@DP_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @get_data_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_data_pattern(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %4 = load i64*, i64** %3, align 8
  %5 = getelementptr inbounds i64, i64* %4, i64 0
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @vector_qualifier_p(i64 %6)
  %8 = load i64, i64* @TRUE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %118

10:                                               ; preds = %1
  %11 = load i64*, i64** %3, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %10
  %19 = load i64*, i64** %3, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @vector_qualifier_p(i64 %21)
  %23 = load i64, i64* @TRUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %18
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @aarch64_get_qualifier_esize(i64 %28)
  %30 = load i64*, i64** %3, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @aarch64_get_qualifier_esize(i64 %32)
  %34 = icmp eq i64 %29, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %25
  %36 = load i64*, i64** %3, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @aarch64_get_qualifier_esize(i64 %38)
  %40 = load i64*, i64** %3, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @aarch64_get_qualifier_esize(i64 %42)
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @DP_VECTOR_3SAME, align 4
  store i32 %46, i32* %2, align 4
  br label %144

47:                                               ; preds = %35, %25, %18, %10
  %48 = load i64*, i64** %3, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @vector_qualifier_p(i64 %50)
  %52 = load i64, i64* @TRUE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = load i64*, i64** %3, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @aarch64_get_qualifier_esize(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load i64*, i64** %3, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @aarch64_get_qualifier_esize(i64 %63)
  %65 = load i64*, i64** %3, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @aarch64_get_qualifier_esize(i64 %67)
  %69 = shl i64 %68, 1
  %70 = icmp eq i64 %64, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @DP_VECTOR_LONG, align 4
  store i32 %72, i32* %2, align 4
  br label %144

73:                                               ; preds = %60, %54, %47
  %74 = load i64*, i64** %3, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %3, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %117

81:                                               ; preds = %73
  %82 = load i64*, i64** %3, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 2
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @vector_qualifier_p(i64 %84)
  %86 = load i64, i64* @TRUE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %81
  %89 = load i64*, i64** %3, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @aarch64_get_qualifier_esize(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %88
  %95 = load i64*, i64** %3, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @aarch64_get_qualifier_esize(i64 %97)
  %99 = load i64*, i64** %3, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @aarch64_get_qualifier_esize(i64 %101)
  %103 = shl i64 %102, 1
  %104 = icmp eq i64 %98, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %94
  %106 = load i64*, i64** %3, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @aarch64_get_qualifier_esize(i64 %108)
  %110 = load i64*, i64** %3, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 1
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @aarch64_get_qualifier_esize(i64 %112)
  %114 = icmp eq i64 %109, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* @DP_VECTOR_WIDE, align 4
  store i32 %116, i32* %2, align 4
  br label %144

117:                                              ; preds = %105, %94, %88, %81, %73
  br label %142

118:                                              ; preds = %1
  %119 = load i64*, i64** %3, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @fp_qualifier_p(i64 %121)
  %123 = load i64, i64* @TRUE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %118
  %126 = load i64*, i64** %3, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @vector_qualifier_p(i64 %128)
  %130 = load i64, i64* @TRUE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %125
  %133 = load i64*, i64** %3, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @AARCH64_OPND_QLF_NIL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* @DP_VECTOR_ACROSS_LANES, align 4
  store i32 %139, i32* %2, align 4
  br label %144

140:                                              ; preds = %132, %125
  br label %141

141:                                              ; preds = %140, %118
  br label %142

142:                                              ; preds = %141, %117
  %143 = load i32, i32* @DP_UNKNOWN, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %142, %138, %115, %71, %45
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @vector_qualifier_p(i64) #1

declare dso_local i64 @aarch64_get_qualifier_esize(i64) #1

declare dso_local i64 @fp_qualifier_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
