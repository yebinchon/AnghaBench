; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_tls13encryptiontest.c_multihexstr2buf.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_tls13encryptiontest.c_multihexstr2buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i64*)* @multihexstr2buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @multihexstr2buf(i8** %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %14, 3
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load i8**, i8*** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = load i64, i64* %10, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = and i64 %24, 1
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %102

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  br label %13

32:                                               ; preds = %13
  %33 = load i64, i64* %10, align 8
  %34 = udiv i64 %33, 2
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i8* @OPENSSL_malloc(i64 %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  br label %102

40:                                               ; preds = %32
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %95, %40
  %42 = load i64, i64* %6, align 8
  %43 = icmp ult i64 %42, 3
  br i1 %43, label %44, label %98

44:                                               ; preds = %41
  store i64 0, i64* %7, align 8
  br label %45

45:                                               ; preds = %91, %44
  %46 = load i8**, i8*** %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %94

55:                                               ; preds = %45
  %56 = load i8**, i8*** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @OPENSSL_hexchar2int(i8 signext %62)
  store i32 %63, i32* %11, align 4
  %64 = load i8**, i8*** %4, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @OPENSSL_hexchar2int(i8 signext %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %55
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75, %55
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @OPENSSL_free(i8* %79)
  store i8* null, i8** %3, align 8
  br label %102

81:                                               ; preds = %75
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 %82, 4
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %83, %84
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %8, align 8
  %90 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 %86, i8* %90, align 1
  br label %91

91:                                               ; preds = %81
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, 2
  store i64 %93, i64* %7, align 8
  br label %45

94:                                               ; preds = %45
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %6, align 8
  br label %41

98:                                               ; preds = %41
  %99 = load i64, i64* %10, align 8
  %100 = load i64*, i64** %5, align 8
  store i64 %99, i64* %100, align 8
  %101 = load i8*, i8** %9, align 8
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %98, %78, %39, %27
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @OPENSSL_hexchar2int(i8 signext) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
