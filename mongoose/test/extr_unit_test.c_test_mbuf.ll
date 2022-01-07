; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mbuf.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i64, i32* }

@.str = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"MY\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Some long prefix: \00", align 1
@MBUF_SIZE_MULTIPLIER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Some long prefix: MYTEST\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Some long prefix: TESTMYTEST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_mbuf() #0 {
  %1 = alloca %struct.mbuf, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %6 = call i32 @mbuf_init(%struct.mbuf* %1, i32 0)
  %7 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @ASSERT_EQ(i64 %13, i64 0)
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ASSERT_EQ(i64 %16, i64 0)
  %18 = call i32 @mbuf_free(%struct.mbuf* %1)
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ASSERT_EQ(i64 %25, i64 0)
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ASSERT_EQ(i64 %28, i64 0)
  %30 = call i32 @mbuf_init(%struct.mbuf* %1, i32 10)
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ASSERT_EQ(i64 %37, i64 0)
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ASSERT_EQ(i64 %40, i64 10)
  %42 = call i32 @mbuf_free(%struct.mbuf* %1)
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ASSERT_EQ(i64 %49, i64 0)
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ASSERT_EQ(i64 %52, i64 0)
  %54 = call i32 @mbuf_init(%struct.mbuf* %1, i32 10)
  %55 = call i64 @mbuf_append(%struct.mbuf* %1, i8* null, i64 0)
  %56 = call i32 @ASSERT_EQ(i64 %55, i64 0)
  %57 = call i64 @mbuf_append(%struct.mbuf* %1, i8* null, i64 1125899906842624)
  %58 = call i32 @ASSERT_EQ(i64 %57, i64 0)
  %59 = load i8*, i8** %2, align 8
  %60 = load i8*, i8** %2, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = call i64 @mbuf_append(%struct.mbuf* %1, i8* %59, i64 %61)
  %63 = load i8*, i8** %2, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = call i32 @ASSERT_EQ(i64 %62, i64 %64)
  %66 = call i32 @mbuf_resize(%struct.mbuf* %1, i32 2)
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @ASSERT_EQ(i64 %68, i64 10)
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i8*, i8** %2, align 8
  %73 = call i64 @strlen(i8* %72)
  %74 = call i32 @ASSERT_EQ(i64 %71, i64 %73)
  %75 = load i8*, i8** %3, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = call i64 @strlen(i8* %76)
  %78 = trunc i64 %77 to i32
  %79 = call i64 @mbuf_insert(%struct.mbuf* %1, i64 0, i8* %75, i32 %78)
  %80 = load i8*, i8** %3, align 8
  %81 = call i64 @strlen(i8* %80)
  %82 = call i32 @ASSERT_EQ(i64 %79, i64 %81)
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ASSERT_EQ(i64 %84, i64 10)
  %86 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i8*, i8** %2, align 8
  %89 = call i64 @strlen(i8* %88)
  %90 = load i8*, i8** %3, align 8
  %91 = call i64 @strlen(i8* %90)
  %92 = add i64 %89, %91
  %93 = call i32 @ASSERT_EQ(i64 %87, i64 %92)
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i64 @strlen(i8* %95)
  %97 = trunc i64 %96 to i32
  %98 = call i64 @mbuf_insert(%struct.mbuf* %1, i64 0, i8* %94, i32 %97)
  %99 = load i8*, i8** %4, align 8
  %100 = call i64 @strlen(i8* %99)
  %101 = call i32 @ASSERT_EQ(i64 %98, i64 %100)
  %102 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MBUF_SIZE_MULTIPLIER, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = call i64 @strlen(i8* %105)
  %107 = load i8*, i8** %3, align 8
  %108 = call i64 @strlen(i8* %107)
  %109 = add i64 %106, %108
  %110 = load i8*, i8** %2, align 8
  %111 = call i64 @strlen(i8* %110)
  %112 = add i64 %109, %111
  %113 = mul i64 %104, %112
  %114 = call i32 @ASSERT_EQ(i64 %103, i64 %113)
  %115 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @ASSERT_STREQ_NZ(i32* %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %118 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %5, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = call i64 @strlen(i8* %120)
  %122 = load i8*, i8** %2, align 8
  %123 = load i8*, i8** %2, align 8
  %124 = call i64 @strlen(i8* %123)
  %125 = trunc i64 %124 to i32
  %126 = call i64 @mbuf_insert(%struct.mbuf* %1, i64 %121, i8* %122, i32 %125)
  %127 = load i8*, i8** %2, align 8
  %128 = call i64 @strlen(i8* %127)
  %129 = call i32 @ASSERT_EQ(i64 %126, i64 %128)
  %130 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %5, align 8
  %133 = call i32 @ASSERT_EQ(i64 %131, i64 %132)
  %134 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @ASSERT_STREQ_NZ(i32* %135, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %137 = call i64 @mbuf_insert(%struct.mbuf* %1, i64 0, i8* null, i32 0)
  %138 = call i32 @ASSERT_EQ(i64 %137, i64 0)
  %139 = call i64 @mbuf_insert(%struct.mbuf* %1, i64 0, i8* null, i32 -1)
  %140 = call i32 @ASSERT_EQ(i64 %139, i64 0)
  %141 = call i32 @mbuf_free(%struct.mbuf* %1)
  ret i8* null
}

declare dso_local i32 @mbuf_init(%struct.mbuf*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ASSERT_EQ(i64, i64) #1

declare dso_local i32 @mbuf_free(%struct.mbuf*) #1

declare dso_local i64 @mbuf_append(%struct.mbuf*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mbuf_resize(%struct.mbuf*, i32) #1

declare dso_local i64 @mbuf_insert(%struct.mbuf*, i64, i8*, i32) #1

declare dso_local i32 @ASSERT_STREQ_NZ(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
