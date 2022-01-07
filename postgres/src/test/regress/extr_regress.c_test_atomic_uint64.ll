; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_regress.c_test_atomic_uint64.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_regress.c_test_atomic_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"atomic_compare_exchange_u64() never succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_atomic_uint64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_atomic_uint64() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @pg_atomic_init_u64(i32* %1, i32 0)
  %5 = call i32 @pg_atomic_read_u64(i32* %1)
  %6 = call i32 @EXPECT_EQ_U64(i32 %5, i32 0)
  %7 = call i32 @pg_atomic_write_u64(i32* %1, i32 3)
  %8 = call i32 @pg_atomic_read_u64(i32* %1)
  %9 = call i32 @EXPECT_EQ_U64(i32 %8, i32 3)
  %10 = call i32 @pg_atomic_read_u64(i32* %1)
  %11 = sub nsw i32 %10, 2
  %12 = call i32 @pg_atomic_fetch_add_u64(i32* %1, i32 %11)
  %13 = call i32 @EXPECT_EQ_U64(i32 %12, i32 3)
  %14 = call i32 @pg_atomic_fetch_sub_u64(i32* %1, i32 1)
  %15 = call i32 @EXPECT_EQ_U64(i32 %14, i32 4)
  %16 = call i32 @pg_atomic_sub_fetch_u64(i32* %1, i32 3)
  %17 = call i32 @EXPECT_EQ_U64(i32 %16, i32 0)
  %18 = call i32 @pg_atomic_add_fetch_u64(i32* %1, i32 10)
  %19 = call i32 @EXPECT_EQ_U64(i32 %18, i32 10)
  %20 = call i32 @pg_atomic_exchange_u64(i32* %1, i32 5)
  %21 = call i32 @EXPECT_EQ_U64(i32 %20, i32 10)
  %22 = call i32 @pg_atomic_exchange_u64(i32* %1, i32 0)
  %23 = call i32 @EXPECT_EQ_U64(i32 %22, i32 5)
  store i32 10, i32* %2, align 4
  %24 = call i32 @pg_atomic_compare_exchange_u64(i32* %1, i32* %2, i32 1)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @EXPECT_TRUE(i32 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %37, %0
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 100
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  %33 = call i32 @pg_atomic_compare_exchange_u64(i32* %1, i32* %2, i32 1)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %40

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %29

40:                                               ; preds = %35, %29
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 100
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @ERROR, align 4
  %45 = call i32 @elog(i32 %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  %47 = call i32 @pg_atomic_read_u64(i32* %1)
  %48 = call i32 @EXPECT_EQ_U64(i32 %47, i32 1)
  %49 = call i32 @pg_atomic_write_u64(i32* %1, i32 0)
  %50 = call i32 @pg_atomic_fetch_or_u64(i32* %1, i32 1)
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @EXPECT_TRUE(i32 %54)
  %56 = call i32 @pg_atomic_fetch_or_u64(i32* %1, i32 2)
  %57 = and i32 %56, 1
  %58 = call i32 @EXPECT_TRUE(i32 %57)
  %59 = call i32 @pg_atomic_read_u64(i32* %1)
  %60 = call i32 @EXPECT_EQ_U64(i32 %59, i32 3)
  %61 = call i32 @pg_atomic_fetch_and_u64(i32* %1, i32 -3)
  %62 = and i32 %61, 3
  %63 = call i32 @EXPECT_EQ_U64(i32 %62, i32 3)
  %64 = call i32 @pg_atomic_fetch_and_u64(i32* %1, i32 -2)
  %65 = call i32 @EXPECT_EQ_U64(i32 %64, i32 1)
  %66 = call i32 @pg_atomic_fetch_and_u64(i32* %1, i32 -1)
  %67 = call i32 @EXPECT_EQ_U64(i32 %66, i32 0)
  ret void
}

declare dso_local i32 @pg_atomic_init_u64(i32*, i32) #1

declare dso_local i32 @EXPECT_EQ_U64(i32, i32) #1

declare dso_local i32 @pg_atomic_read_u64(i32*) #1

declare dso_local i32 @pg_atomic_write_u64(i32*, i32) #1

declare dso_local i32 @pg_atomic_fetch_add_u64(i32*, i32) #1

declare dso_local i32 @pg_atomic_fetch_sub_u64(i32*, i32) #1

declare dso_local i32 @pg_atomic_sub_fetch_u64(i32*, i32) #1

declare dso_local i32 @pg_atomic_add_fetch_u64(i32*, i32) #1

declare dso_local i32 @pg_atomic_exchange_u64(i32*, i32) #1

declare dso_local i32 @EXPECT_TRUE(i32) #1

declare dso_local i32 @pg_atomic_compare_exchange_u64(i32*, i32*, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @pg_atomic_fetch_or_u64(i32*, i32) #1

declare dso_local i32 @pg_atomic_fetch_and_u64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
