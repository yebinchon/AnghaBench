; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_bitstr.c_c2i_ASN1_BIT_STRING.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_bitstr.c_c2i_ASN1_BIT_STRING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i32 }

@ASN1_R_STRING_TOO_SHORT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@ASN1_R_STRING_TOO_LONG = common dso_local global i32 0, align 4
@ASN1_R_INVALID_BIT_STRING_BITS_LEFT = common dso_local global i32 0, align 4
@ASN1_STRING_FLAG_BITS_LEFT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@V_ASN1_BIT_STRING = common dso_local global i32 0, align 4
@ASN1_F_C2I_ASN1_BIT_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @c2i_ASN1_BIT_STRING(%struct.TYPE_6__** %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp slt i64 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ASN1_R_STRING_TOO_SHORT, align 4
  store i32 %15, i32* %11, align 4
  br label %118

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @INT_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @ASN1_R_STRING_TOO_LONG, align 4
  store i32 %21, i32* %11, align 4
  br label %118

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %24 = icmp eq %struct.TYPE_6__** %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp eq %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %22
  %30 = call %struct.TYPE_6__* (...) @ASN1_BIT_STRING_new()
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %8, align 8
  %31 = icmp eq %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %133

33:                                               ; preds = %29
  br label %37

34:                                               ; preds = %25
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %8, align 8
  br label %37

37:                                               ; preds = %34, %33
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %9, align 8
  %42 = load i8, i8* %40, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 7
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @ASN1_R_INVALID_BIT_STRING_BITS_LEFT, align 4
  store i32 %47, i32* %11, align 4
  br label %118

48:                                               ; preds = %37
  %49 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %50 = or i32 %49, 7
  %51 = xor i32 %50, -1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %7, align 8
  %65 = icmp sgt i64 %63, 1
  br i1 %65, label %66, label %93

66:                                               ; preds = %48
  %67 = load i64, i64* %7, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i8* @OPENSSL_malloc(i32 %68)
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  store i32 %73, i32* %11, align 4
  br label %118

74:                                               ; preds = %66
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy(i8* %75, i8* %76, i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = shl i32 255, %80
  %82 = load i8*, i8** %10, align 8
  %83 = load i64, i64* %7, align 8
  %84 = sub nsw i64 %83, 1
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, %81
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %85, align 1
  %90 = load i64, i64* %7, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 %90
  store i8* %92, i8** %9, align 8
  br label %94

93:                                               ; preds = %48
  store i8* null, i8** %10, align 8
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i64, i64* %7, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @OPENSSL_free(i8* %101)
  %103 = load i8*, i8** %10, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* @V_ASN1_BIT_STRING, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %110 = icmp ne %struct.TYPE_6__** %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %94
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %113 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %113, align 8
  br label %114

114:                                              ; preds = %111, %94
  %115 = load i8*, i8** %9, align 8
  %116 = load i8**, i8*** %6, align 8
  store i8* %115, i8** %116, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %4, align 8
  br label %133

118:                                              ; preds = %72, %46, %20, %14
  %119 = load i32, i32* @ASN1_F_C2I_ASN1_BIT_STRING, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @ASN1err(i32 %119, i32 %120)
  %122 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %123 = icmp eq %struct.TYPE_6__** %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %118
  %125 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = icmp ne %struct.TYPE_6__* %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %124, %118
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %131 = call i32 @ASN1_BIT_STRING_free(%struct.TYPE_6__* %130)
  br label %132

132:                                              ; preds = %129, %124
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %133

133:                                              ; preds = %132, %114, %32
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %134
}

declare dso_local %struct.TYPE_6__* @ASN1_BIT_STRING_new(...) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @ASN1_BIT_STRING_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
