; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_mbstr.c_traverse_string.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_mbstr.c_traverse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBSTRING_ASC = common dso_local global i32 0, align 4
@MBSTRING_BMP = common dso_local global i32 0, align 4
@MBSTRING_UNIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32 (i64, i8*)*, i8*)* @traverse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse_string(i8* %0, i32 %1, i32 %2, i32 (i64, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i64, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (i64, i8*)* %3, i32 (i64, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  br label %14

14:                                               ; preds = %110, %5
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %111

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MBSTRING_ASC, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i64
  store i64 %25, i64* %12, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %8, align 4
  br label %97

28:                                               ; preds = %17
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MBSTRING_BMP, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  %35 = load i8, i8* %33, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 8
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i64
  %43 = load i64, i64* %12, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %12, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, 2
  store i32 %46, i32* %8, align 4
  br label %96

47:                                               ; preds = %28
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MBSTRING_UNIV, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  %54 = load i8, i8* %52, align 1
  %55 = zext i8 %54 to i64
  %56 = shl i64 %55, 24
  store i64 %56, i64* %12, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i64
  %61 = shl i64 %60, 16
  %62 = load i64, i64* %12, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %12, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 8
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %12, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %12, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  %74 = load i8, i8* %72, align 1
  %75 = zext i8 %74 to i64
  %76 = load i64, i64* %12, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %12, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 4
  store i32 %79, i32* %8, align 4
  br label %95

80:                                               ; preds = %47
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @UTF8_getc(i8* %81, i32 %82, i64* %12)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 -1, i32* %6, align 4
  br label %112

87:                                               ; preds = %80
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %7, align 8
  br label %95

95:                                               ; preds = %87, %51
  br label %96

96:                                               ; preds = %95, %32
  br label %97

97:                                               ; preds = %96, %21
  %98 = load i32 (i64, i8*)*, i32 (i64, i8*)** %10, align 8
  %99 = icmp ne i32 (i64, i8*)* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32 (i64, i8*)*, i32 (i64, i8*)** %10, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 %101(i64 %102, i8* %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %6, align 4
  br label %112

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %97
  br label %14

111:                                              ; preds = %14
  store i32 1, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %107, %86
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @UTF8_getc(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
