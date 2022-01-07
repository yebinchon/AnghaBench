; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_string.c_mrb_str_downcase_bang.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_string.c_mrb_str_downcase_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_str_downcase_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_downcase_bang(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.RString*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.RString* @mrb_str_ptr(i32 %11)
  store %struct.RString* %12, %struct.RString** %9, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.RString*, %struct.RString** %9, align 8
  %15 = call i32 @mrb_str_modify_keep_ascii(i32* %13, %struct.RString* %14)
  %16 = load %struct.RString*, %struct.RString** %9, align 8
  %17 = call i8* @RSTR_PTR(%struct.RString* %16)
  store i8* %17, i8** %6, align 8
  %18 = load %struct.RString*, %struct.RString** %9, align 8
  %19 = call i8* @RSTR_PTR(%struct.RString* %18)
  %20 = load %struct.RString*, %struct.RString** %9, align 8
  %21 = call i32 @RSTR_LEN(%struct.RString* %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %39, %2
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @ISUPPER(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call signext i8 @TOLOWER(i8 signext %35)
  %37 = load i8*, i8** %6, align 8
  store i8 %36, i8* %37, align 1
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  br label %24

42:                                               ; preds = %24
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %42
  %48 = call i32 (...) @mrb_nil_value()
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.RString* @mrb_str_ptr(i32) #1

declare dso_local i32 @mrb_str_modify_keep_ascii(i32*, %struct.RString*) #1

declare dso_local i8* @RSTR_PTR(%struct.RString*) #1

declare dso_local i32 @RSTR_LEN(%struct.RString*) #1

declare dso_local i64 @ISUPPER(i8 signext) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
