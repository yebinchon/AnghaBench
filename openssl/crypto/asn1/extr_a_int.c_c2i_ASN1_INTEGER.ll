; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_c2i_ASN1_INTEGER.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_c2i_ASN1_INTEGER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }

@V_ASN1_INTEGER = common dso_local global i32 0, align 4
@V_ASN1_NEG = common dso_local global i32 0, align 4
@ASN1_F_C2I_ASN1_INTEGER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @c2i_ASN1_INTEGER(%struct.TYPE_7__** %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @c2i_ibuf(i32* null, i32* null, i8* %12, i64 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %86

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %20 = icmp eq %struct.TYPE_7__** %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %21, %18
  %26 = call %struct.TYPE_7__* (...) @ASN1_INTEGER_new()
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %8, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = icmp eq %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %86

30:                                               ; preds = %25
  %31 = load i32, i32* @V_ASN1_INTEGER, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %37

34:                                               ; preds = %21
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %8, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @ASN1_STRING_set(%struct.TYPE_7__* %38, i32* null, i64 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %71

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i8**, i8*** %6, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @c2i_ibuf(i32* %46, i32* %10, i8* %48, i64 %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32, i32* @V_ASN1_NEG, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %43
  %60 = load i64, i64* %7, align 8
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 %60
  store i8* %63, i8** %61, align 8
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %65 = icmp ne %struct.TYPE_7__** %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %68, align 8
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %4, align 8
  br label %86

71:                                               ; preds = %42
  %72 = load i32, i32* @ASN1_F_C2I_ASN1_INTEGER, align 4
  %73 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %74 = call i32 @ASN1err(i32 %72, i32 %73)
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %76 = icmp eq %struct.TYPE_7__** %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = icmp ne %struct.TYPE_7__* %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77, %71
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = call i32 @ASN1_INTEGER_free(%struct.TYPE_7__* %83)
  br label %85

85:                                               ; preds = %82, %77
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %86

86:                                               ; preds = %85, %69, %29, %17
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %87
}

declare dso_local i64 @c2i_ibuf(i32*, i32*, i8*, i64) #1

declare dso_local %struct.TYPE_7__* @ASN1_INTEGER_new(...) #1

declare dso_local i64 @ASN1_STRING_set(%struct.TYPE_7__*, i32*, i64) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @ASN1_INTEGER_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
