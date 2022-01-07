; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_strnid.c_ASN1_STRING_set_default_mask_asc.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_strnid.c_ASN1_STRING_set_default_mask_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"MASK:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"nombstr\00", align 1
@B_ASN1_BMPSTRING = common dso_local global i64 0, align 8
@B_ASN1_UTF8STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"pkix\00", align 1
@B_ASN1_T61STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"utf8only\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_STRING_set_default_mask_asc(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strncmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 5
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %60

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 5
  %19 = call i64 @strtoul(i8* %18, i8** %5, i32 0)
  store i64 %19, i64* %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %60

24:                                               ; preds = %16
  br label %57

25:                                               ; preds = %1
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i64, i64* @B_ASN1_BMPSTRING, align 8
  %31 = load i64, i64* @B_ASN1_UTF8STRING, align 8
  %32 = or i64 %30, %31
  %33 = xor i64 %32, -1
  store i64 %33, i64* %4, align 8
  br label %56

34:                                               ; preds = %25
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* @B_ASN1_T61STRING, align 8
  %40 = xor i64 %39, -1
  store i64 %40, i64* %4, align 8
  br label %55

41:                                               ; preds = %34
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @B_ASN1_UTF8STRING, align 8
  store i64 %46, i64* %4, align 8
  br label %54

47:                                               ; preds = %41
  %48 = load i8*, i8** %3, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i64 4294967295, i64* %4, align 8
  br label %53

52:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %60

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %45
  br label %55

55:                                               ; preds = %54, %38
  br label %56

56:                                               ; preds = %55, %29
  br label %57

57:                                               ; preds = %56, %24
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @ASN1_STRING_set_default_mask(i64 %58)
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %52, %23, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ASN1_STRING_set_default_mask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
