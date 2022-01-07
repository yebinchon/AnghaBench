; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_string.c_mrb_str_chop_bang.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_string.c_mrb_str_chop_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_str_chop_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_chop_bang(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.RString*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.RString* @mrb_str_ptr(i32 %8)
  store %struct.RString* %9, %struct.RString** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.RString*, %struct.RString** %6, align 8
  %12 = call i32 @mrb_str_modify_keep_ascii(i32* %10, %struct.RString* %11)
  %13 = load %struct.RString*, %struct.RString** %6, align 8
  %14 = call i32 @RSTR_LEN(%struct.RString* %13)
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load %struct.RString*, %struct.RString** %6, align 8
  %18 = call i32 @RSTR_LEN(%struct.RString* %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load %struct.RString*, %struct.RString** %6, align 8
  %21 = call i8* @RSTR_PTR(%struct.RString* %20)
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %45

28:                                               ; preds = %16
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.RString*, %struct.RString** %6, align 8
  %33 = call i8* @RSTR_PTR(%struct.RString* %32)
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 13
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %31, %28
  br label %45

45:                                               ; preds = %44, %16
  %46 = load %struct.RString*, %struct.RString** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @RSTR_SET_LEN(%struct.RString* %46, i32 %47)
  %49 = load %struct.RString*, %struct.RString** %6, align 8
  %50 = call i8* @RSTR_PTR(%struct.RString* %49)
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %2
  %56 = call i32 (...) @mrb_nil_value()
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %45
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.RString* @mrb_str_ptr(i32) #1

declare dso_local i32 @mrb_str_modify_keep_ascii(i32*, %struct.RString*) #1

declare dso_local i32 @RSTR_LEN(%struct.RString*) #1

declare dso_local i8* @RSTR_PTR(%struct.RString*) #1

declare dso_local i32 @RSTR_SET_LEN(%struct.RString*, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
