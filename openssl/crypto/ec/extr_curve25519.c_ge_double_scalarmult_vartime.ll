; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_ge_double_scalarmult_vartime.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_ge_double_scalarmult_vartime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Bi = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @ge_double_scalarmult_vartime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ge_double_scalarmult_vartime(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @slide(i8* %16, i32* %17)
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @slide(i8* %19, i32* %20)
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @ge_p3_to_cached(i32* %22, i32* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @ge_p3_dbl(i32* %12, i32* %25)
  %27 = call i32 @ge_p1p1_to_p3(i32* %14, i32* %12)
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %29 = call i32 @ge_add(i32* %12, i32* %14, i32* %28)
  %30 = call i32 @ge_p1p1_to_p3(i32* %13, i32* %12)
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 1
  %32 = call i32 @ge_p3_to_cached(i32* %31, i32* %13)
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 1
  %34 = call i32 @ge_add(i32* %12, i32* %14, i32* %33)
  %35 = call i32 @ge_p1p1_to_p3(i32* %13, i32* %12)
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 2
  %37 = call i32 @ge_p3_to_cached(i32* %36, i32* %13)
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 2
  %39 = call i32 @ge_add(i32* %12, i32* %14, i32* %38)
  %40 = call i32 @ge_p1p1_to_p3(i32* %13, i32* %12)
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  %42 = call i32 @ge_p3_to_cached(i32* %41, i32* %13)
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  %44 = call i32 @ge_add(i32* %12, i32* %14, i32* %43)
  %45 = call i32 @ge_p1p1_to_p3(i32* %13, i32* %12)
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4
  %47 = call i32 @ge_p3_to_cached(i32* %46, i32* %13)
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4
  %49 = call i32 @ge_add(i32* %12, i32* %14, i32* %48)
  %50 = call i32 @ge_p1p1_to_p3(i32* %13, i32* %12)
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 5
  %52 = call i32 @ge_p3_to_cached(i32* %51, i32* %13)
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 5
  %54 = call i32 @ge_add(i32* %12, i32* %14, i32* %53)
  %55 = call i32 @ge_p1p1_to_p3(i32* %13, i32* %12)
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 6
  %57 = call i32 @ge_p3_to_cached(i32* %56, i32* %13)
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 6
  %59 = call i32 @ge_add(i32* %12, i32* %14, i32* %58)
  %60 = call i32 @ge_p1p1_to_p3(i32* %13, i32* %12)
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 7
  %62 = call i32 @ge_p3_to_cached(i32* %61, i32* %13)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @ge_p2_0(i32* %63)
  store i32 255, i32* %15, align 4
  br label %65

65:                                               ; preds = %84, %4
  %66 = load i32, i32* %15, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75, %68
  br label %87

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %15, align 4
  br label %65

87:                                               ; preds = %82, %65
  br label %88

88:                                               ; preds = %174, %87
  %89 = load i32, i32* %15, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %177

91:                                               ; preds = %88
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @ge_p2_dbl(i32* %12, i32* %92)
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %91
  %101 = call i32 @ge_p1p1_to_p3(i32* %13, i32* %12)
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = sdiv i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %108
  %110 = call i32 @ge_add(i32* %12, i32* %13, i32* %109)
  br label %131

111:                                              ; preds = %91
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %111
  %119 = call i32 @ge_p1p1_to_p3(i32* %13, i32* %12)
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = sub nsw i32 0, %124
  %126 = sdiv i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %127
  %129 = call i32 @ge_sub(i32* %12, i32* %13, i32* %128)
  br label %130

130:                                              ; preds = %118, %111
  br label %131

131:                                              ; preds = %130, %100
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %131
  %139 = call i32 @ge_p1p1_to_p3(i32* %13, i32* %12)
  %140 = load i32*, i32** @Bi, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = sdiv i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %140, i64 %147
  %149 = call i32 @ge_madd(i32* %12, i32* %13, i32* %148)
  br label %171

150:                                              ; preds = %131
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %150
  %158 = call i32 @ge_p1p1_to_p3(i32* %13, i32* %12)
  %159 = load i32*, i32** @Bi, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = sub nsw i32 0, %164
  %166 = sdiv i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %159, i64 %167
  %169 = call i32 @ge_msub(i32* %12, i32* %13, i32* %168)
  br label %170

170:                                              ; preds = %157, %150
  br label %171

171:                                              ; preds = %170, %138
  %172 = load i32*, i32** %5, align 8
  %173 = call i32 @ge_p1p1_to_p2(i32* %172, i32* %12)
  br label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %15, align 4
  br label %88

177:                                              ; preds = %88
  ret void
}

declare dso_local i32 @slide(i8*, i32*) #1

declare dso_local i32 @ge_p3_to_cached(i32*, i32*) #1

declare dso_local i32 @ge_p3_dbl(i32*, i32*) #1

declare dso_local i32 @ge_p1p1_to_p3(i32*, i32*) #1

declare dso_local i32 @ge_add(i32*, i32*, i32*) #1

declare dso_local i32 @ge_p2_0(i32*) #1

declare dso_local i32 @ge_p2_dbl(i32*, i32*) #1

declare dso_local i32 @ge_sub(i32*, i32*, i32*) #1

declare dso_local i32 @ge_madd(i32*, i32*, i32*) #1

declare dso_local i32 @ge_msub(i32*, i32*, i32*) #1

declare dso_local i32 @ge_p1p1_to_p2(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
