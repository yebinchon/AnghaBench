; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_disable_eof_check.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_disable_eof_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"{\22foo\22: 1} garbage\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"json_loads did not detect garbage after JSON text\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"end of file expected near 'garbage'\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@JSON_DISABLE_EOF_CHECK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"json_loads failed with JSON_DISABLE_EOF_CHECK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @disable_eof_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_eof_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32* @json_loads(i8* %4, i32 0, i32* %1)
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @fail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i32 @check_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 18, i32 18)
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @JSON_DISABLE_EOF_CHECK, align 4
  %13 = call i32* @json_loads(i8* %11, i32 %12, i32* %1)
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = call i32 @fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %9
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @json_decref(i32* %19)
  ret void
}

declare dso_local i32* @json_loads(i8*, i32, i32*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @check_error(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
