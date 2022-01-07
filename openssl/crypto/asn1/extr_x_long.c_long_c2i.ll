; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_x_long.c_long_c2i.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_x_long.c_long_c2i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ASN1_F_LONG_C2I = common dso_local global i32 0, align 4
@ASN1_R_INTEGER_TOO_LARGE_FOR_LONG = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i32, i32, i8*, %struct.TYPE_3__*)* @long_c2i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @long_c2i(i32** %0, i8* %1, i32 %2, i32 %3, i8* %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  store i64 0, i64* %16, align 8
  store i64 256, i64* %17, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %6
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  switch i32 %24, label %35 [
    i32 255, label %25
    i32 0, label %30
  ]

25:                                               ; preds = %20
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %10, align 4
  store i64 255, i64* %17, align 8
  br label %35

30:                                               ; preds = %20
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %10, align 4
  store i64 0, i64* %17, align 8
  br label %35

35:                                               ; preds = %20, %30, %25
  br label %36

36:                                               ; preds = %35, %6
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 8
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @ASN1_F_LONG_C2I, align 4
  %41 = load i32, i32* @ASN1_R_INTEGER_TOO_LARGE_FOR_LONG, align 4
  %42 = call i32 @ASN1err(i32 %40, i32 %41)
  store i32 0, i32* %7, align 4
  br label %126

43:                                               ; preds = %36
  %44 = load i64, i64* %17, align 8
  %45 = icmp eq i64 %44, 256
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 128
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i64 255, i64* %17, align 8
  br label %58

57:                                               ; preds = %49, %46
  store i64 0, i64* %17, align 8
  br label %58

58:                                               ; preds = %57, %56
  br label %73

59:                                               ; preds = %43
  %60 = load i64, i64* %17, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i64
  %65 = xor i64 %60, %64
  %66 = and i64 %65, 128
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @ASN1_F_LONG_C2I, align 4
  %70 = load i32, i32* @ASN1_R_ILLEGAL_PADDING, align 4
  %71 = call i32 @ASN1err(i32 %69, i32 %70)
  store i32 0, i32* %7, align 4
  br label %126

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %58
  store i64 0, i64* %16, align 8
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load i64, i64* %16, align 8
  %80 = shl i64 %79, 8
  store i64 %80, i64* %16, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i64
  %87 = load i64, i64* %17, align 8
  %88 = xor i64 %86, %87
  %89 = load i64, i64* %16, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %16, align 8
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %74

94:                                               ; preds = %74
  %95 = load i64, i64* %16, align 8
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %15, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* @ASN1_F_LONG_C2I, align 4
  %100 = load i32, i32* @ASN1_R_INTEGER_TOO_LARGE_FOR_LONG, align 4
  %101 = call i32 @ASN1err(i32 %99, i32 %100)
  store i32 0, i32* %7, align 4
  br label %126

102:                                              ; preds = %94
  %103 = load i64, i64* %17, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i64, i64* %15, align 8
  %107 = sub nsw i64 0, %106
  %108 = sub nsw i64 %107, 1
  store i64 %108, i64* %15, align 8
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i64, i64* %15, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* @ASN1_F_LONG_C2I, align 4
  %117 = load i32, i32* @ASN1_R_INTEGER_TOO_LARGE_FOR_LONG, align 4
  %118 = call i32 @ASN1err(i32 %116, i32 %117)
  store i32 0, i32* %7, align 4
  br label %126

119:                                              ; preds = %109
  %120 = load i32**, i32*** %8, align 8
  %121 = load i32**, i32*** %8, align 8
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %15, align 8
  %124 = call i32 @COPY_SIZE(i32* %122, i64 %123)
  %125 = call i32 @memcpy(i32** %120, i64* %15, i32 %124)
  store i32 1, i32* %7, align 4
  br label %126

126:                                              ; preds = %119, %115, %98, %68, %39
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @memcpy(i32**, i64*, i32) #1

declare dso_local i32 @COPY_SIZE(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
