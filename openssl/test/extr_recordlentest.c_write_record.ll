; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_recordlentest.c_write_record.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_recordlentest.c_write_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL3_RT_HEADER_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32)* @write_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_record(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @SSL3_RT_HEADER_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 256)
  %22 = load i32, i32* %8, align 4
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %23, i8* %24, align 16
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 255
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %28, i8* %29, align 1
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 255
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds i8, i8* %19, i64 2
  store i8 %32, i8* %33, align 2
  %34 = load i64, i64* %7, align 8
  %35 = lshr i64 %34, 8
  %36 = and i64 %35, 255
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds i8, i8* %19, i64 3
  store i8 %37, i8* %38, align 1
  %39 = load i64, i64* %7, align 8
  %40 = and i64 %39, 255
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds i8, i8* %19, i64 4
  store i8 %41, i8* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @SSL3_RT_HEADER_LENGTH, align 4
  %45 = sext i32 %44 to i64
  %46 = call i32 @BIO_write_ex(i32* %43, i8* %19, i64 %45, i64* %12)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %4
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* @SSL3_RT_HEADER_LENGTH, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %80

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %75, %54
  %56 = load i64, i64* %7, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load i64, i64* %7, align 8
  %60 = icmp ugt i64 %59, 256
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i64 256, i64* %15, align 8
  br label %64

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  store i64 %63, i64* %15, align 8
  br label %64

64:                                               ; preds = %62, %61
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %67 = load i64, i64* %15, align 8
  %68 = call i32 @BIO_write_ex(i32* %65, i8* %66, i64 %67, i64* %12)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %15, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %64
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %80

75:                                               ; preds = %70
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %7, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %7, align 8
  br label %55

79:                                               ; preds = %55
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %80

80:                                               ; preds = %79, %74, %53
  %81 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @BIO_write_ex(i32*, i8*, i64, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
