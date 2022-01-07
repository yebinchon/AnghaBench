; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_match_topic_expression.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_match_topic_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/foo\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"+/foo\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"foo/\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"foo//\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"foo/bar\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"foo/+\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"+/bar\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"+/+\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"foo/+/bar\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"foo//bar\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"foo/+/+\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"foo/+/#\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"+/foo/bar\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"/foo/bar\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"foo/#\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"foo/bar/baz\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"#/foo\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"bar/foo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_mqtt_match_topic_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_mqtt_match_topic_expression() #0 {
  %1 = call i32 @mg_mk_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = call i32 @ASSERT(i32 %2)
  %4 = call i32 @mg_mk_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %6 = call i32 @ASSERT(i32 %5)
  %7 = call i32 @mg_mk_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  %9 = call i32 @ASSERT(i32 %8)
  %10 = call i32 @mg_mk_str(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = call i32 @mg_mk_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = call i32 @mg_mk_str(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %20 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @ASSERT(i32 %20)
  %22 = call i32 @mg_mk_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %23 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = call i32 @mg_mk_str(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %29 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = call i32 @mg_mk_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %35 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %34)
  %36 = call i32 @ASSERT(i32 %35)
  %37 = call i32 @mg_mk_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %38 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %37)
  %39 = call i32 @ASSERT(i32 %38)
  %40 = call i32 @mg_mk_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %41 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %40)
  %42 = call i32 @ASSERT(i32 %41)
  %43 = call i32 @mg_mk_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %44 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %43)
  %45 = call i32 @ASSERT(i32 %44)
  %46 = call i32 @mg_mk_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %47 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %46)
  %48 = call i32 @ASSERT(i32 %47)
  %49 = call i32 @mg_mk_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %50 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = call i32 @mg_mk_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %56 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %55)
  %57 = call i32 @ASSERT(i32 %56)
  %58 = call i32 @mg_mk_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %59 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %58)
  %60 = call i32 @ASSERT(i32 %59)
  %61 = call i32 @mg_mk_str(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0))
  %62 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = call i32 @mg_mk_str(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0))
  %68 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 %67)
  %69 = call i32 @ASSERT(i32 %68)
  %70 = call i32 @mg_mk_str(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %71 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 %70)
  %72 = call i32 @ASSERT(i32 %71)
  %73 = call i32 @mg_mk_str(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0))
  %74 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 %73)
  %75 = call i32 @ASSERT(i32 %74)
  %76 = call i32 @mg_mk_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 %76)
  %78 = call i32 @ASSERT(i32 %77)
  %79 = call i32 @mg_mk_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %80 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 %79)
  %81 = call i32 @ASSERT(i32 %80)
  %82 = call i32 @mg_mk_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %83 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %82)
  %84 = call i32 @ASSERT(i32 %83)
  %85 = call i32 @mg_mk_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %86 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %85)
  %87 = call i32 @ASSERT(i32 %86)
  %88 = call i32 @mg_mk_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %89 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %88)
  %90 = call i32 @ASSERT(i32 %89)
  %91 = call i32 @mg_mk_str(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %92 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %91)
  %93 = call i32 @ASSERT(i32 %92)
  %94 = call i32 @mg_mk_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %95 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @ASSERT(i32 %98)
  %100 = call i32 @mg_mk_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %101 = call i32 @mg_mqtt_vmatch_topic_expression(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @ASSERT(i32 %104)
  ret i8* null
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mg_mqtt_vmatch_topic_expression(i8*, i32) #1

declare dso_local i32 @mg_mk_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
