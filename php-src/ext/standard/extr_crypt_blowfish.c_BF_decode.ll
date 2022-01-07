; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_blowfish.c_BF_decode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_blowfish.c_BF_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @BF_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BF_decode(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %10, align 8
  br label %23

23:                                               ; preds = %85, %3
  %24 = load i32, i32* %12, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %10, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i32
  %29 = call i32 @BF_safe_atoi64(i32 %24, i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  %33 = load i8, i8* %31, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 @BF_safe_atoi64(i32 %30, i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = shl i32 %36, 2
  %38 = load i32, i32* %13, align 4
  %39 = and i32 %38, 48
  %40 = lshr i32 %39, 4
  %41 = or i32 %37, %40
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  store i8 %42, i8* %43, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp uge i8* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %23
  br label %89

49:                                               ; preds = %23
  %50 = load i32, i32* %14, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %10, align 8
  %53 = load i8, i8* %51, align 1
  %54 = zext i8 %53 to i32
  %55 = call i32 @BF_safe_atoi64(i32 %50, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = and i32 %56, 15
  %58 = shl i32 %57, 4
  %59 = load i32, i32* %14, align 4
  %60 = and i32 %59, 60
  %61 = lshr i32 %60, 2
  %62 = or i32 %58, %61
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  store i8 %63, i8* %64, align 1
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = icmp uge i8* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  br label %89

70:                                               ; preds = %49
  %71 = load i32, i32* %15, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %10, align 8
  %74 = load i8, i8* %72, align 1
  %75 = zext i8 %74 to i32
  %76 = call i32 @BF_safe_atoi64(i32 %71, i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = and i32 %77, 3
  %79 = shl i32 %78, 6
  %80 = load i32, i32* %15, align 4
  %81 = or i32 %79, %80
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %8, align 8
  store i8 %82, i8* %83, align 1
  br label %85

85:                                               ; preds = %70
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ult i8* %86, %87
  br i1 %88, label %23, label %89

89:                                               ; preds = %85, %69, %48
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp eq i64 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i32 -1, i32* %4, align 4
  br label %108

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %104, %99
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = icmp ult i8* %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %8, align 8
  store i8 0, i8* %105, align 1
  br label %100

107:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %98
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @BF_safe_atoi64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
