; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mg_url_encode.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mg_url_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"I'm a.little_tea-pot,here's$my;spout~oink(oink)oink/!\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"I%27m%20a.little_tea-pot,here%27s$my;spout~oink(oink)oink/%21\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"I%27m%20a%2elittle%5ftea%2dpot%2chere%27s%24my%3bspout%7eoink%28oink%29oink%2f%21\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" /!\00", align 1
@MG_URL_ENCODE_F_UPPERCASE_HEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [76 x i8] c"I%27m a%2Elittle%5Ftea%2Dpot%2Chere%27s%24my%3Bspout%7Eoink%28oink%29oink/!\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"/!\00", align 1
@MG_URL_ENCODE_F_SPACE_AS_PLUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [76 x i8] c"I%27m+a%2Elittle%5Ftea%2Dpot%2Chere%27s%24my%3Bspout%7Eoink%28oink%29oink/!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_mg_url_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_mg_url_encode() #0 {
  %1 = alloca %struct.mg_str, align 8
  %2 = alloca %struct.mg_str, align 8
  %3 = alloca %struct.mg_str, align 8
  %4 = alloca %struct.mg_str, align 8
  %5 = alloca %struct.mg_str, align 8
  %6 = call i64 @MG_MK_STR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 0
  store i64 %6, i64* %7, align 8
  %8 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @mg_url_encode(i64 %9)
  %11 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @ASSERT_MG_STREQ(i64 %13, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @free(i8* %17)
  %19 = call i32 @mg_mk_str(i8* null)
  %20 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @mg_url_encode_opt(i64 %21, i32 %19, i32 0)
  %23 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %3, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ASSERT_MG_STREQ(i64 %25, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @free(i8* %29)
  %31 = call i32 @mg_mk_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @MG_URL_ENCODE_F_UPPERCASE_HEX, align 4
  %33 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @mg_url_encode_opt(i64 %34, i32 %31, i32 %32)
  %36 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ASSERT_MG_STREQ(i64 %38, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @free(i8* %42)
  %44 = call i32 @mg_mk_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i32, i32* @MG_URL_ENCODE_F_SPACE_AS_PLUS, align 4
  %46 = load i32, i32* @MG_URL_ENCODE_F_UPPERCASE_HEX, align 4
  %47 = or i32 %45, %46
  %48 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @mg_url_encode_opt(i64 %49, i32 %44, i32 %47)
  %51 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ASSERT_MG_STREQ(i64 %53, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  %55 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @free(i8* %57)
  ret i8* null
}

declare dso_local i64 @MG_MK_STR(i8*) #1

declare dso_local i64 @mg_url_encode(i64) #1

declare dso_local i32 @ASSERT_MG_STREQ(i64, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @mg_url_encode_opt(i64, i32, i32) #1

declare dso_local i32 @mg_mk_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
