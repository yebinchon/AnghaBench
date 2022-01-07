; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sm2_internal_test.c_start_fake_rand.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sm2_internal_test.c_start_fake_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@saved_rand = common dso_local global %struct.TYPE_6__* null, align 8
@fake_rand = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@get_faked_bytes = common dso_local global i32 0, align 4
@fake_rand_bytes = common dso_local global i32 0, align 4
@fake_rand_bytes_offset = common dso_local global i64 0, align 8
@fake_rand_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @start_fake_rand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_fake_rand(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = call %struct.TYPE_6__* (...) @RAND_get_rand_method()
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** @saved_rand, align 8
  %5 = call i32 @TEST_ptr(%struct.TYPE_6__* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @saved_rand, align 8
  %10 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_6__* @fake_rand to i8*), i8* align 4 %10, i64 4, i1 false)
  %11 = load i32, i32* @get_faked_bytes, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fake_rand, i32 0, i32 0), align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @OPENSSL_hexstr2buf(i8* %12, i32* null)
  store i32 %13, i32* @fake_rand_bytes, align 4
  store i64 0, i64* @fake_rand_bytes_offset, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* @fake_rand_size, align 4
  %17 = call i32 @RAND_set_rand_method(%struct.TYPE_6__* @fake_rand)
  %18 = call i32 @TEST_true(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %22

21:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @TEST_ptr(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @RAND_get_rand_method(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @OPENSSL_hexstr2buf(i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @RAND_set_rand_method(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
