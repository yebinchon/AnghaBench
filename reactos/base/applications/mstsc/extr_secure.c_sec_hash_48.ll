; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_hash_48.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_hash_48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sec_hash_48(i64* %0, i64* %1, i64* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [20 x i64], align 16
  %12 = alloca [4 x i64], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %76, %5
  %17 = load i32, i32* %15, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %79

19:                                               ; preds = %16
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* %15, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i32, i32* %15, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @memset(i64* %20, i64 %24, i32 %26)
  %28 = call i8* (...) @rdssl_sha1_info_create()
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @rdssl_sha1_clear(i8* %29)
  %31 = load i8*, i8** %13, align 8
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %33 = bitcast i64* %32 to i8*
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @rdssl_sha1_transform(i8* %31, i8* %33, i32 %35)
  %37 = load i8*, i8** %13, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = bitcast i64* %38 to i8*
  %40 = call i32 @rdssl_sha1_transform(i8* %37, i8* %39, i32 48)
  %41 = load i8*, i8** %13, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = bitcast i64* %42 to i8*
  %44 = call i32 @rdssl_sha1_transform(i8* %41, i8* %43, i32 32)
  %45 = load i8*, i8** %13, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = bitcast i64* %46 to i8*
  %48 = call i32 @rdssl_sha1_transform(i8* %45, i8* %47, i32 32)
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds [20 x i64], [20 x i64]* %11, i64 0, i64 0
  %51 = bitcast i64* %50 to i8*
  %52 = call i32 @rdssl_sha1_complete(i8* %49, i8* %51)
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @rdssl_sha1_info_delete(i8* %53)
  %55 = call i8* (...) @rdssl_md5_info_create()
  store i8* %55, i8** %14, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @rdssl_md5_clear(i8* %56)
  %58 = load i8*, i8** %14, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = bitcast i64* %59 to i8*
  %61 = call i32 @rdssl_md5_transform(i8* %58, i8* %60, i32 48)
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds [20 x i64], [20 x i64]* %11, i64 0, i64 0
  %64 = bitcast i64* %63 to i8*
  %65 = call i32 @rdssl_md5_transform(i8* %62, i8* %64, i32 20)
  %66 = load i8*, i8** %14, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = bitcast i64* %67 to i8*
  %69 = load i32, i32* %15, align 4
  %70 = mul nsw i32 %69, 16
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = call i32 @rdssl_md5_complete(i8* %66, i8* %72)
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @rdssl_md5_info_delete(i8* %74)
  br label %76

76:                                               ; preds = %19
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %16

79:                                               ; preds = %16
  ret void
}

declare dso_local i32 @memset(i64*, i64, i32) #1

declare dso_local i8* @rdssl_sha1_info_create(...) #1

declare dso_local i32 @rdssl_sha1_clear(i8*) #1

declare dso_local i32 @rdssl_sha1_transform(i8*, i8*, i32) #1

declare dso_local i32 @rdssl_sha1_complete(i8*, i8*) #1

declare dso_local i32 @rdssl_sha1_info_delete(i8*) #1

declare dso_local i8* @rdssl_md5_info_create(...) #1

declare dso_local i32 @rdssl_md5_clear(i8*) #1

declare dso_local i32 @rdssl_md5_transform(i8*, i8*, i32) #1

declare dso_local i32 @rdssl_md5_complete(i8*, i8*) #1

declare dso_local i32 @rdssl_md5_info_delete(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
