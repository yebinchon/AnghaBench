; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_internal.c_px_find_cipher.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_internal.c_px_find_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* (...)*, i64 }

@int_aliases = common dso_local global i32 0, align 4
@int_ciphers = common dso_local global %struct.TYPE_2__* null, align 8
@PXE_NO_CIPHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @px_find_cipher(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* @int_aliases, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @px_resolve_alias(i32 %8, i8* %9)
  store i8* %10, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %38, %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @int_ciphers, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %11
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @int_ciphers, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strcmp(i64 %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @int_ciphers, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32* (...)*, i32* (...)** %34, align 8
  %36 = call i32* (...) %35()
  store i32* %36, i32** %7, align 8
  br label %41

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %11

41:                                               ; preds = %29, %11
  %42 = load i32*, i32** %7, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @PXE_NO_CIPHER, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = load i32**, i32*** %5, align 8
  store i32* %47, i32** %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %44
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i8* @px_resolve_alias(i32, i8*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
