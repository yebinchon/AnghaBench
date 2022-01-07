; ModuleID = '/home/carl/AnghaBench/openssl/crypto/mdc2/extr_mdc2dgst.c_mdc2_body.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/mdc2/extr_mdc2dgst.c_mdc2_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i64)* @mdc2_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdc2_body(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %107, %3
  %17 = load i64, i64* %15, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %110

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @c2l(i8* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @c2l(i8* %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 159
  %39 = or i32 %38, 64
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 159
  %50 = or i32 %49, 32
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @DES_set_odd_parity(i32** %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @DES_set_key_unchecked(i32** %59, i32* %13)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %62 = call i32 @DES_encrypt1(i32* %61, i32* %13, i32 1)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = call i32 @DES_set_odd_parity(i32** %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = call i32 @DES_set_key_unchecked(i32** %67, i32* %13)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %70 = call i32 @DES_encrypt1(i32* %69, i32* %13, i32 1)
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %71, %73
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %75, %77
  store i32 %78, i32* %10, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = bitcast i32* %89 to i8*
  store i8* %90, i8** %14, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @l2c(i32 %91, i8* %92)
  %94 = load i32, i32* %10, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 @l2c(i32 %94, i8* %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = bitcast i32* %99 to i8*
  store i8* %100, i8** %14, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i8*, i8** %14, align 8
  %103 = call i32 @l2c(i32 %101, i8* %102)
  %104 = load i32, i32* %8, align 4
  %105 = load i8*, i8** %14, align 8
  %106 = call i32 @l2c(i32 %104, i8* %105)
  br label %107

107:                                              ; preds = %20
  %108 = load i64, i64* %15, align 8
  %109 = add i64 %108, 8
  store i64 %109, i64* %15, align 8
  br label %16

110:                                              ; preds = %16
  ret void
}

declare dso_local i32 @c2l(i8*, i32) #1

declare dso_local i32 @DES_set_odd_parity(i32**) #1

declare dso_local i32 @DES_set_key_unchecked(i32**, i32*) #1

declare dso_local i32 @DES_encrypt1(i32*, i32*, i32) #1

declare dso_local i32 @l2c(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
