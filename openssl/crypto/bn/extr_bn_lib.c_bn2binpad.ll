; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_bn2binpad.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_bn2binpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32* }

@BN_BYTES = common dso_local global i64 0, align 8
@big = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32, i64)* @bn2binpad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bn2binpad(%struct.TYPE_5__* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__, align 8
  %18 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = call i32 @BN_num_bytes(%struct.TYPE_5__* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %8, align 4
  br label %41

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = bitcast %struct.TYPE_5__* %17 to i8*
  %32 = bitcast %struct.TYPE_5__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 24, i1 false)
  %33 = call i32 @bn_correct_top(%struct.TYPE_5__* %17)
  %34 = call i32 @BN_num_bytes(%struct.TYPE_5__* %17)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %124

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BN_BYTES, align 8
  %46 = mul i64 %44, %45
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @OPENSSL_cleanse(i8* %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %5, align 4
  br label %124

54:                                               ; preds = %41
  %55 = load i64, i64* %14, align 8
  %56 = sub i64 %55, 1
  store i64 %56, i64* %12, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BN_BYTES, align 8
  %61 = mul i64 %59, %60
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @big, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %7, align 8
  br label %70

70:                                               ; preds = %65, %54
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %71

71:                                               ; preds = %119, %70
  %72 = load i64, i64* %13, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %76, label %122

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* @BN_BYTES, align 8
  %82 = udiv i64 %80, %81
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %16, align 4
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %14, align 8
  %87 = sub i64 %85, %86
  %88 = lshr i64 %87, 63
  %89 = sub i64 0, %88
  store i64 %89, i64* %15, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @BN_BYTES, align 8
  %93 = urem i64 %91, %92
  %94 = mul i64 8, %93
  %95 = trunc i64 %94 to i32
  %96 = ashr i32 %90, %95
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %15, align 8
  %99 = and i64 %97, %98
  %100 = trunc i64 %99 to i8
  store i8 %100, i8* %18, align 1
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @big, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %76
  %105 = load i8, i8* %18, align 1
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 -1
  store i8* %107, i8** %7, align 8
  store i8 %105, i8* %107, align 1
  br label %112

108:                                              ; preds = %76
  %109 = load i8, i8* %18, align 1
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %7, align 8
  store i8 %109, i8* %110, align 1
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %12, align 8
  %115 = sub i64 %113, %114
  %116 = lshr i64 %115, 63
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %11, align 8
  br label %119

119:                                              ; preds = %112
  %120 = load i64, i64* %13, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %13, align 8
  br label %71

122:                                              ; preds = %71
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %49, %38
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @BN_num_bytes(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bn_correct_top(%struct.TYPE_5__*) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
