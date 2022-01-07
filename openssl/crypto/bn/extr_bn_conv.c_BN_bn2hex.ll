; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_conv.c_BN_bn2hex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_conv.c_BN_bn2hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@BN_BYTES = common dso_local global i32 0, align 4
@BN_F_BN_BN2HEX = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@BN_BITS2 = common dso_local global i32 0, align 4
@Hex = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BN_bn2hex(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = call i64 @BN_is_zero(%struct.TYPE_4__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i8* @OPENSSL_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %100

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BN_BYTES, align 4
  %20 = mul nsw i32 %18, %19
  %21 = mul nsw i32 %20, 2
  %22 = add nsw i32 %21, 2
  %23 = call i8* @OPENSSL_malloc(i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load i32, i32* @BN_F_BN_BN2HEX, align 4
  %28 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %29 = call i32 @BNerr(i32 %27, i32 %28)
  br label %98

30:                                               ; preds = %15
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** %9, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  store i8 45, i8* %37, align 1
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %93, %39
  %45 = load i32, i32* %4, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %96

47:                                               ; preds = %44
  %48 = load i32, i32* @BN_BITS2, align 4
  %49 = sub nsw i32 %48, 8
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %89, %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %92

53:                                               ; preds = %50
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = ashr i32 %60, %61
  %63 = and i32 %62, 255
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %66, %53
  %70 = load i8**, i8*** @Hex, align 8
  %71 = load i32, i32* %6, align 4
  %72 = ashr i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i8
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %9, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i8**, i8*** @Hex, align 8
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, 15
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %84 to i8
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %9, align 8
  store i8 %85, i8* %86, align 1
  store i32 1, i32* %7, align 4
  br label %88

88:                                               ; preds = %69, %66
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %90, 8
  store i32 %91, i32* %5, align 4
  br label %50

92:                                               ; preds = %50
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %4, align 4
  br label %44

96:                                               ; preds = %44
  %97 = load i8*, i8** %9, align 8
  store i8 0, i8* %97, align 1
  br label %98

98:                                               ; preds = %96, %26
  %99 = load i8*, i8** %8, align 8
  store i8* %99, i8** %2, align 8
  br label %100

100:                                              ; preds = %98, %13
  %101 = load i8*, i8** %2, align 8
  ret i8* %101
}

declare dso_local i64 @BN_is_zero(%struct.TYPE_4__*) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @BNerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
