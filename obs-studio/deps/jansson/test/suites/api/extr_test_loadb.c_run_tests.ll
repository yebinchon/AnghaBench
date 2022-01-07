; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_loadb.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_loadb.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@__const.run_tests.str = private unnamed_addr constant [34 x i8] c"[\22A\22, {\22B\22: \22C\22}, 1, 2, 3]garbage\00", align 16
@.str = private unnamed_addr constant [41 x i8] c"json_loadb failed on a valid JSON buffer\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"json_loadb should have failed on an incomplete buffer, but it didn't\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"json_loadb returned an invalid line number on fail\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"']' expected near end of file\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"json_loadb returned an invalid error message for an unclosed top-level array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_tests() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca [34 x i8], align 16
  %4 = alloca i64, align 8
  %5 = bitcast [34 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([34 x i8], [34 x i8]* @__const.run_tests.str, i32 0, i32 0), i64 34, i1 false)
  %6 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 0
  %7 = call i64 @strlen(i8* %6)
  %8 = sub i64 %7, 7
  store i64 %8, i64* %4, align 8
  %9 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32* @json_loadb(i8* %9, i64 %10, i32 0, %struct.TYPE_3__* %2)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = call i32 @fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @json_decref(i32* %17)
  %19 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 0
  %20 = load i64, i64* %4, align 8
  %21 = sub i64 %20, 1
  %22 = call i32* @json_loadb(i8* %19, i64 %21, i32 0, %struct.TYPE_3__* %2)
  store i32* %22, i32** %1, align 8
  %23 = load i32*, i32** %1, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @json_decref(i32* %26)
  %28 = call i32 @fail(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %16
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strcmp(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @fail(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32* @json_loadb(i8*, i64, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @fail(i8*) #2

declare dso_local i32 @json_decref(i32*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
