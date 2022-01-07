; ModuleID = '/home/carl/AnghaBench/openssl/engines/extr_e_ossltest.c_ossltest_digest_nids.c'
source_filename = "/home/carl/AnghaBench/openssl/engines/extr_e_ossltest.c_ossltest_digest_nids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ossltest_digest_nids.digest_nids = internal global [6 x i32] zeroinitializer, align 16
@ossltest_digest_nids.pos = internal global i32 0, align 4
@ossltest_digest_nids.init = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @ossltest_digest_nids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ossltest_digest_nids(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  store i32** %0, i32*** %2, align 8
  %4 = load i32, i32* @ossltest_digest_nids.init, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %60, label %6

6:                                                ; preds = %1
  %7 = call i32* (...) @digest_md5()
  store i32* %7, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @EVP_MD_type(i32* %10)
  %12 = load i32, i32* @ossltest_digest_nids.pos, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @ossltest_digest_nids.pos, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 %14
  store i32 %11, i32* %15, align 4
  br label %16

16:                                               ; preds = %9, %6
  %17 = call i32* (...) @digest_sha1()
  store i32* %17, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @EVP_MD_type(i32* %20)
  %22 = load i32, i32* @ossltest_digest_nids.pos, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @ossltest_digest_nids.pos, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 %24
  store i32 %21, i32* %25, align 4
  br label %26

26:                                               ; preds = %19, %16
  %27 = call i32* (...) @digest_sha256()
  store i32* %27, i32** %3, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @EVP_MD_type(i32* %30)
  %32 = load i32, i32* @ossltest_digest_nids.pos, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @ossltest_digest_nids.pos, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 %34
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %26
  %37 = call i32* (...) @digest_sha384()
  store i32* %37, i32** %3, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @EVP_MD_type(i32* %40)
  %42 = load i32, i32* @ossltest_digest_nids.pos, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @ossltest_digest_nids.pos, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %36
  %47 = call i32* (...) @digest_sha512()
  store i32* %47, i32** %3, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @EVP_MD_type(i32* %50)
  %52 = load i32, i32* @ossltest_digest_nids.pos, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @ossltest_digest_nids.pos, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, i32* @ossltest_digest_nids.pos, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 %58
  store i32 0, i32* %59, align 4
  store i32 1, i32* @ossltest_digest_nids.init, align 4
  br label %60

60:                                               ; preds = %56, %1
  %61 = load i32**, i32*** %2, align 8
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 0), i32** %61, align 8
  %62 = load i32, i32* @ossltest_digest_nids.pos, align 4
  ret i32 %62
}

declare dso_local i32* @digest_md5(...) #1

declare dso_local i32 @EVP_MD_type(i32*) #1

declare dso_local i32* @digest_sha1(...) #1

declare dso_local i32* @digest_sha256(...) #1

declare dso_local i32* @digest_sha384(...) #1

declare dso_local i32* @digest_sha512(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
