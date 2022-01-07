; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_decode_int_as_real.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_decode_int_as_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"42\00", align 1
@JSON_DECODE_INT_AS_REAL = common dso_local global i32 0, align 4
@JSON_DECODE_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"json_load decode int as real failed - int\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"real number overflow\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"json_load decode int as real failed - expected overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @decode_int_as_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_int_as_real() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca [311 x i8], align 16
  %4 = load i32, i32* @JSON_DECODE_INT_AS_REAL, align 4
  %5 = load i32, i32* @JSON_DECODE_ANY, align 4
  %6 = or i32 %4, %5
  %7 = call i32* @json_loads(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %6, %struct.TYPE_3__* %2)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %0
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @json_is_real(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32*, i32** %1, align 8
  %16 = call double @json_real_value(i32* %15)
  %17 = fcmp une double %16, 4.200000e+01
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %10, %0
  %19 = call i32 @fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @json_decref(i32* %21)
  %23 = getelementptr inbounds [311 x i8], [311 x i8]* %3, i64 0, i64 0
  store i8 49, i8* %23, align 16
  %24 = getelementptr inbounds [311 x i8], [311 x i8]* %3, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = call i32 @memset(i8* %25, i32 48, i32 309)
  %27 = getelementptr inbounds [311 x i8], [311 x i8]* %3, i64 0, i64 310
  store i8 0, i8* %27, align 2
  %28 = getelementptr inbounds [311 x i8], [311 x i8]* %3, i64 0, i64 0
  %29 = load i32, i32* @JSON_DECODE_INT_AS_REAL, align 4
  %30 = load i32, i32* @JSON_DECODE_ANY, align 4
  %31 = or i32 %29, %30
  %32 = call i32* @json_loads(i8* %28, i32 %31, %struct.TYPE_3__* %2)
  store i32* %32, i32** %1, align 8
  %33 = load i32*, i32** %1, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strcmp(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %20
  %41 = call i32 @fail(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @json_decref(i32* %43)
  ret void
}

declare dso_local i32* @json_loads(i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @json_is_real(i32*) #1

declare dso_local double @json_real_value(i32*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
