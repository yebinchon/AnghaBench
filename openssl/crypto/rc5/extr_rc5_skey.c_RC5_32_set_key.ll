; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rc5/extr_rc5_skey.c_RC5_32_set_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rc5/extr_rc5_skey.c_RC5_32_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@RC5_16_ROUNDS = common dso_local global i32 0, align 4
@RC5_12_ROUNDS = common dso_local global i32 0, align 4
@RC5_8_ROUNDS = common dso_local global i32 0, align 4
@RC5_32_P = common dso_local global i32 0, align 4
@RC5_32_Q = common dso_local global i32 0, align 4
@RC5_32_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RC5_32_set_key(%struct.TYPE_3__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %199

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @RC5_16_ROUNDS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @RC5_12_ROUNDS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @RC5_8_ROUNDS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @RC5_16_ROUNDS, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %35, %31, %27
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32* %48, i32** %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %49

49:                                               ; preds = %71, %41
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 8
  %53 = icmp sle i32 %50, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @c2l(i8* %55, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %18, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @c2l(i8* %63, i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %18, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 8
  store i32 %73, i32* %17, align 4
  br label %49

74:                                               ; preds = %49
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %17, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %22, align 4
  %78 = load i32, i32* %22, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 7
  store i32 %82, i32* %16, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @c2ln(i8* %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 0
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %91
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %96
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %80, %74
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 3
  %101 = sdiv i32 %100, 4
  store i32 %101, i32* %20, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  %104 = mul nsw i32 %103, 2
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* @RC5_32_P, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %105, i32* %107, align 4
  store i32 1, i32* %17, align 4
  br label %108

108:                                              ; preds = %127, %98
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %21, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %108
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @RC5_32_Q, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* @RC5_32_MASK, align 4
  %122 = and i32 %120, %121
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %112
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %17, align 4
  br label %108

130:                                              ; preds = %108
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %20, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* %21, align 4
  br label %138

136:                                              ; preds = %130
  %137 = load i32, i32* %20, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = mul nsw i32 %140, 3
  store i32 %141, i32* %18, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %142

142:                                              ; preds = %195, %138
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %198

146:                                              ; preds = %142
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %22, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32, i32* @RC5_32_MASK, align 4
  %157 = and i32 %155, %156
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %16, align 4
  %159 = call i32 @ROTATE_l32(i32 %158, i32 3)
  %160 = load i32*, i32** %15, align 8
  %161 = load i32, i32* %22, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %159, i32* %163, align 4
  store i32 %159, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %164, %165
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %23, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %170, %171
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i32, i32* @RC5_32_MASK, align 4
  %176 = and i32 %174, %175
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %19, align 4
  %179 = call i32 @ROTATE_l32(i32 %177, i32 %178)
  %180 = load i32, i32* %23, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %181
  store i32 %179, i32* %182, align 4
  store i32 %179, i32* %14, align 4
  %183 = load i32, i32* %22, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %22, align 4
  %185 = load i32, i32* %21, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %146
  store i32 0, i32* %22, align 4
  br label %188

188:                                              ; preds = %187, %146
  %189 = load i32, i32* %23, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %23, align 4
  %191 = load i32, i32* %20, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i32 0, i32* %23, align 4
  br label %194

194:                                              ; preds = %193, %188
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %17, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %17, align 4
  br label %142

198:                                              ; preds = %142
  store i32 1, i32* %5, align 4
  br label %199

199:                                              ; preds = %198, %26
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @c2l(i8*, i32) #1

declare dso_local i32 @c2ln(i8*, i32, i32, i32) #1

declare dso_local i32 @ROTATE_l32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
