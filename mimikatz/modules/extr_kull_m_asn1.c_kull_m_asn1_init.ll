; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_asn1.c_kull_m_asn1_init.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_asn1.c_kull_m_asn1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ASN1_THIS_VERSION = common dso_local global i32 0, align 4
@ASN1_BER_RULE_DER = common dso_local global i32 0, align 4
@ASN1FLAGS_NOASSERT = common dso_local global i32 0, align 4
@kull_m_asn1_encdecfreefntab = common dso_local global i64 0, align 8
@kull_m_asn1_sizetab = common dso_local global i32 0, align 4
@hASN1Module = common dso_local global i64 0, align 8
@ASN1enc = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i32] [i32 65, i32 83, i32 78, i32 49, i32 95, i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 69, i32 110, i32 99, i32 111, i32 100, i32 101, i32 114, i32 58, i32 32, i32 37, i32 105, i32 10, i32 0], align 4
@ASN1dec = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [24 x i32] [i32 65, i32 83, i32 78, i32 49, i32 95, i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 68, i32 101, i32 99, i32 111, i32 100, i32 101, i32 114, i32 58, i32 32, i32 37, i32 105, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [19 x i32] [i32 65, i32 83, i32 78, i32 49, i32 95, i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 77, i32 111, i32 100, i32 117, i32 108, i32 101, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_asn1_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @FALSE, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @ASN1_THIS_VERSION, align 4
  %5 = load i32, i32* @ASN1_BER_RULE_DER, align 4
  %6 = load i32, i32* @ASN1FLAGS_NOASSERT, align 4
  %7 = load i64, i64* @kull_m_asn1_encdecfreefntab, align 8
  %8 = load i64, i64* @kull_m_asn1_encdecfreefntab, align 8
  %9 = load i64, i64* @kull_m_asn1_encdecfreefntab, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* @kull_m_asn1_sizetab, align 4
  %12 = call i64 @ASN1_CreateModule(i32 %4, i32 %5, i32 %6, i32 1, i64 %7, i64 %8, i32* %10, i32 %11, i8 signext 107)
  store i64 %12, i64* @hASN1Module, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %0
  %15 = load i64, i64* @hASN1Module, align 8
  %16 = call i32 @ASN1_CreateEncoder(i64 %15, i32** @ASN1enc, i32* null, i32 0, i32* null)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @ASN1_FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([24 x i32]* @.str to i8*), i32 %21)
  store i32* null, i32** @ASN1enc, align 8
  br label %33

23:                                               ; preds = %14
  %24 = load i64, i64* @hASN1Module, align 8
  %25 = call i32 @ASN1_CreateDecoder(i64 %24, i32** @ASN1dec, i32* null, i32 0, i32* null)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @ASN1_FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %2, align 4
  %31 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([24 x i32]* @.str.1 to i8*), i32 %30)
  store i32* null, i32** @ASN1dec, align 8
  br label %32

32:                                               ; preds = %29, %23
  br label %33

33:                                               ; preds = %32, %20
  br label %36

34:                                               ; preds = %0
  %35 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([19 x i32]* @.str.2 to i8*))
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i64, i64* @hASN1Module, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32*, i32** @ASN1enc, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** @ASN1dec, align 8
  %44 = icmp ne i32* %43, null
  br label %45

45:                                               ; preds = %42, %39, %36
  %46 = phi i1 [ false, %39 ], [ false, %36 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call i32 (...) @kull_m_asn1_term()
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i64 @ASN1_CreateModule(i32, i32, i32, i32, i64, i64, i32*, i32, i8 signext) #1

declare dso_local i32 @ASN1_CreateEncoder(i64, i32**, i32*, i32, i32*) #1

declare dso_local i64 @ASN1_FAILED(i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

declare dso_local i32 @ASN1_CreateDecoder(i64, i32**, i32*, i32, i32*) #1

declare dso_local i32 @kull_m_asn1_term(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
