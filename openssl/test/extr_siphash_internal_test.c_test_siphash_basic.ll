; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_siphash_internal_test.c_test_siphash_basic.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_siphash_internal_test.c_test_siphash_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SIPHASH_KEY_SIZE = common dso_local global i32 0, align 4
@SIPHASH_MAX_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_siphash_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_siphash_basic() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  %6 = load i32, i32* @SIPHASH_KEY_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @SIPHASH_MAX_DIGEST_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %13 = call i32 @SipHash_set_hash_size(%struct.TYPE_5__* %1, i32 4)
  %14 = call i64 @TEST_int_eq(i32 %13, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %0
  %17 = call i32 @SipHash_set_hash_size(%struct.TYPE_5__* %1, i32 8)
  %18 = call i64 @TEST_true(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = call i32 @SipHash_Init(%struct.TYPE_5__* %1, i8* %9, i32 0, i32 0)
  %22 = call i64 @TEST_true(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = call i32 @SipHash_Final(%struct.TYPE_5__* %1, i8* %12, i32 8)
  %26 = call i64 @TEST_true(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  %29 = call i32 @SipHash_Final(%struct.TYPE_5__* %1, i8* %12, i32 16)
  %30 = call i64 @TEST_int_eq(i32 %29, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = call i32 @SipHash_set_hash_size(%struct.TYPE_5__* %1, i32 16)
  %34 = call i64 @TEST_true(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = call i32 @SipHash_Init(%struct.TYPE_5__* %1, i8* %9, i32 0, i32 0)
  %38 = call i64 @TEST_true(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = call i32 @SipHash_Final(%struct.TYPE_5__* %1, i8* %12, i32 8)
  %42 = call i64 @TEST_int_eq(i32 %41, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = call i32 @SipHash_Final(%struct.TYPE_5__* %1, i8* %12, i32 16)
  %46 = call i64 @TEST_true(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = call i32 @SipHash_set_hash_size(%struct.TYPE_5__* %1, i32 0)
  %50 = call i64 @TEST_true(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = call i32 @SipHash_Init(%struct.TYPE_5__* %1, i8* %9, i32 0, i32 0)
  %54 = call i64 @TEST_true(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = call i32 @SipHash_Final(%struct.TYPE_5__* %1, i8* %12, i32 8)
  %58 = call i64 @TEST_int_eq(i32 %57, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = call i32 @SipHash_Final(%struct.TYPE_5__* %1, i8* %12, i32 16)
  %62 = call i64 @TEST_true(i32 %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %0
  %65 = phi i1 [ false, %56 ], [ false, %52 ], [ false, %48 ], [ false, %44 ], [ false, %40 ], [ false, %36 ], [ false, %32 ], [ false, %28 ], [ false, %24 ], [ false, %20 ], [ false, %16 ], [ false, %0 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %67)
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @TEST_int_eq(i32, i32) #3

declare dso_local i32 @SipHash_set_hash_size(%struct.TYPE_5__*, i32) #3

declare dso_local i64 @TEST_true(i32) #3

declare dso_local i32 @SipHash_Init(%struct.TYPE_5__*, i8*, i32, i32) #3

declare dso_local i32 @SipHash_Final(%struct.TYPE_5__*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
