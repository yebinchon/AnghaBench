; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_f_int.c_i2a_ASN1_INTEGER.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_f_int.c_i2a_ASN1_INTEGER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64* }

@i2a_ASN1_INTEGER.h = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@V_ASN1_NEG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2a_ASN1_INTEGER(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @V_ASN1_NEG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @BIO_write(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %106

24:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %12
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @BIO_write(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %106

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %7, align 4
  br label %104

38:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %100, %38
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %103

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = srem i32 %49, 35
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @BIO_write(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %55 = icmp ne i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %106

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %48, %45
  %61 = load i8*, i8** @i2a_ASN1_INTEGER.h, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i8
  %70 = zext i8 %69 to i32
  %71 = ashr i32 %70, 4
  %72 = and i32 %71, 15
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %61, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %75, i8* %76, align 1
  %77 = load i8*, i8** @i2a_ASN1_INTEGER.h, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i8
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 15
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %77, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %90, i8* %91, align 1
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %94 = call i32 @BIO_write(i32* %92, i8* %93, i32 2)
  %95 = icmp ne i32 %94, 2
  br i1 %95, label %96, label %97

96:                                               ; preds = %60
  br label %106

97:                                               ; preds = %60
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %39

103:                                              ; preds = %39
  br label %104

104:                                              ; preds = %103, %35
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %107

106:                                              ; preds = %96, %56, %34, %23
  store i32 -1, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %104, %11
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
