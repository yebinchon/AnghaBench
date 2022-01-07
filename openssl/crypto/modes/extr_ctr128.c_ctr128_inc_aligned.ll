; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_ctr128.c_ctr128_inc_aligned.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_ctr128.c_ctr128_inc_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

@__const.ctr128_inc_aligned.is_endian = private unnamed_addr constant %union.anon { i64 1 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ctr128_inc_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctr128_inc_aligned(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.anon, align 8
  store i8* %0, i8** %2, align 8
  %8 = bitcast %union.anon* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%union.anon* @__const.ctr128_inc_aligned.is_endian to i8*), i64 8, i1 false)
  %9 = bitcast %union.anon* %7 to i8*
  %10 = load i8, i8* %9, align 8
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = urem i64 %15, 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @ctr128_inc(i8* %19)
  br label %43

21:                                               ; preds = %13
  %22 = load i8*, i8** %2, align 8
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %3, align 8
  store i64 1, i64* %4, align 8
  store i64 2, i64* %6, align 8
  br label %24

24:                                               ; preds = %40, %21
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64*, i64** %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, %27
  store i64 %32, i64* %30, align 8
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = sub i64 %33, %34
  %36 = load i64, i64* %5, align 8
  %37 = xor i64 %36, -1
  %38 = and i64 %35, %37
  %39 = lshr i64 %38, 63
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %24
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %24, label %43

43:                                               ; preds = %18, %40
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ctr128_inc(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
