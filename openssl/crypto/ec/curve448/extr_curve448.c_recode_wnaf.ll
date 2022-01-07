; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_curve448.c_recode_wnaf.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_curve448.c_recode_wnaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smvt_control = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }

@C448_SCALAR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smvt_control*, %struct.TYPE_3__*, i32)* @recode_wnaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recode_wnaf(%struct.smvt_control* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca %struct.smvt_control*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
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
  store %struct.smvt_control* %0, %struct.smvt_control** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @C448_SCALAR_BITS, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, 1
  %21 = udiv i32 %18, %20
  %22 = add i32 %21, 3
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 65535
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add i32 %31, 1
  %33 = shl i32 1, %32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  store i32 2, i32* %12, align 4
  %35 = load %struct.smvt_control*, %struct.smvt_control** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %35, i64 %37
  %39 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 4
  %40 = load %struct.smvt_control*, %struct.smvt_control** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %40, i64 %42
  %44 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %8, align 4
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %135, %3
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @C448_SCALAR_BITS, align 4
  %50 = sub i32 %49, 1
  %51 = udiv i32 %50, 16
  %52 = add i32 %51, 3
  %53 = icmp ult i32 %48, %52
  br i1 %53, label %54, label %138

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @C448_SCALAR_BITS, align 4
  %57 = sub i32 %56, 1
  %58 = udiv i32 %57, 16
  %59 = add i32 %58, 1
  %60 = icmp ult i32 %55, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %54
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = udiv i32 %65, 2
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = urem i32 %70, 2
  %72 = mul i32 16, %71
  %73 = ashr i32 %69, %72
  %74 = shl i32 %73, 16
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %61, %54
  br label %78

78:                                               ; preds = %107, %77
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 65535
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %132

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @NUMTRAILINGZEROS(i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %15, align 4
  %87 = ashr i32 %85, %86
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %10, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp sge i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add i32 %96, 1
  %98 = shl i32 1, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %82
  %102 = load i32, i32* %6, align 4
  %103 = add i32 %102, 1
  %104 = shl i32 1, %103
  %105 = load i32, i32* %17, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %17, align 4
  br label %107

107:                                              ; preds = %101, %82
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %15, align 4
  %110 = shl i32 1, %109
  %111 = mul nsw i32 %108, %110
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sub i32 %115, 1
  %117 = mul i32 16, %116
  %118 = add i32 %114, %117
  %119 = load %struct.smvt_control*, %struct.smvt_control** %4, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %119, i64 %121
  %123 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %122, i32 0, i32 0
  store i32 %118, i32* %123, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load %struct.smvt_control*, %struct.smvt_control** %4, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %125, i64 %127
  %129 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %128, i32 0, i32 1
  store i32 %124, i32* %129, align 4
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %8, align 4
  br label %78

132:                                              ; preds = %78
  %133 = load i32, i32* %9, align 4
  %134 = ashr i32 %133, 16
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %47

138:                                              ; preds = %47
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = sub i32 %145, %146
  store i32 %147, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %148

148:                                              ; preds = %165, %138
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %148
  %153 = load %struct.smvt_control*, %struct.smvt_control** %4, align 8
  %154 = load i32, i32* %14, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %153, i64 %155
  %157 = load %struct.smvt_control*, %struct.smvt_control** %4, align 8
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %8, align 4
  %160 = add i32 %158, %159
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %157, i64 %161
  %163 = bitcast %struct.smvt_control* %156 to i8*
  %164 = bitcast %struct.smvt_control* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 4 %164, i64 8, i1 false)
  br label %165

165:                                              ; preds = %152
  %166 = load i32, i32* %14, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %148

168:                                              ; preds = %148
  %169 = load i32, i32* %13, align 4
  %170 = sub i32 %169, 1
  ret i32 %170
}

declare dso_local i32 @NUMTRAILINGZEROS(i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
