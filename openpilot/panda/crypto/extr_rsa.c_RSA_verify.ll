; ModuleID = '/home/carl/AnghaBench/openpilot/panda/crypto/extr_rsa.c_RSA_verify.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/crypto/extr_rsa.c_RSA_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@RSANUMBYTES = common dso_local global i32 0, align 4
@RSANUMWORDS = common dso_local global i64 0, align 8
@SHA_DIGEST_SIZE = common dso_local global i32 0, align 4
@sha_padding_1024 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_verify(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @RSANUMBYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RSANUMWORDS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %109

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = mul nuw i64 4, %17
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %109

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @SHA_DIGEST_SIZE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %109

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 3
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 65537
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %109

48:                                               ; preds = %42, %37
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %19, i64 %60
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %49

65:                                               ; preds = %49
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = call i32 @modpow(%struct.TYPE_4__* %66, i32* %19)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %84, %65
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %10, align 8
  %78 = load i32, i32* %76, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %19, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = xor i32 %82, %78
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %71

87:                                               ; preds = %71
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %105, %87
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @RSANUMBYTES, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %19, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** @sha_padding_1024, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %96, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %109

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %88

108:                                              ; preds = %88
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %109

109:                                              ; preds = %108, %103, %47, %36, %31, %25
  %110 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @modpow(%struct.TYPE_4__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
