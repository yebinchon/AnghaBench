; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_block.c_fillblock.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_block.c_fillblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fillblock(i8* %0, i64* %1, i64 %2, i8** %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = sub i64 %13, 1
  %15 = xor i64 %14, -1
  store i64 %15, i64* %11, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ule i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 1
  %28 = and i64 %25, %27
  %29 = icmp eq i64 %28, 0
  br label %30

30:                                               ; preds = %24, %5
  %31 = phi i1 [ false, %5 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %30
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load i64*, i64** %10, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %42, %38
  %48 = load i64, i64* %8, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %48, %50
  store i64 %51, i64* %12, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i64*, i64** %10, align 8
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %56, %47
  %60 = load i8*, i8** %6, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8**, i8*** %9, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @memcpy(i8* %63, i8* %65, i64 %66)
  %68 = load i64, i64* %12, align 8
  %69 = load i8**, i8*** %9, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %68
  store i8* %71, i8** %69, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64*, i64** %10, align 8
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, %72
  store i64 %75, i64* %73, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64*, i64** %7, align 8
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, %76
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %59, %42, %30
  %81 = load i64*, i64** %10, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = and i64 %82, %83
  ret i64 %84
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
