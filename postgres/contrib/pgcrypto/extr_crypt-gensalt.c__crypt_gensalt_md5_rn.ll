; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-gensalt.c__crypt_gensalt_md5_rn.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-gensalt.c__crypt_gensalt_md5_rn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_crypt_itoa64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_crypt_gensalt_md5_rn(i64 %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
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
  br i1 %14, label %24, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 1000
  br i1 %23, label %24, label %31

24:                                               ; preds = %21, %15, %5
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %27, %24
  store i8* null, i8** %6, align 8
  br label %144

31:                                               ; preds = %21, %18
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 36, i8* %33, align 1
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 49, i8* %35, align 1
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8 36, i8* %37, align 1
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i64
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i64
  %46 = shl i64 %45, 8
  %47 = or i64 %41, %46
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i64
  %52 = shl i64 %51, 16
  %53 = or i64 %47, %52
  store i64 %53, i64* %12, align 8
  %54 = load i8*, i8** @_crypt_itoa64, align 8
  %55 = load i64, i64* %12, align 8
  %56 = and i64 %55, 63
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  store i8 %58, i8* %60, align 1
  %61 = load i8*, i8** @_crypt_itoa64, align 8
  %62 = load i64, i64* %12, align 8
  %63 = lshr i64 %62, 6
  %64 = and i64 %63, 63
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  store i8 %66, i8* %68, align 1
  %69 = load i8*, i8** @_crypt_itoa64, align 8
  %70 = load i64, i64* %12, align 8
  %71 = lshr i64 %70, 12
  %72 = and i64 %71, 63
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 5
  store i8 %74, i8* %76, align 1
  %77 = load i8*, i8** @_crypt_itoa64, align 8
  %78 = load i64, i64* %12, align 8
  %79 = lshr i64 %78, 18
  %80 = and i64 %79, 63
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 6
  store i8 %82, i8* %84, align 1
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 7
  store i8 0, i8* %86, align 1
  %87 = load i32, i32* %9, align 4
  %88 = icmp sge i32 %87, 6
  br i1 %88, label %89, label %142

89:                                               ; preds = %31
  %90 = load i32, i32* %11, align 4
  %91 = icmp sge i32 %90, 12
  br i1 %91, label %92, label %142

92:                                               ; preds = %89
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i64
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 4
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i64
  %101 = shl i64 %100, 8
  %102 = or i64 %96, %101
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 5
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i64
  %107 = shl i64 %106, 16
  %108 = or i64 %102, %107
  store i64 %108, i64* %12, align 8
  %109 = load i8*, i8** @_crypt_itoa64, align 8
  %110 = load i64, i64* %12, align 8
  %111 = and i64 %110, 63
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 7
  store i8 %113, i8* %115, align 1
  %116 = load i8*, i8** @_crypt_itoa64, align 8
  %117 = load i64, i64* %12, align 8
  %118 = lshr i64 %117, 6
  %119 = and i64 %118, 63
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 8
  store i8 %121, i8* %123, align 1
  %124 = load i8*, i8** @_crypt_itoa64, align 8
  %125 = load i64, i64* %12, align 8
  %126 = lshr i64 %125, 12
  %127 = and i64 %126, 63
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = load i8*, i8** %10, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 9
  store i8 %129, i8* %131, align 1
  %132 = load i8*, i8** @_crypt_itoa64, align 8
  %133 = load i64, i64* %12, align 8
  %134 = lshr i64 %133, 18
  %135 = and i64 %134, 63
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 10
  store i8 %137, i8* %139, align 1
  %140 = load i8*, i8** %10, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 11
  store i8 0, i8* %141, align 1
  br label %142

142:                                              ; preds = %92, %89, %31
  %143 = load i8*, i8** %10, align 8
  store i8* %143, i8** %6, align 8
  br label %144

144:                                              ; preds = %142, %30
  %145 = load i8*, i8** %6, align 8
  ret i8* %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
