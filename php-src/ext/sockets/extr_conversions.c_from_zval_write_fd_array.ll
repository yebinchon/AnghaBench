; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_from_zval_write_fd_array.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_from_zval_write_fd_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"expected an array here\00", align 1
@from_zval_write_fd_array_aux = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @from_zval_write_fd_array(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @Z_TYPE_P(i32* %7)
  %9 = load i64, i64* @IS_ARRAY, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @do_from_zval_err(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %18

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @from_array_iterate(i32* %15, i32* @from_zval_write_fd_array_aux, i8** %5, i32* %16)
  br label %18

18:                                               ; preds = %14, %11
  ret void
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @do_from_zval_err(i32*, i8*, i8*) #1

declare dso_local i32 @from_array_iterate(i32*, i32*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
