; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_wrp.c_aes_wrap_cipher_internal.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_wrp.c_aes_wrap_cipher_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i64, i64 }
%struct.TYPE_6__ = type { i64 (i32*, i32*, i8*, i8*, i64, i32)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64)* @aes_wrap_cipher_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_wrap_cipher_internal(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %11, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %106

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %106

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  %35 = icmp ult i64 %34, 16
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %9, align 8
  %38 = and i64 %37, 7
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %33
  store i32 -1, i32* %5, align 4
  br label %106

41:                                               ; preds = %36, %28
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %9, align 8
  %46 = and i64 %45, 7
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  br label %106

49:                                               ; preds = %44, %41
  %50 = load i8*, i8** %7, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, 7
  %63 = udiv i64 %62, 8
  %64 = mul i64 %63, 8
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %106

69:                                               ; preds = %52
  %70 = load i64, i64* %9, align 8
  %71 = sub i64 %70, 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %106

73:                                               ; preds = %49
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64 (i32*, i32*, i8*, i8*, i64, i32)*, i64 (i32*, i32*, i8*, i8*, i64, i32)** %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  br label %89

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i32* [ %87, %84 ], [ null, %88 ]
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 %76(i32* %79, i32* %90, i8* %91, i8* %92, i64 %93, i32 %96)
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i64, i64* %12, align 8
  %102 = trunc i64 %101 to i32
  br label %104

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %100
  %105 = phi i32 [ %102, %100 ], [ -1, %103 ]
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %69, %65, %48, %40, %27, %23
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
