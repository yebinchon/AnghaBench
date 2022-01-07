; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_exp.c_MOD_EXP_CTIME_COPY_FROM_PREBUF.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_exp.c_MOD_EXP_CTIME_COPY_FROM_PREBUF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32 }

@BN_FLG_FIXED_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i8*, i32, i32)* @MOD_EXP_CTIME_COPY_FROM_PREBUF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MOD_EXP_CTIME_COPY_FROM_PREBUF(%struct.TYPE_4__* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
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
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %14, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %15, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32* @bn_wexpand(%struct.TYPE_4__* %27, i32 %28)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %195

32:                                               ; preds = %5
  %33 = load i32, i32* %11, align 4
  %34 = icmp sle i32 %33, 3
  br i1 %34, label %35, label %78

35:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %70, %35
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %36
  store volatile i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %59, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load volatile i32, i32* %49, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @constant_time_eq_int(i32 %51, i32 %52)
  %54 = and i32 %53, 1
  %55 = sub nsw i32 0, %54
  %56 = and i32 %50, %55
  %57 = load volatile i32, i32* %16, align 4
  %58 = or i32 %57, %56
  store volatile i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %41

62:                                               ; preds = %41
  %63 = load volatile i32, i32* %16, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32*, i32** %15, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %15, align 8
  br label %36

77:                                               ; preds = %36
  br label %186

78:                                               ; preds = %32
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %79, 2
  %81 = shl i32 1, %80
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, 2
  %85 = ashr i32 %82, %84
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %17, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @constant_time_eq_int(i32 %90, i32 0)
  %92 = and i32 %91, 1
  %93 = sub nsw i32 0, %92
  store volatile i32 %93, i32* %18, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @constant_time_eq_int(i32 %94, i32 1)
  %96 = and i32 %95, 1
  %97 = sub nsw i32 0, %96
  store volatile i32 %97, i32* %19, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @constant_time_eq_int(i32 %98, i32 2)
  %100 = and i32 %99, 1
  %101 = sub nsw i32 0, %100
  store volatile i32 %101, i32* %20, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @constant_time_eq_int(i32 %102, i32 3)
  %104 = and i32 %103, 1
  %105 = sub nsw i32 0, %104
  store volatile i32 %105, i32* %21, align 4
  store i32 0, i32* %12, align 4
  br label %106

106:                                              ; preds = %178, %78
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %185

110:                                              ; preds = %106
  store volatile i32 0, i32* %22, align 4
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %167, %110
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %170

115:                                              ; preds = %111
  %116 = load i32*, i32** %15, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %17, align 4
  %119 = mul nsw i32 0, %118
  %120 = add nsw i32 %117, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %116, i64 %121
  %123 = load volatile i32, i32* %122, align 4
  %124 = load volatile i32, i32* %18, align 4
  %125 = and i32 %123, %124
  %126 = load i32*, i32** %15, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %17, align 4
  %129 = mul nsw i32 1, %128
  %130 = add nsw i32 %127, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %126, i64 %131
  %133 = load volatile i32, i32* %132, align 4
  %134 = load volatile i32, i32* %19, align 4
  %135 = and i32 %133, %134
  %136 = or i32 %125, %135
  %137 = load i32*, i32** %15, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %17, align 4
  %140 = mul nsw i32 2, %139
  %141 = add nsw i32 %138, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  %144 = load volatile i32, i32* %143, align 4
  %145 = load volatile i32, i32* %20, align 4
  %146 = and i32 %144, %145
  %147 = or i32 %136, %146
  %148 = load i32*, i32** %15, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %17, align 4
  %151 = mul nsw i32 3, %150
  %152 = add nsw i32 %149, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %148, i64 %153
  %155 = load volatile i32, i32* %154, align 4
  %156 = load volatile i32, i32* %21, align 4
  %157 = and i32 %155, %156
  %158 = or i32 %147, %157
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @constant_time_eq_int(i32 %159, i32 %160)
  %162 = and i32 %161, 1
  %163 = sub nsw i32 0, %162
  %164 = and i32 %158, %163
  %165 = load volatile i32, i32* %22, align 4
  %166 = or i32 %165, %164
  store volatile i32 %166, i32* %22, align 4
  br label %167

167:                                              ; preds = %115
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %13, align 4
  br label %111

170:                                              ; preds = %111
  %171 = load volatile i32, i32* %22, align 4
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %171, i32* %177, align 4
  br label %178

178:                                              ; preds = %170
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %14, align 4
  %182 = load i32*, i32** %15, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %15, align 8
  br label %106

185:                                              ; preds = %106
  br label %186

186:                                              ; preds = %185, %77
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* @BN_FLG_FIXED_TOP, align 4
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  store i32 1, i32* %6, align 4
  br label %195

195:                                              ; preds = %186, %31
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i32* @bn_wexpand(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @constant_time_eq_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
