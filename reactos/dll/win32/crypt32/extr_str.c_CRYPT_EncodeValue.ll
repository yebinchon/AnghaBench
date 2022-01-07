; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_str.c_CRYPT_EncodeValue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_str.c_CRYPT_EncodeValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X500TokenW = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.X500TokenW*, i32, i64*, i32*)* @CRYPT_EncodeValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_EncodeValue(i64 %0, %struct.X500TokenW* %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.X500TokenW*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.X500TokenW* %1, %struct.X500TokenW** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %35, %5
  %15 = load i64, i64* %12, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i64*, i64** %9, align 8
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.X500TokenW*, %struct.X500TokenW** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i64 @CRYPT_EncodeValueWithType(i64 %26, %struct.X500TokenW* %27, i32 %28, i64 %32, i32* %33)
  store i64 %34, i64* %12, align 8
  br label %35

35:                                               ; preds = %25
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %11, align 8
  br label %14

38:                                               ; preds = %23
  %39 = load i64, i64* %12, align 8
  ret i64 %39
}

declare dso_local i64 @CRYPT_EncodeValueWithType(i64, %struct.X500TokenW*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
