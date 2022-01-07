; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_danetest.c_hexdecode.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_danetest.c_hexdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @hexdecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hexdecode(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i8**
  store i8** %13, i8*** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = sdiv i32 %15, 2
  %17 = call i8* @OPENSSL_malloc(i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = call i32 @TEST_ptr(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %81

21:                                               ; preds = %2
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %8, align 8
  store i8 0, i8* %9, align 1
  br label %23

23:                                               ; preds = %64, %21
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @_UC(i8 signext %29)
  %31 = call i64 @isspace(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %64

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @OPENSSL_hexchar2int(i8 signext %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @OPENSSL_free(i8* %41)
  store i32 0, i32* %3, align 4
  br label %81

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  %45 = trunc i32 %44 to i8
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = or i32 %48, %46
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %9, align 1
  %51 = load i32, i32* %10, align 4
  %52 = xor i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load i8, i8* %9, align 1
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  store i8 %55, i8* %56, align 1
  store i8 0, i8* %9, align 1
  br label %63

58:                                               ; preds = %43
  %59 = load i8, i8* %9, align 1
  %60 = sext i8 %59 to i32
  %61 = shl i32 %60, 4
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %9, align 1
  br label %63

63:                                               ; preds = %58, %54
  br label %64

64:                                               ; preds = %63, %33
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %4, align 8
  br label %23

67:                                               ; preds = %23
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @OPENSSL_free(i8* %71)
  store i32 0, i32* %3, align 4
  br label %81

73:                                               ; preds = %67
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8**, i8*** %6, align 8
  store i8* %75, i8** %76, align 8
  %77 = ptrtoint i8* %74 to i64
  %78 = ptrtoint i8* %75 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %73, %70, %40, %20
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @_UC(i8 signext) #1

declare dso_local i32 @OPENSSL_hexchar2int(i8 signext) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
