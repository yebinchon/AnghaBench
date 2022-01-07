; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_lib.c_ASN1_get_object.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_lib.c_ASN1_get_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_ASN1_CONSTRUCTED = common dso_local global i8 0, align 1
@V_ASN1_PRIVATE = common dso_local global i8 0, align 1
@V_ASN1_PRIMITIVE_TAG = common dso_local global i8 0, align 1
@INT_MAX = common dso_local global i64 0, align 8
@ASN1_F_ASN1_GET_OBJECT = common dso_local global i32 0, align 4
@ASN1_R_TOO_LONG = common dso_local global i32 0, align 4
@ASN1_R_HEADER_TOO_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_get_object(i8** %0, i64* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i8** %0, i8*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %15, align 8
  %22 = load i64, i64* %11, align 8
  store i64 %22, i64* %19, align 8
  %23 = load i64, i64* %19, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  br label %156

26:                                               ; preds = %5
  %27 = load i8*, i8** %15, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @V_ASN1_CONSTRUCTED, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  store i32 %32, i32* %13, align 4
  %33 = load i8*, i8** %15, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @V_ASN1_PRIVATE, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  store i32 %38, i32* %17, align 4
  %39 = load i8*, i8** %15, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @V_ASN1_PRIMITIVE_TAG, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i8, i8* @V_ASN1_PRIMITIVE_TAG, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %103

49:                                               ; preds = %26
  %50 = load i8*, i8** %15, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %15, align 8
  %52 = load i64, i64* %19, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %19, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %156

56:                                               ; preds = %49
  store i64 0, i64* %14, align 8
  br label %57

57:                                               ; preds = %84, %56
  %58 = load i8*, i8** %15, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 128
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %57
  %64 = load i64, i64* %14, align 8
  %65 = shl i64 %64, 7
  store i64 %65, i64* %14, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %15, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 127
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %14, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %19, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %19, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %156

78:                                               ; preds = %63
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* @INT_MAX, align 8
  %81 = ashr i64 %80, 7
  %82 = icmp sgt i64 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %156

84:                                               ; preds = %78
  br label %57

85:                                               ; preds = %57
  %86 = load i64, i64* %14, align 8
  %87 = shl i64 %86, 7
  store i64 %87, i64* %14, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %15, align 8
  %90 = load i8, i8* %88, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 127
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %14, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %14, align 8
  %96 = load i64, i64* %14, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %16, align 4
  %98 = load i64, i64* %19, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %19, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %85
  br label %156

102:                                              ; preds = %85
  br label %112

103:                                              ; preds = %26
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %16, align 4
  %105 = load i8*, i8** %15, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %15, align 8
  %107 = load i64, i64* %19, align 8
  %108 = add nsw i64 %107, -1
  store i64 %108, i64* %19, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %156

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %102
  %113 = load i32, i32* %16, align 4
  %114 = load i32*, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32*, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i64*, i64** %8, align 8
  %118 = load i64, i64* %19, align 8
  %119 = call i32 @asn1_get_length(i8** %15, i32* %18, i64* %117, i64 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %112
  br label %156

122:                                              ; preds = %112
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  %127 = load i8, i8* @V_ASN1_CONSTRUCTED, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  br label %156

132:                                              ; preds = %125, %122
  %133 = load i64*, i64** %8, align 8
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = load i8**, i8*** %7, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = ptrtoint i8* %136 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sub nsw i64 %135, %141
  %143 = icmp sgt i64 %134, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %132
  %145 = load i32, i32* @ASN1_F_ASN1_GET_OBJECT, align 4
  %146 = load i32, i32* @ASN1_R_TOO_LONG, align 4
  %147 = call i32 @ASN1err(i32 %145, i32 %146)
  %148 = load i32, i32* %13, align 4
  %149 = or i32 %148, 128
  store i32 %149, i32* %13, align 4
  br label %150

150:                                              ; preds = %144, %132
  %151 = load i8*, i8** %15, align 8
  %152 = load i8**, i8*** %7, align 8
  store i8* %151, i8** %152, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %18, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %6, align 4
  br label %160

156:                                              ; preds = %131, %121, %110, %101, %83, %77, %55, %25
  %157 = load i32, i32* @ASN1_F_ASN1_GET_OBJECT, align 4
  %158 = load i32, i32* @ASN1_R_HEADER_TOO_LONG, align 4
  %159 = call i32 @ASN1err(i32 %157, i32 %158)
  store i32 128, i32* %6, align 4
  br label %160

160:                                              ; preds = %156, %150
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local i32 @asn1_get_length(i8**, i32*, i64*, i64) #1

declare dso_local i32 @ASN1err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
