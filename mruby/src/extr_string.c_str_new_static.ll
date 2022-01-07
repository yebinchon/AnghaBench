; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_string.c_str_new_static.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_string.c_str_new_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { i32 }

@MRB_INT_MAX = common dso_local global i64 0, align 8
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"string size too big\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RString* (i32*, i8*, i64)* @str_new_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RString* @str_new_static(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.RString*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @RSTR_EMBEDDABLE_P(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @mrb_obj_alloc_string(i32* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call %struct.RString* @str_init_embed(i32 %13, i8* %14, i64 %15)
  store %struct.RString* %16, %struct.RString** %4, align 8
  br label %31

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @MRB_INT_MAX, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %24 = call i32 @mrb_raise(i32* %22, i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @mrb_obj_alloc_string(i32* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call %struct.RString* @str_init_nofree(i32 %27, i8* %28, i64 %29)
  store %struct.RString* %30, %struct.RString** %4, align 8
  br label %31

31:                                               ; preds = %25, %11
  %32 = load %struct.RString*, %struct.RString** %4, align 8
  ret %struct.RString* %32
}

declare dso_local i64 @RSTR_EMBEDDABLE_P(i64) #1

declare dso_local %struct.RString* @str_init_embed(i32, i8*, i64) #1

declare dso_local i32 @mrb_obj_alloc_string(i32*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local %struct.RString* @str_init_nofree(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
