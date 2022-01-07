; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_class.c_define_module.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_class.c_define_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RClass* (i32*, i32, %struct.RClass*)* @define_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RClass* @define_module(i32* %0, i32 %1, %struct.RClass* %2) #0 {
  %4 = alloca %struct.RClass*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.RClass*, align 8
  %8 = alloca %struct.RClass*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.RClass* %2, %struct.RClass** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.RClass*, %struct.RClass** %7, align 8
  %11 = call i32 @mrb_obj_value(%struct.RClass* %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @mrb_const_defined_at(i32* %9, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.RClass*, %struct.RClass** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.RClass* @module_from_sym(i32* %16, %struct.RClass* %17, i32 %18)
  store %struct.RClass* %19, %struct.RClass** %4, align 8
  br label %29

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call %struct.RClass* @mrb_module_new(i32* %21)
  store %struct.RClass* %22, %struct.RClass** %8, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.RClass*, %struct.RClass** %7, align 8
  %25 = load %struct.RClass*, %struct.RClass** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @setup_class(i32* %23, %struct.RClass* %24, %struct.RClass* %25, i32 %26)
  %28 = load %struct.RClass*, %struct.RClass** %8, align 8
  store %struct.RClass* %28, %struct.RClass** %4, align 8
  br label %29

29:                                               ; preds = %20, %15
  %30 = load %struct.RClass*, %struct.RClass** %4, align 8
  ret %struct.RClass* %30
}

declare dso_local i64 @mrb_const_defined_at(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local %struct.RClass* @module_from_sym(i32*, %struct.RClass*, i32) #1

declare dso_local %struct.RClass* @mrb_module_new(i32*) #1

declare dso_local i32 @setup_class(i32*, %struct.RClass*, %struct.RClass*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
