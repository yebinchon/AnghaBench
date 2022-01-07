; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_ec_key_simple_priv2oct.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_ec_key_simple_priv2oct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@EC_F_EC_KEY_SIMPLE_PRIV2OCT = common dso_local global i32 0, align 4
@EC_R_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ec_key_simple_priv2oct(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @EC_GROUP_order_bits(i32 %11)
  %13 = add nsw i32 %12, 7
  %14 = sdiv i32 %13, 8
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %46

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %4, align 8
  br label %46

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i64 0, i64* %4, align 8
  br label %46

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @BN_bn2binpad(i32* %35, i8* %36, i64 %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @EC_F_EC_KEY_SIMPLE_PRIV2OCT, align 4
  %42 = load i32, i32* @EC_R_BUFFER_TOO_SMALL, align 4
  %43 = call i32 @ECerr(i32 %41, i32 %42)
  store i64 0, i64* %4, align 8
  br label %46

44:                                               ; preds = %32
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %44, %40, %30, %24, %20
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i32 @EC_GROUP_order_bits(i32) #1

declare dso_local i32 @BN_bn2binpad(i32*, i8*, i64) #1

declare dso_local i32 @ECerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
