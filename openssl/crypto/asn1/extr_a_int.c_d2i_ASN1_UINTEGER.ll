; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_d2i_ASN1_UINTEGER.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_d2i_ASN1_UINTEGER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32 }

@V_ASN1_INTEGER = common dso_local global i32 0, align 4
@ASN1_R_BAD_OBJECT_HEADER = common dso_local global i32 0, align 4
@ASN1_R_EXPECTING_AN_INTEGER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ASN1_F_D2I_ASN1_UINTEGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @d2i_ASN1_UINTEGER(%struct.TYPE_6__** %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %17 = icmp eq %struct.TYPE_6__** %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %18, %3
  %23 = call %struct.TYPE_6__* (...) @ASN1_INTEGER_new()
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %8, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %122

26:                                               ; preds = %22
  %27 = load i32, i32* @V_ASN1_INTEGER, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %33

30:                                               ; preds = %18
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %8, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @ASN1_get_object(i8** %9, i64* %11, i32* %13, i32* %14, i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @ASN1_R_BAD_OBJECT_HEADER, align 4
  store i32 %42, i32* %15, align 4
  br label %107

43:                                               ; preds = %33
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @V_ASN1_INTEGER, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @ASN1_R_EXPECTING_AN_INTEGER, align 4
  store i32 %48, i32* %15, align 4
  br label %107

49:                                               ; preds = %43
  %50 = load i64, i64* %11, align 8
  %51 = trunc i64 %50 to i32
  %52 = add nsw i32 %51, 1
  %53 = call i8* @OPENSSL_malloc(i32 %52)
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  store i32 %57, i32* %15, align 4
  br label %107

58:                                               ; preds = %49
  %59 = load i32, i32* @V_ASN1_INTEGER, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load i8*, i8** %9, align 8
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 1
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %72, %69, %64
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i64, i64* %11, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcpy(i8* %78, i8* %79, i32 %81)
  %83 = load i64, i64* %11, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8* %85, i8** %9, align 8
  br label %86

86:                                               ; preds = %77, %58
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @OPENSSL_free(i8* %89)
  %91 = load i8*, i8** %10, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i64, i64* %11, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %99 = icmp ne %struct.TYPE_6__** %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %102, align 8
  br label %103

103:                                              ; preds = %100, %86
  %104 = load i8*, i8** %9, align 8
  %105 = load i8**, i8*** %6, align 8
  store i8* %104, i8** %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %4, align 8
  br label %122

107:                                              ; preds = %56, %47, %41
  %108 = load i32, i32* @ASN1_F_D2I_ASN1_UINTEGER, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @ASN1err(i32 %108, i32 %109)
  %111 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %112 = icmp eq %struct.TYPE_6__** %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %107
  %114 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %117 = icmp ne %struct.TYPE_6__* %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113, %107
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %120 = call i32 @ASN1_INTEGER_free(%struct.TYPE_6__* %119)
  br label %121

121:                                              ; preds = %118, %113
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %122

122:                                              ; preds = %121, %103, %25
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %123
}

declare dso_local %struct.TYPE_6__* @ASN1_INTEGER_new(...) #1

declare dso_local i32 @ASN1_get_object(i8**, i64*, i32*, i32*, i64) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @ASN1_INTEGER_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
