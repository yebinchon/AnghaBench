; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_variable.c_csym_i.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_variable.c_csym_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csym_arg = type { i32, %struct.RClass* }
%struct.RClass = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @csym_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csym_i(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.csym_arg*, align 8
  %11 = alloca %struct.RClass*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.csym_arg*
  store %struct.csym_arg* %13, %struct.csym_arg** %10, align 8
  %14 = load %struct.csym_arg*, %struct.csym_arg** %10, align 8
  %15 = getelementptr inbounds %struct.csym_arg, %struct.csym_arg* %14, i32 0, i32 1
  %16 = load %struct.RClass*, %struct.RClass** %15, align 8
  store %struct.RClass* %16, %struct.RClass** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @mrb_type(i32 %17)
  %19 = load %struct.RClass*, %struct.RClass** %11, align 8
  %20 = getelementptr inbounds %struct.RClass, %struct.RClass* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.RClass* @mrb_class_ptr(i32 %24)
  %26 = load %struct.RClass*, %struct.RClass** %11, align 8
  %27 = icmp eq %struct.RClass* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.csym_arg*, %struct.csym_arg** %10, align 8
  %31 = getelementptr inbounds %struct.csym_arg, %struct.csym_arg* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  store i32 1, i32* %5, align 4
  br label %33

32:                                               ; preds = %23, %4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @mrb_type(i32) #1

declare dso_local %struct.RClass* @mrb_class_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
