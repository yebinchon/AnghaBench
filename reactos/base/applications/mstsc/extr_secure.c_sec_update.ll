; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_update.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_rc4_key_len = common dso_local global i32 0, align 4
@pad_54 = common dso_local global i64 0, align 8
@pad_92 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @sec_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_update(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [20 x i32], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = call i8* (...) @rdssl_sha1_info_create()
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @rdssl_sha1_clear(i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32, i32* @g_rc4_key_len, align 4
  %16 = call i32 @rdssl_sha1_transform(i8* %12, i8* %14, i32 %15)
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* @pad_54, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @rdssl_sha1_transform(i8* %17, i8* %19, i32 40)
  %21 = load i8*, i8** %6, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = load i32, i32* @g_rc4_key_len, align 4
  %25 = call i32 @rdssl_sha1_transform(i8* %21, i8* %23, i32 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %28 = bitcast i32* %27 to i8*
  %29 = call i32 @rdssl_sha1_complete(i8* %26, i8* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @rdssl_sha1_info_delete(i8* %30)
  %32 = call i8* (...) @rdssl_md5_info_create()
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @rdssl_md5_clear(i8* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = load i32, i32* @g_rc4_key_len, align 4
  %39 = call i32 @rdssl_md5_transform(i8* %35, i8* %37, i32 %38)
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* @pad_92, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @rdssl_md5_transform(i8* %40, i8* %42, i32 48)
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %46 = bitcast i32* %45 to i8*
  %47 = call i32 @rdssl_md5_transform(i8* %44, i8* %46, i32 20)
  %48 = load i8*, i8** %7, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = call i32 @rdssl_md5_complete(i8* %48, i8* %50)
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @rdssl_md5_info_delete(i8* %52)
  %54 = call i8* (...) @rdssl_rc4_info_create()
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = load i32, i32* @g_rc4_key_len, align 4
  %59 = call i32 @rdssl_rc4_set_key(i8* %55, i8* %57, i32 %58)
  %60 = load i8*, i8** %8, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = bitcast i32* %61 to i8*
  %63 = load i32*, i32** %3, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* @g_rc4_key_len, align 4
  %66 = call i32 @rdssl_rc4_crypt(i8* %60, i8* %62, i8* %64, i32 %65)
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @rdssl_rc4_info_delete(i8* %67)
  %69 = load i32, i32* @g_rc4_key_len, align 4
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %71, label %74

71:                                               ; preds = %2
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @sec_make_40bit(i32* %72)
  br label %74

74:                                               ; preds = %71, %2
  ret void
}

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

declare dso_local i8* @rdssl_rc4_info_create(...) #1

declare dso_local i32 @rdssl_rc4_set_key(i8*, i8*, i32) #1

declare dso_local i32 @rdssl_rc4_crypt(i8*, i8*, i8*, i32) #1

declare dso_local i32 @rdssl_rc4_info_delete(i8*) #1

declare dso_local i32 @sec_make_40bit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
