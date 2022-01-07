; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_commands.c_get_xclaim_i64_arg.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_commands.c_get_xclaim_i64_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAILURE = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid XCLAIM option '%s' will be ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*)* @get_xclaim_i64_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_xclaim_i64_arg(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 -1, i64* %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i64 @zval_get_i64(i32* %6, i64* %5)
  %8 = load i64, i64* @FAILURE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @E_WARNING, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @php_error_docref(i32* null, i32 %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i64, i64* %5, align 8
  ret i64 %18
}

declare dso_local i64 @zval_get_i64(i32*, i64*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
