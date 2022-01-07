; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_enc.c_set_hex.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_enc.c_set_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"hex string is too long, ignoring excess\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"hex string is too short, padding with zero bytes to length\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"non-hex digit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @set_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_hex(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = mul nsw i32 %11, 2
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @bio_err, align 4
  %20 = call i32 @BIO_printf(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %9, align 4
  br label %30

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @bio_err, align 4
  %28 = call i32 @BIO_printf(i32 %27, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @memset(i8* %31, i32 0, i32 %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %78, %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  %41 = load i8, i8* %39, align 1
  store i8 %41, i8* %10, align 1
  %42 = load i8, i8* %10, align 1
  %43 = call i32 @isxdigit(i8 zeroext %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @bio_err, align 4
  %47 = call i32 @BIO_printf(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %82

48:                                               ; preds = %38
  %49 = load i8, i8* %10, align 1
  %50 = call i64 @OPENSSL_hexchar2int(i8 zeroext %49)
  %51 = trunc i64 %50 to i8
  store i8 %51, i8* %10, align 1
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load i8, i8* %10, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %64, %57
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %62, align 1
  br label %77

67:                                               ; preds = %48
  %68 = load i8, i8* %10, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 4
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sdiv i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 %71, i8* %76, align 1
  br label %77

77:                                               ; preds = %67, %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %34

81:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %45
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @isxdigit(i8 zeroext) #1

declare dso_local i64 @OPENSSL_hexchar2int(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
