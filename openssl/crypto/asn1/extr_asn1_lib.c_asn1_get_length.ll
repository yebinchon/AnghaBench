; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_lib.c_asn1_get_length.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_lib.c_asn1_get_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i64*, i64)* @asn1_get_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_get_length(i8** %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %9, align 8
  %17 = icmp slt i64 %15, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %97

19:                                               ; preds = %4
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  store i32 1, i32* %25, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %10, align 8
  br label %92

28:                                               ; preds = %19
  %29 = load i32*, i32** %7, align 8
  store i32 0, i32* %29, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 127
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %10, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %28
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %97

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %58, %47
  %49 = load i32, i32* %12, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8*, i8** %10, align 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i1 [ false, %48 ], [ %55, %51 ]
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %12, align 4
  br label %48

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = icmp sgt i32 %64, 8
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %97

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %71, %67
  %69 = load i32, i32* %12, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i64, i64* %11, align 8
  %73 = shl i64 %72, 8
  store i64 %73, i64* %11, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %10, align 8
  %76 = load i8, i8* %74, align 1
  %77 = zext i8 %76 to i64
  %78 = load i64, i64* %11, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %12, align 4
  br label %68

82:                                               ; preds = %68
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* @LONG_MAX, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %97

87:                                               ; preds = %82
  br label %91

88:                                               ; preds = %28
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %11, align 8
  br label %91

91:                                               ; preds = %88, %87
  br label %92

92:                                               ; preds = %91, %24
  %93 = load i8*, i8** %10, align 8
  %94 = load i8**, i8*** %6, align 8
  store i8* %93, i8** %94, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64*, i64** %8, align 8
  store i64 %95, i64* %96, align 8
  store i32 1, i32* %5, align 4
  br label %97

97:                                               ; preds = %92, %86, %66, %46, %18
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
