; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_bio.c_bio_nwrite.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_bio.c_bio_nwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.bio_bio_st* }
%struct.bio_bio_st = type { i64, i64 }

@OSSL_SSIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i8**, i64)* @bio_nwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bio_nwrite(%struct.TYPE_4__* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bio_bio_st*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @OSSL_SSIZE_MAX, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @OSSL_SSIZE_MAX, align 8
  store i64 %15, i64* %9, align 8
  br label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = call i64 @bio_nwrite0(%struct.TYPE_4__* %19, i8** %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %25, %18
  %28 = load i64, i64* %9, align 8
  %29 = icmp ule i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %4, align 8
  br label %55

32:                                               ; preds = %27
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.bio_bio_st*, %struct.bio_bio_st** %34, align 8
  store %struct.bio_bio_st* %35, %struct.bio_bio_st** %8, align 8
  %36 = load %struct.bio_bio_st*, %struct.bio_bio_st** %8, align 8
  %37 = icmp ne %struct.bio_bio_st* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.bio_bio_st*, %struct.bio_bio_st** %8, align 8
  %42 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.bio_bio_st*, %struct.bio_bio_st** %8, align 8
  %46 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bio_bio_st*, %struct.bio_bio_st** %8, align 8
  %49 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %32, %30
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i64 @bio_nwrite0(%struct.TYPE_4__*, i8**) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
