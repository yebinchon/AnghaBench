; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-s2k.c_calc_s2k_salted.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-s2k.c_calc_s2k_salted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@PGP_MAX_DIGEST = common dso_local global i32 0, align 4
@PGP_S2K_SALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32)* @calc_s2k_salted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_s2k_salted(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @PGP_MAX_DIGEST, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @px_md_result_size(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %13, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  br label %27

27:                                               ; preds = %74, %4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @px_md_reset(i32* %31)
  %33 = load i32, i32* %12, align 4
  %34 = icmp ugt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @memset(i32* %18, i32 0, i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @px_md_update(i32* %38, i32* %18, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %12, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %12, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @PGP_S2K_SALT, align 4
  %49 = call i32 @px_md_update(i32* %44, i32* %47, i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @px_md_update(i32* %50, i32* %51, i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @px_md_finish(i32* %54, i32* %18)
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %41
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @memcpy(i32* %60, i32* %18, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sub i32 %64, %63
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %13, align 8
  br label %74

70:                                               ; preds = %41
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @memcpy(i32* %71, i32* %18, i32 %72)
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %70, %59
  br label %27

75:                                               ; preds = %27
  %76 = mul nuw i64 4, %16
  %77 = trunc i64 %76 to i32
  %78 = call i32 @px_memset(i32* %18, i32 0, i32 %77)
  %79 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %79)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @px_md_result_size(i32*) #2

declare dso_local i32 @px_md_reset(i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @px_md_update(i32*, i32*, i32) #2

declare dso_local i32 @px_md_finish(i32*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @px_memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
