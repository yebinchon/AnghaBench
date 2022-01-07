; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_blowfish.c_BF_encode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_blowfish.c_BF_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BF_itoa64 = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @BF_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BF_encode(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to i8*
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %106, %3
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %7, align 8
  %22 = load i8, i8* %20, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i8**, i8*** @BF_itoa64, align 8
  %25 = load i32, i32* %10, align 4
  %26 = lshr i32 %25, 2
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i8
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %9, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 3
  %35 = shl i32 %34, 4
  store i32 %35, i32* %10, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp uge i8* %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %19
  %40 = load i8**, i8*** @BF_itoa64, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %44 to i8
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  store i8 %45, i8* %46, align 1
  br label %110

48:                                               ; preds = %19
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  %51 = load i8, i8* %49, align 1
  %52 = zext i8 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = lshr i32 %53, 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load i8**, i8*** @BF_itoa64, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = ptrtoint i8* %61 to i8
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  store i8 %62, i8* %63, align 1
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 15
  %67 = shl i32 %66, 2
  store i32 %67, i32* %10, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp uge i8* %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %48
  %72 = load i8**, i8*** @BF_itoa64, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %76 to i8
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  store i8 %77, i8* %78, align 1
  br label %110

80:                                               ; preds = %48
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  %83 = load i8, i8* %81, align 1
  %84 = zext i8 %83 to i32
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = lshr i32 %85, 6
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i8**, i8*** @BF_itoa64, align 8
  %90 = load i32, i32* %10, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = ptrtoint i8* %93 to i8
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %9, align 8
  store i8 %94, i8* %95, align 1
  %97 = load i8**, i8*** @BF_itoa64, align 8
  %98 = load i32, i32* %11, align 4
  %99 = and i32 %98, 63
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %97, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = ptrtoint i8* %102 to i8
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  store i8 %103, i8* %104, align 1
  br label %106

106:                                              ; preds = %80
  %107 = load i8*, i8** %7, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = icmp ult i8* %107, %108
  br i1 %109, label %19, label %110

110:                                              ; preds = %106, %71, %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
