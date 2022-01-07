; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_struct_members.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_struct_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"corrupted struct\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"struct size differs (%i required %i given)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @struct_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @struct_members(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @mrb_obj_class(i32* %7, i32 %8)
  %10 = call i32 @struct_s_members(i32* %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @mrb_array_p(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @E_TYPE_ERROR, align 4
  %17 = call i32 @mrb_raise(i32* %15, i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @RSTRUCT_LEN(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @RARRAY_LEN(i32 %21)
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @RSTRUCT_LEN(i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @RARRAY_LEN(i32 %31)
  %33 = call i32 @mrb_ary_resize(i32* %29, i32 %30, i64 %32)
  br label %42

34:                                               ; preds = %24
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @E_TYPE_ERROR, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @RARRAY_LEN(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @RSTRUCT_LEN(i32 %39)
  %41 = call i32 @mrb_raisef(i32* %35, i32 %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %40)
  br label %42

42:                                               ; preds = %34, %28
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @struct_s_members(i32*, i32) #1

declare dso_local i32 @mrb_obj_class(i32*, i32) #1

declare dso_local i32 @mrb_array_p(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i64 @RSTRUCT_LEN(i32) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_ary_resize(i32*, i32, i64) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
