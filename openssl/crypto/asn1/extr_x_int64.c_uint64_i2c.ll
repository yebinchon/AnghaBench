; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_x_int64.c_uint64_i2c.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_x_int64.c_uint64_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@INTxx_FLAG_ZERO_DEFAULT = common dso_local global i32 0, align 4
@INTxx_FLAG_SIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i32*, %struct.TYPE_3__*)* @uint64_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uint64_i2c(i32** %0, i8* %1, i32* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to i8*
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = call i32 @memcpy(i64* %10, i8* %16, i32 8)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @INTxx_FLAG_ZERO_DEFAULT, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @INTxx_FLAG_ZERO_DEFAULT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %48

29:                                               ; preds = %25, %4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @INTxx_FLAG_SIGNED, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @INTxx_FLAG_SIGNED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i64, i64* %10, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* %10, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %10, align 8
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %37, %29
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @i2c_uint64_int(i8* %44, i64 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %28
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @i2c_uint64_int(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
