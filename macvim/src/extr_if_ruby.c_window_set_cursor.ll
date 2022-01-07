; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_ruby.c_window_set_cursor.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_ruby.c_window_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@T_ARRAY = common dso_local global i32 0, align 4
@rb_eArgError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"array length must be 2\00", align 1
@NOT_VALID = common dso_local global i32 0, align 4
@Qnil = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @window_set_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_set_cursor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.TYPE_5__* @get_win(i32 %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @T_ARRAY, align 4
  %12 = call i32 @Check_Type(i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @RARRAY_LEN(i32 %13)
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @rb_eArgError, align 4
  %18 = call i32 @rb_raise(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32* @RARRAY_PTR(i32 %20)
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32* @RARRAY_PTR(i32 %24)
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @NUM2LONG(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @NUM2UINT(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = call i32 (...) @check_cursor()
  %39 = load i32, i32* @NOT_VALID, align 4
  %40 = call i32 @update_screen(i32 %39)
  %41 = load i32, i32* @Qnil, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_5__* @get_win(i32) #1

declare dso_local i32 @Check_Type(i32, i32) #1

declare dso_local i32 @RARRAY_LEN(i32) #1

declare dso_local i32 @rb_raise(i32, i8*) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i32 @NUM2LONG(i32) #1

declare dso_local i32 @NUM2UINT(i32) #1

declare dso_local i32 @check_cursor(...) #1

declare dso_local i32 @update_screen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
