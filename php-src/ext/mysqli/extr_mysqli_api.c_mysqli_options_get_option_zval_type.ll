; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_api.c_mysqli_options_get_option_zval_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_api.c_mysqli_options_get_option_zval_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"MYSQLI_OPT_SSL_VERIFY_SERVER_CERT\00", align 1
@CONST_CS = common dso_local global i32 0, align 4
@CONST_PERSISTENT = common dso_local global i32 0, align 4
@IS_LONG = common dso_local global i32 0, align 4
@IS_STRING = common dso_local global i32 0, align 4
@IS_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mysqli_options_get_option_zval_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqli_options_get_option_zval_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %13 [
    i32 147, label %5
    i32 134, label %5
    i32 145, label %5
    i32 144, label %5
    i32 143, label %5
    i32 142, label %5
    i32 137, label %5
    i32 146, label %5
    i32 139, label %5
    i32 138, label %5
    i32 133, label %5
    i32 141, label %5
    i32 140, label %5
    i32 148, label %5
    i32 128, label %11
    i32 129, label %11
    i32 136, label %11
    i32 135, label %11
    i32 150, label %11
    i32 130, label %11
    i32 131, label %11
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* @CONST_CS, align 4
  %7 = load i32, i32* @CONST_PERSISTENT, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @REGISTER_LONG_CONSTANT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 140, i32 %8)
  %10 = load i32, i32* @IS_LONG, align 4
  store i32 %10, i32* %2, align 4
  br label %15

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %12 = load i32, i32* @IS_STRING, align 4
  store i32 %12, i32* %2, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @IS_NULL, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %13, %11, %5
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @REGISTER_LONG_CONSTANT(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
