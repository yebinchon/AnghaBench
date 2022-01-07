; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_lib.c_ASN1_put_object.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_lib.c_ASN1_put_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@V_ASN1_PRIVATE = common dso_local global i32 0, align 4
@V_ASN1_PRIMITIVE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ASN1_put_object(i8** %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @V_ASN1_PRIVATE, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %12, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 31
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @V_ASN1_PRIMITIVE_TAG, align 4
  %34 = and i32 %32, %33
  %35 = or i32 %31, %34
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %11, align 8
  store i8 %36, i8* %37, align 1
  br label %91

39:                                               ; preds = %21
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @V_ASN1_PRIMITIVE_TAG, align 4
  %42 = or i32 %40, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %11, align 8
  store i8 %43, i8* %44, align 1
  store i32 0, i32* %12, align 4
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %53, %39
  %48 = load i32, i32* %13, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = ashr i32 %51, 7
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %47

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %83, %56
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %12, align 4
  %61 = icmp sgt i32 %59, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 127
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 %65, i8* %69, align 1
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %62
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = or i32 %80, 128
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %78, align 1
  br label %83

83:                                               ; preds = %74, %62
  %84 = load i32, i32* %9, align 4
  %85 = ashr i32 %84, 7
  store i32 %85, i32* %9, align 4
  br label %58

86:                                               ; preds = %58
  %87 = load i32, i32* %13, align 4
  %88 = load i8*, i8** %11, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %11, align 8
  br label %91

91:                                               ; preds = %86, %30
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %11, align 8
  store i8 -128, i8* %95, align 1
  br label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @asn1_put_length(i8** %11, i32 %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i8*, i8** %11, align 8
  %102 = load i8**, i8*** %6, align 8
  store i8* %101, i8** %102, align 8
  ret void
}

declare dso_local i32 @asn1_put_length(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
