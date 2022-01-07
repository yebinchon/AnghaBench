; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_print_helper.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_print_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32*, i32, i32)* }

@MP_OBJ_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"<%q>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_obj_print_helper(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @MP_STACK_CHECK()
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MP_OBJ_NULL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @mp_print_str(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %36

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_3__* @mp_obj_get_type(i32 %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %7, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %19, align 8
  %21 = icmp ne i32 (i32*, i32, i32)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %24, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 %25(i32* %26, i32 %27, i32 %28)
  br label %36

30:                                               ; preds = %15
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mp_printf(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %12, %30, %22
  ret void
}

declare dso_local i32 @MP_STACK_CHECK(...) #1

declare dso_local i32 @mp_print_str(i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @mp_obj_get_type(i32) #1

declare dso_local i32 @mp_printf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
