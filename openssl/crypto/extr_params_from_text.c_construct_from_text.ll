; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_params_from_text.c_construct_from_text.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_params_from_text.c_construct_from_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*, i8*, i64, i32, i8*, i64, i32*)* @construct_from_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct_from_text(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i8* %2, i64 %3, i32 %4, i8* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load i8*, i8** %15, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %98

24:                                               ; preds = %8
  %25 = load i64, i64* %16, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %85

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %84 [
    i32 131, label %31
    i32 129, label %31
    i32 128, label %62
    i32 130, label %67
  ]

31:                                               ; preds = %27, %27
  %32 = load i32*, i32** %17, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = load i64, i64* %16, align 8
  %35 = call i32 @BN_bn2nativepad(i32* %32, i8* %33, i64 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 131
  br i1 %39, label %40, label %61

40:                                               ; preds = %31
  %41 = load i32*, i32** %17, align 8
  %42 = call i32 @BN_is_negative(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i64, i64* %16, align 8
  store i64 %45, i64* %19, align 8
  %46 = load i8*, i8** %15, align 8
  store i8* %46, i8** %18, align 8
  br label %47

47:                                               ; preds = %57, %44
  %48 = load i64, i64* %19, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %19, align 8
  %50 = icmp ugt i64 %48, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i8*, i8** %18, align 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, 255
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 1
  br label %57

57:                                               ; preds = %51
  %58 = load i8*, i8** %18, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %18, align 8
  br label %47

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %40, %31
  br label %84

62:                                               ; preds = %27
  %63 = load i8*, i8** %15, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i64, i64* %16, align 8
  %66 = call i32 @strncpy(i8* %63, i8* %64, i64 %65)
  br label %84

67:                                               ; preds = %27
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  store i64 0, i64* %20, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = load i64, i64* %16, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @OPENSSL_hexstr2buf_ex(i8* %71, i64 %72, i64* %20, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %98

77:                                               ; preds = %70
  br label %83

78:                                               ; preds = %67
  %79 = load i8*, i8** %15, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i64, i64* %16, align 8
  %82 = call i32 @memcpy(i8* %79, i8* %80, i64 %81)
  br label %83

83:                                               ; preds = %78, %77
  br label %84

84:                                               ; preds = %27, %83, %62, %61
  br label %85

85:                                               ; preds = %84, %24
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %88 = bitcast %struct.TYPE_4__* %86 to i8*
  %89 = bitcast %struct.TYPE_4__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 32, i1 false)
  %90 = load i8*, i8** %15, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  store i32 1, i32* %9, align 4
  br label %98

98:                                               ; preds = %85, %76, %23
  %99 = load i32, i32* %9, align 4
  ret i32 %99
}

declare dso_local i32 @BN_bn2nativepad(i32*, i8*, i64) #1

declare dso_local i32 @BN_is_negative(i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_hexstr2buf_ex(i8*, i64, i64*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
