; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ia5.c_s2i_ASN1_IA5STRING.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ia5.c_s2i_ASN1_IA5STRING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@X509V3_F_S2I_ASN1_IA5STRING = common dso_local global i32 0, align 4
@X509V3_R_INVALID_NULL_ARGUMENT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @s2i_ASN1_IA5STRING(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @X509V3_F_S2I_ASN1_IA5STRING, align 4
  %13 = load i32, i32* @X509V3_R_INVALID_NULL_ARGUMENT, align 4
  %14 = call i32 @X509V3err(i32 %12, i32 %13)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %36

15:                                               ; preds = %3
  %16 = call %struct.TYPE_5__* (...) @ASN1_IA5STRING_new()
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %8, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %32

19:                                               ; preds = %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = bitcast %struct.TYPE_5__* %20 to i32*
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32 @ASN1_STRING_set(i32* %21, i8* %22, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = call i32 @ASN1_IA5STRING_free(%struct.TYPE_5__* %28)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %36

30:                                               ; preds = %19
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %4, align 8
  br label %36

32:                                               ; preds = %18
  %33 = load i32, i32* @X509V3_F_S2I_ASN1_IA5STRING, align 4
  %34 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %35 = call i32 @X509V3err(i32 %33, i32 %34)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %36

36:                                               ; preds = %32, %30, %27, %11
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %37
}

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local %struct.TYPE_5__* @ASN1_IA5STRING_new(...) #1

declare dso_local i32 @ASN1_STRING_set(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ASN1_IA5STRING_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
