; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_regress.c_test_atomic_uint32.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_regress.c_test_atomic_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@PG_INT16_MAX = common dso_local global i32 0, align 4
@PG_INT16_MIN = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"atomic_compare_exchange_u32() never succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_atomic_uint32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_atomic_uint32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @pg_atomic_init_u32(i32* %1, i32 0)
  %5 = call i32 @pg_atomic_read_u32(i32* %1)
  %6 = call i32 @EXPECT_EQ_U32(i32 %5, i32 0)
  %7 = call i32 @pg_atomic_write_u32(i32* %1, i32 3)
  %8 = call i32 @pg_atomic_read_u32(i32* %1)
  %9 = call i32 @EXPECT_EQ_U32(i32 %8, i32 3)
  %10 = call i32 @pg_atomic_read_u32(i32* %1)
  %11 = sub nsw i32 %10, 2
  %12 = call i32 @pg_atomic_fetch_add_u32(i32* %1, i32 %11)
  %13 = call i32 @EXPECT_EQ_U32(i32 %12, i32 3)
  %14 = call i32 @pg_atomic_fetch_sub_u32(i32* %1, i32 1)
  %15 = call i32 @EXPECT_EQ_U32(i32 %14, i32 4)
  %16 = call i32 @pg_atomic_sub_fetch_u32(i32* %1, i32 3)
  %17 = call i32 @EXPECT_EQ_U32(i32 %16, i32 0)
  %18 = call i32 @pg_atomic_add_fetch_u32(i32* %1, i32 10)
  %19 = call i32 @EXPECT_EQ_U32(i32 %18, i32 10)
  %20 = call i32 @pg_atomic_exchange_u32(i32* %1, i32 5)
  %21 = call i32 @EXPECT_EQ_U32(i32 %20, i32 10)
  %22 = call i32 @pg_atomic_exchange_u32(i32* %1, i32 0)
  %23 = call i32 @EXPECT_EQ_U32(i32 %22, i32 5)
  %24 = load i32, i32* @INT_MAX, align 4
  %25 = call i32 @pg_atomic_fetch_add_u32(i32* %1, i32 %24)
  %26 = call i32 @EXPECT_EQ_U32(i32 %25, i32 0)
  %27 = load i32, i32* @INT_MAX, align 4
  %28 = call i32 @pg_atomic_fetch_add_u32(i32* %1, i32 %27)
  %29 = load i32, i32* @INT_MAX, align 4
  %30 = call i32 @EXPECT_EQ_U32(i32 %28, i32 %29)
  %31 = call i32 @pg_atomic_fetch_add_u32(i32* %1, i32 2)
  %32 = load i32, i32* @PG_INT16_MAX, align 4
  %33 = call i32 @pg_atomic_fetch_add_u32(i32* %1, i32 %32)
  %34 = call i32 @EXPECT_EQ_U32(i32 %33, i32 0)
  %35 = load i32, i32* @PG_INT16_MAX, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @pg_atomic_fetch_add_u32(i32* %1, i32 %36)
  %38 = load i32, i32* @PG_INT16_MAX, align 4
  %39 = call i32 @EXPECT_EQ_U32(i32 %37, i32 %38)
  %40 = load i32, i32* @PG_INT16_MIN, align 4
  %41 = call i32 @pg_atomic_fetch_add_u32(i32* %1, i32 %40)
  %42 = load i32, i32* @PG_INT16_MAX, align 4
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 %43, 1
  %45 = call i32 @EXPECT_EQ_U32(i32 %41, i32 %44)
  %46 = load i32, i32* @PG_INT16_MIN, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @pg_atomic_fetch_add_u32(i32* %1, i32 %47)
  %49 = load i32, i32* @PG_INT16_MAX, align 4
  %50 = call i32 @EXPECT_EQ_U32(i32 %48, i32 %49)
  %51 = call i32 @pg_atomic_fetch_add_u32(i32* %1, i32 1)
  %52 = call i32 @pg_atomic_read_u32(i32* %1)
  %53 = load i32, i32* @UINT_MAX, align 4
  %54 = call i32 @EXPECT_EQ_U32(i32 %52, i32 %53)
  %55 = load i32, i32* @INT_MAX, align 4
  %56 = call i32 @pg_atomic_fetch_sub_u32(i32* %1, i32 %55)
  %57 = load i32, i32* @UINT_MAX, align 4
  %58 = call i32 @EXPECT_EQ_U32(i32 %56, i32 %57)
  %59 = call i32 @pg_atomic_read_u32(i32* %1)
  %60 = load i32, i32* @INT_MAX, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @EXPECT_EQ_U32(i32 %59, i32 %61)
  %63 = load i32, i32* @INT_MAX, align 4
  %64 = call i32 @pg_atomic_sub_fetch_u32(i32* %1, i32 %63)
  %65 = call i32 @EXPECT_EQ_U32(i32 %64, i32 1)
  %66 = call i32 @pg_atomic_sub_fetch_u32(i32* %1, i32 1)
  store i32 10, i32* %2, align 4
  %67 = call i32 @pg_atomic_compare_exchange_u32(i32* %1, i32* %2, i32 1)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @EXPECT_TRUE(i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %80, %0
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %73, 1000
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  %76 = call i32 @pg_atomic_compare_exchange_u32(i32* %1, i32* %2, i32 1)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %83

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %72

83:                                               ; preds = %78, %72
  %84 = load i32, i32* %3, align 4
  %85 = icmp eq i32 %84, 1000
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @ERROR, align 4
  %88 = call i32 @elog(i32 %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %83
  %90 = call i32 @pg_atomic_read_u32(i32* %1)
  %91 = call i32 @EXPECT_EQ_U32(i32 %90, i32 1)
  %92 = call i32 @pg_atomic_write_u32(i32* %1, i32 0)
  %93 = call i32 @pg_atomic_fetch_or_u32(i32* %1, i32 1)
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @EXPECT_TRUE(i32 %97)
  %99 = call i32 @pg_atomic_fetch_or_u32(i32* %1, i32 2)
  %100 = and i32 %99, 1
  %101 = call i32 @EXPECT_TRUE(i32 %100)
  %102 = call i32 @pg_atomic_read_u32(i32* %1)
  %103 = call i32 @EXPECT_EQ_U32(i32 %102, i32 3)
  %104 = call i32 @pg_atomic_fetch_and_u32(i32* %1, i32 -3)
  %105 = and i32 %104, 3
  %106 = call i32 @EXPECT_EQ_U32(i32 %105, i32 3)
  %107 = call i32 @pg_atomic_fetch_and_u32(i32* %1, i32 -2)
  %108 = call i32 @EXPECT_EQ_U32(i32 %107, i32 1)
  %109 = call i32 @pg_atomic_fetch_and_u32(i32* %1, i32 -1)
  %110 = call i32 @EXPECT_EQ_U32(i32 %109, i32 0)
  ret void
}

declare dso_local i32 @pg_atomic_init_u32(i32*, i32) #1

declare dso_local i32 @EXPECT_EQ_U32(i32, i32) #1

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i32 @pg_atomic_write_u32(i32*, i32) #1

declare dso_local i32 @pg_atomic_fetch_add_u32(i32*, i32) #1

declare dso_local i32 @pg_atomic_fetch_sub_u32(i32*, i32) #1

declare dso_local i32 @pg_atomic_sub_fetch_u32(i32*, i32) #1

declare dso_local i32 @pg_atomic_add_fetch_u32(i32*, i32) #1

declare dso_local i32 @pg_atomic_exchange_u32(i32*, i32) #1

declare dso_local i32 @EXPECT_TRUE(i32) #1

declare dso_local i32 @pg_atomic_compare_exchange_u32(i32*, i32*, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @pg_atomic_fetch_or_u32(i32*, i32) #1

declare dso_local i32 @pg_atomic_fetch_and_u32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
