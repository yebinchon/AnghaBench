; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_del_suffix_bang.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_del_suffix_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_str_del_suffix_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_del_suffix_bang(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.RString*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.RString* @RSTRING(i32 %11)
  store %struct.RString* %12, %struct.RString** %10, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @mrb_get_args(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, i64* %6)
  %15 = load %struct.RString*, %struct.RString** %10, align 8
  %16 = call i64 @RSTR_LEN(%struct.RString* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @mrb_nil_value()
  store i32 %21, i32* %3, align 4
  br label %61

22:                                               ; preds = %2
  %23 = load %struct.RString*, %struct.RString** %10, align 8
  %24 = call i8* @RSTR_PTR(%struct.RString* %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @memcmp(i8* %30, i8* %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = call i32 (...) @mrb_nil_value()
  store i32 %36, i32* %3, align 4
  br label %61

37:                                               ; preds = %22
  %38 = load %struct.RString*, %struct.RString** %10, align 8
  %39 = call i32 @mrb_frozen_p(%struct.RString* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = load %struct.RString*, %struct.RString** %10, align 8
  %43 = call i64 @RSTR_SHARED_P(%struct.RString* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.RString*, %struct.RString** %10, align 8
  %47 = call i64 @RSTR_FSHARED_P(%struct.RString* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41
  br label %54

50:                                               ; preds = %45, %37
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.RString*, %struct.RString** %10, align 8
  %53 = call i32 @mrb_str_modify(i32* %51, %struct.RString* %52)
  br label %54

54:                                               ; preds = %50, %49
  %55 = load %struct.RString*, %struct.RString** %10, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %6, align 8
  %58 = sub nsw i64 %56, %57
  %59 = call i32 @RSTR_SET_LEN(%struct.RString* %55, i64 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %54, %35, %20
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.RString* @RSTRING(i32) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i8**, i64*) #1

declare dso_local i64 @RSTR_LEN(%struct.RString*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i8* @RSTR_PTR(%struct.RString*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @mrb_frozen_p(%struct.RString*) #1

declare dso_local i64 @RSTR_SHARED_P(%struct.RString*) #1

declare dso_local i64 @RSTR_FSHARED_P(%struct.RString*) #1

declare dso_local i32 @mrb_str_modify(i32*, %struct.RString*) #1

declare dso_local i32 @RSTR_SET_LEN(%struct.RString*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
