; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-armor.c_pg_base64_encode.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-armor.c_pg_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_base64 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @pg_base64_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_base64_encode(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 76
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %10, align 8
  store i32 2, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %19 = load i32*, i32** %4, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %6, align 8
  store i32* %20, i32** %7, align 8
  br label %21

21:                                               ; preds = %85, %3
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ult i32* %22, %23
  br i1 %24, label %25, label %86

25:                                               ; preds = %21
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = shl i32 %28, 3
  %30 = shl i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %12, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %25
  %41 = load i8*, i8** @_base64, align 8
  %42 = load i64, i64* %12, align 8
  %43 = lshr i64 %42, 18
  %44 = and i64 %43, 63
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %50 = load i8*, i8** @_base64, align 8
  %51 = load i64, i64* %12, align 8
  %52 = lshr i64 %51, 12
  %53 = and i64 %52, 63
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %59 = load i8*, i8** @_base64, align 8
  %60 = load i64, i64* %12, align 8
  %61 = lshr i64 %60, 6
  %62 = and i64 %61, 63
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i8*, i8** @_base64, align 8
  %69 = load i64, i64* %12, align 8
  %70 = and i64 %69, 63
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  store i32 2, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %76

76:                                               ; preds = %40, %25
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = icmp uge i32* %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %7, align 8
  store i32 10, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 76
  store i32* %84, i32** %8, align 8
  br label %85

85:                                               ; preds = %80, %76
  br label %21

86:                                               ; preds = %21
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 2
  br i1 %88, label %89, label %125

89:                                               ; preds = %86
  %90 = load i8*, i8** @_base64, align 8
  %91 = load i64, i64* %12, align 8
  %92 = lshr i64 %91, 18
  %93 = and i64 %92, 63
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  %99 = load i8*, i8** @_base64, align 8
  %100 = load i64, i64* %12, align 8
  %101 = lshr i64 %100, 12
  %102 = and i64 %101, 63
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %7, align 8
  store i32 %105, i32* %106, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %89
  %111 = load i8*, i8** @_base64, align 8
  %112 = load i64, i64* %12, align 8
  %113 = lshr i64 %112, 6
  %114 = and i64 %113, 63
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  br label %119

118:                                              ; preds = %89
  br label %119

119:                                              ; preds = %118, %110
  %120 = phi i32 [ %117, %110 ], [ 61, %118 ]
  %121 = load i32*, i32** %7, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %7, align 8
  store i32 61, i32* %123, align 4
  br label %125

125:                                              ; preds = %119, %86
  %126 = load i32*, i32** %7, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = ptrtoint i32* %126 to i64
  %129 = ptrtoint i32* %127 to i64
  %130 = sub i64 %128, %129
  %131 = sdiv exact i64 %130, 4
  %132 = trunc i64 %131 to i32
  ret i32 %132
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
