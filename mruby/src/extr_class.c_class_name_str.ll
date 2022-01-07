; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_class.c_class_name_str.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_class.c_class_name_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i64 }

@MRB_TT_MODULE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"#<Module:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"#<Class:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.RClass*)* @class_name_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @class_name_str(i32* %0, %struct.RClass* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.RClass*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.RClass* %1, %struct.RClass** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.RClass*, %struct.RClass** %4, align 8
  %8 = call i32 @mrb_class_path(i32* %6, %struct.RClass* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @mrb_nil_p(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.RClass*, %struct.RClass** %4, align 8
  %14 = getelementptr inbounds %struct.RClass, %struct.RClass* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MRB_TT_MODULE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @mrb_str_new_lit(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %24

21:                                               ; preds = %12
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @mrb_str_new_lit(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %20, %18 ], [ %23, %21 ]
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.RClass*, %struct.RClass** %4, align 8
  %30 = call i32 @mrb_ptr_to_str(i32* %28, %struct.RClass* %29)
  %31 = call i32 @mrb_str_cat_str(i32* %26, i32 %27, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @mrb_str_cat_lit(i32* %32, i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %24, %2
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @mrb_class_path(i32*, %struct.RClass*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i32 @mrb_str_cat_str(i32*, i32, i32) #1

declare dso_local i32 @mrb_ptr_to_str(i32*, %struct.RClass*) #1

declare dso_local i32 @mrb_str_cat_lit(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
