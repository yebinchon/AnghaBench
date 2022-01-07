; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_cs_hmac_sha1.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_cs_hmac_sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cs_hmac_sha1(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca [20 x i8], align 16
  %15 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ugt i64 %16, 64
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = call i32 @cs_sha1_init(i32* %11)
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @cs_sha1_update(i32* %11, i8* %20, i32 %22)
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %25 = call i32 @cs_sha1_final(i8* %24, i32* %11)
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  store i8* %26, i8** %6, align 8
  store i64 20, i64* %7, align 8
  br label %27

27:                                               ; preds = %18, %5
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %29 = call i32 @memset(i8* %28, i32 0, i32 64)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %31 = call i32 @memset(i8* %30, i32 0, i32 64)
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memcpy(i8* %32, i8* %33, i64 %34)
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @memcpy(i8* %36, i8* %37, i64 %38)
  store i8 0, i8* %15, align 1
  br label %40

40:                                               ; preds = %59, %27
  %41 = load i8, i8* %15, align 1
  %42 = zext i8 %41 to i64
  %43 = icmp ult i64 %42, 64
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i8, i8* %15, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = xor i32 %49, 54
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  %52 = load i8, i8* %15, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = xor i32 %56, 92
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  br label %59

59:                                               ; preds = %44
  %60 = load i8, i8* %15, align 1
  %61 = add i8 %60, 1
  store i8 %61, i8* %15, align 1
  br label %40

62:                                               ; preds = %40
  %63 = call i32 @cs_sha1_init(i32* %11)
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %65 = call i32 @cs_sha1_update(i32* %11, i8* %64, i32 64)
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @cs_sha1_update(i32* %11, i8* %66, i32 %68)
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @cs_sha1_final(i8* %70, i32* %11)
  %72 = call i32 @cs_sha1_init(i32* %11)
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %74 = call i32 @cs_sha1_update(i32* %11, i8* %73, i32 64)
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @cs_sha1_update(i32* %11, i8* %75, i32 20)
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @cs_sha1_final(i8* %77, i32* %11)
  ret void
}

declare dso_local i32 @cs_sha1_init(i32*) #1

declare dso_local i32 @cs_sha1_update(i32*, i8*, i32) #1

declare dso_local i32 @cs_sha1_final(i8*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
