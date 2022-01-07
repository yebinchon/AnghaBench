; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-gensalt.c__crypt_gensalt_extended_rn.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-gensalt.c__crypt_gensalt_extended_rn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_crypt_itoa64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_crypt_gensalt_extended_rn(i64 %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %28, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = icmp ugt i64 %22, 16777215
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %25, 1
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24, %21, %15, %5
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %31, %28
  store i8* null, i8** %6, align 8
  br label %123

35:                                               ; preds = %24, %18
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i64 725, i64* %7, align 8
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 95, i8* %41, align 1
  %42 = load i8*, i8** @_crypt_itoa64, align 8
  %43 = load i64, i64* %7, align 8
  %44 = and i64 %43, 63
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 %46, i8* %48, align 1
  %49 = load i8*, i8** @_crypt_itoa64, align 8
  %50 = load i64, i64* %7, align 8
  %51 = lshr i64 %50, 6
  %52 = and i64 %51, 63
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8 %54, i8* %56, align 1
  %57 = load i8*, i8** @_crypt_itoa64, align 8
  %58 = load i64, i64* %7, align 8
  %59 = lshr i64 %58, 12
  %60 = and i64 %59, 63
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  store i8 %62, i8* %64, align 1
  %65 = load i8*, i8** @_crypt_itoa64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = lshr i64 %66, 18
  %68 = and i64 %67, 63
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  store i8 %70, i8* %72, align 1
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i64
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i64
  %81 = shl i64 %80, 8
  %82 = or i64 %76, %81
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i64
  %87 = shl i64 %86, 16
  %88 = or i64 %82, %87
  store i64 %88, i64* %12, align 8
  %89 = load i8*, i8** @_crypt_itoa64, align 8
  %90 = load i64, i64* %12, align 8
  %91 = and i64 %90, 63
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 5
  store i8 %93, i8* %95, align 1
  %96 = load i8*, i8** @_crypt_itoa64, align 8
  %97 = load i64, i64* %12, align 8
  %98 = lshr i64 %97, 6
  %99 = and i64 %98, 63
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 6
  store i8 %101, i8* %103, align 1
  %104 = load i8*, i8** @_crypt_itoa64, align 8
  %105 = load i64, i64* %12, align 8
  %106 = lshr i64 %105, 12
  %107 = and i64 %106, 63
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 7
  store i8 %109, i8* %111, align 1
  %112 = load i8*, i8** @_crypt_itoa64, align 8
  %113 = load i64, i64* %12, align 8
  %114 = lshr i64 %113, 18
  %115 = and i64 %114, 63
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 8
  store i8 %117, i8* %119, align 1
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 9
  store i8 0, i8* %121, align 1
  %122 = load i8*, i8** %10, align 8
  store i8* %122, i8** %6, align 8
  br label %123

123:                                              ; preds = %39, %34
  %124 = load i8*, i8** %6, align 8
  ret i8* %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
