; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bio_memleak_test.c_test_bio_memleak.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bio_memleak_test.c_test_bio_memleak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }

@test_bio_memleak.str = internal constant [10 x i8] c"BIO test\0A\00", align 1
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@BIO_FLAGS_MEM_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bio_memleak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bio_memleak() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca [100 x i8], align 16
  store i32 0, i32* %1, align 4
  %5 = call i32 (...) @BIO_s_mem()
  %6 = call i32* @BIO_new(i32 %5)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @TEST_ptr(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %35

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 10, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_bio_memleak.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @BIO_NOCLOSE, align 4
  %19 = call i32 @BIO_set_mem_buf(i32* %17, %struct.TYPE_3__* %3, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @BIO_FLAGS_MEM_RDONLY, align 4
  %22 = call i32 @BIO_set_flags(i32* %20, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %25 = call i32 @BIO_read(i32* %23, i8* %24, i32 100)
  %26 = call i32 @TEST_int_eq(i32 %25, i32 10)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %11
  br label %35

29:                                               ; preds = %11
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %31 = call i32 @TEST_mem_eq(i8* %30, i32 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_bio_memleak.str, i64 0, i64 0), i32 10)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %35

34:                                               ; preds = %29
  store i32 1, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %33, %28, %10
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @BIO_free(i32* %36)
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @BIO_set_mem_buf(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @BIO_set_flags(i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
