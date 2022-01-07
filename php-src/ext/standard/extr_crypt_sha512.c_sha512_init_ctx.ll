; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_sha512.c_sha512_init_ctx.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_sha512.c_sha512_init_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha512_ctx = type { i64, i64*, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sha512_ctx*)* @sha512_init_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha512_init_ctx(%struct.sha512_ctx* %0) #0 {
  %2 = alloca %struct.sha512_ctx*, align 8
  store %struct.sha512_ctx* %0, %struct.sha512_ctx** %2, align 8
  %3 = call i8* @UINT64_C(i32 -205731576)
  %4 = load %struct.sha512_ctx*, %struct.sha512_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i32 0, i32 2
  %6 = load i8**, i8*** %5, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  store i8* %3, i8** %7, align 8
  %8 = call i8* @UINT64_C(i32 -2067093701)
  %9 = load %struct.sha512_ctx*, %struct.sha512_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %9, i32 0, i32 2
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  store i8* %8, i8** %12, align 8
  %13 = call i8* @UINT64_C(i32 -23791573)
  %14 = load %struct.sha512_ctx*, %struct.sha512_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %14, i32 0, i32 2
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 2
  store i8* %13, i8** %17, align 8
  %18 = call i8* @UINT64_C(i32 1595750129)
  %19 = load %struct.sha512_ctx*, %struct.sha512_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %19, i32 0, i32 2
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 3
  store i8* %18, i8** %22, align 8
  %23 = call i8* @UINT64_C(i32 -1377402159)
  %24 = load %struct.sha512_ctx*, %struct.sha512_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %24, i32 0, i32 2
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 4
  store i8* %23, i8** %27, align 8
  %28 = call i8* @UINT64_C(i32 725511199)
  %29 = load %struct.sha512_ctx*, %struct.sha512_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %29, i32 0, i32 2
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 5
  store i8* %28, i8** %32, align 8
  %33 = call i8* @UINT64_C(i32 -79577749)
  %34 = load %struct.sha512_ctx*, %struct.sha512_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %34, i32 0, i32 2
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 6
  store i8* %33, i8** %37, align 8
  %38 = call i8* @UINT64_C(i32 327033209)
  %39 = load %struct.sha512_ctx*, %struct.sha512_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %39, i32 0, i32 2
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 7
  store i8* %38, i8** %42, align 8
  %43 = load %struct.sha512_ctx*, %struct.sha512_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.sha512_ctx*, %struct.sha512_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.sha512_ctx*, %struct.sha512_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  ret void
}

declare dso_local i8* @UINT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
