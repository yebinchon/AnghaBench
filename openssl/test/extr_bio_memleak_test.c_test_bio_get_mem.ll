; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bio_memleak_test.c_test_bio_get_mem.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bio_memleak_test.c_test_bio_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bio_get_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bio_get_mem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store i32 0, i32* %1, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  %4 = call i32 (...) @BIO_s_mem()
  %5 = call %struct.TYPE_11__* @BIO_new(i32 %4)
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = call i32 @TEST_ptr(%struct.TYPE_11__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %43

10:                                               ; preds = %0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = call i32 @BIO_puts(%struct.TYPE_11__* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @TEST_int_eq(i32 %12, i32 12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %43

16:                                               ; preds = %10
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = call i32 @BIO_get_mem_ptr(%struct.TYPE_11__* %17, %struct.TYPE_11__** %3)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = call i32 @TEST_ptr(%struct.TYPE_11__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %43

23:                                               ; preds = %16
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = load i32, i32* @BIO_NOCLOSE, align 4
  %26 = call i32 @BIO_set_close(%struct.TYPE_11__* %24, i32 %25)
  %27 = call i32 @TEST_int_gt(i32 %26, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %43

30:                                               ; preds = %23
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = call i32 @BIO_free(%struct.TYPE_11__* %31)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TEST_mem_eq(i32 %35, i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %43

42:                                               ; preds = %30
  store i32 1, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %41, %29, %22, %15, %9
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = call i32 @BIO_free(%struct.TYPE_11__* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = call i32 @BUF_MEM_free(%struct.TYPE_11__* %46)
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_11__* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_11__*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @BIO_puts(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @BIO_get_mem_ptr(%struct.TYPE_11__*, %struct.TYPE_11__**) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @BIO_set_close(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @BIO_free(%struct.TYPE_11__*) #1

declare dso_local i32 @TEST_mem_eq(i32, i32, i8*, i32) #1

declare dso_local i32 @BUF_MEM_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
