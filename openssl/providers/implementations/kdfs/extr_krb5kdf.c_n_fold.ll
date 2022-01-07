; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_krb5kdf.c_n_fold.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_krb5kdf.c_n_fold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i64)* @n_fold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_fold(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @memcpy(i8* %24, i8* %25, i64 %26)
  br label %152

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %35, %28
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = urem i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %11, align 4
  br label %32

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %8, align 8
  %45 = mul i64 %43, %44
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = udiv i64 %45, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @memset(i8* %50, i32 0, i32 %51)
  store i32 0, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %117, %41
  %56 = load i32, i32* %15, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %120

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %6, align 4
  %61 = urem i32 %59, %60
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %8, align 8
  %65 = udiv i64 %63, %64
  %66 = mul i64 13, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = udiv i32 %69, 8
  %71 = sub i32 %68, %70
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %16, align 4
  %73 = and i32 %72, 7
  store i32 %73, i32* %17, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %18, align 4
  %76 = sub i32 %75, 1
  %77 = zext i32 %76 to i64
  %78 = load i64, i64* %8, align 8
  %79 = urem i64 %77, %78
  %80 = getelementptr inbounds i8, i8* %74, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i32, i32* %17, align 4
  %84 = sub i32 8, %83
  %85 = shl i32 %82, %84
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %18, align 4
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %8, align 8
  %90 = urem i64 %88, %89
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i32, i32* %17, align 4
  %95 = ashr i32 %93, %94
  %96 = or i32 %85, %95
  %97 = and i32 %96, 255
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = add i32 %98, %104
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, 255
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8 %110, i8* %114, align 1
  %115 = load i32, i32* %9, align 4
  %116 = lshr i32 %115, 8
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %58
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %15, align 4
  br label %55

120:                                              ; preds = %55
  %121 = load i32, i32* %6, align 4
  %122 = sub i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %149, %120
  %124 = load i32, i32* %14, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br label %129

129:                                              ; preds = %126, %123
  %130 = phi i1 [ false, %123 ], [ %128, %126 ]
  br i1 %130, label %131, label %152

131:                                              ; preds = %129
  %132 = load i8*, i8** %5, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = load i32, i32* %13, align 4
  %139 = add i32 %138, %137
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = and i32 %140, 255
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  store i8 %142, i8* %146, align 1
  %147 = load i32, i32* %13, align 4
  %148 = lshr i32 %147, 8
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %131
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %14, align 4
  br label %123

152:                                              ; preds = %23, %129
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
