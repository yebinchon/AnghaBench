; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_sign.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pad_54 = common dso_local global i64 0, align 8
@pad_92 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sec_sign(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [20 x i32], align 16
  %14 = alloca [16 x i32], align 16
  %15 = alloca [4 x i32], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @buf_out_uint32(i32* %18, i32 %19)
  %21 = call i8* (...) @rdssl_sha1_info_create()
  store i8* %21, i8** %16, align 8
  %22 = load i8*, i8** %16, align 8
  %23 = call i32 @rdssl_sha1_clear(i8* %22)
  %24 = load i8*, i8** %16, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @rdssl_sha1_transform(i8* %24, i8* %26, i32 %27)
  %29 = load i8*, i8** %16, align 8
  %30 = load i64, i64* @pad_54, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @rdssl_sha1_transform(i8* %29, i8* %31, i32 40)
  %33 = load i8*, i8** %16, align 8
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %35 = bitcast i32* %34 to i8*
  %36 = call i32 @rdssl_sha1_transform(i8* %33, i8* %35, i32 4)
  %37 = load i8*, i8** %16, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @rdssl_sha1_transform(i8* %37, i8* %39, i32 %40)
  %42 = load i8*, i8** %16, align 8
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i64 0, i64 0
  %44 = bitcast i32* %43 to i8*
  %45 = call i32 @rdssl_sha1_complete(i8* %42, i8* %44)
  %46 = load i8*, i8** %16, align 8
  %47 = call i32 @rdssl_sha1_info_delete(i8* %46)
  %48 = call i8* (...) @rdssl_md5_info_create()
  store i8* %48, i8** %17, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = call i32 @rdssl_md5_clear(i8* %49)
  %51 = load i8*, i8** %17, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @rdssl_md5_transform(i8* %51, i8* %53, i32 %54)
  %56 = load i8*, i8** %17, align 8
  %57 = load i64, i64* @pad_92, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @rdssl_md5_transform(i8* %56, i8* %58, i32 48)
  %60 = load i8*, i8** %17, align 8
  %61 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i64 0, i64 0
  %62 = bitcast i32* %61 to i8*
  %63 = call i32 @rdssl_md5_transform(i8* %60, i8* %62, i32 20)
  %64 = load i8*, i8** %17, align 8
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %66 = bitcast i32* %65 to i8*
  %67 = call i32 @rdssl_md5_complete(i8* %64, i8* %66)
  %68 = load i8*, i8** %17, align 8
  %69 = call i32 @rdssl_md5_info_delete(i8* %68)
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @memcpy(i32* %70, i32* %71, i32 %72)
  ret void
}

declare dso_local i32 @buf_out_uint32(i32*, i32) #1

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

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
