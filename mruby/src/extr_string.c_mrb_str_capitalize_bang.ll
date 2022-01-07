; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_string.c_mrb_str_capitalize_bang.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_string.c_mrb_str_capitalize_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_str_capitalize_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_capitalize_bang(i32* %0, i32 %1) #0 {
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
  %17 = call i32 @RSTR_LEN(%struct.RString* %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.RString*, %struct.RString** %9, align 8
  %21 = call i8* @RSTR_PTR(%struct.RString* %20)
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %2
  %24 = call i32 (...) @mrb_nil_value()
  store i32 %24, i32* %3, align 4
  br label %69

25:                                               ; preds = %19
  %26 = load %struct.RString*, %struct.RString** %9, align 8
  %27 = call i8* @RSTR_PTR(%struct.RString* %26)
  store i8* %27, i8** %6, align 8
  %28 = load %struct.RString*, %struct.RString** %9, align 8
  %29 = call i8* @RSTR_PTR(%struct.RString* %28)
  %30 = load %struct.RString*, %struct.RString** %9, align 8
  %31 = call i32 @RSTR_LEN(%struct.RString* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @ISLOWER(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call signext i8 @TOUPPER(i8 signext %40)
  %42 = load i8*, i8** %6, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i64, i64* @TRUE, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %38, %25
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @ISUPPER(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call signext i8 @TOLOWER(i8 signext %57)
  %59 = load i8*, i8** %6, align 8
  store i8 %58, i8* %59, align 1
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %55, %50
  br label %45

62:                                               ; preds = %45
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %3, align 4
  br label %69

67:                                               ; preds = %62
  %68 = call i32 (...) @mrb_nil_value()
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %65, %23
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.RString* @mrb_str_ptr(i32) #1

declare dso_local i32 @mrb_str_modify_keep_ascii(i32*, %struct.RString*) #1

declare dso_local i32 @RSTR_LEN(%struct.RString*) #1

declare dso_local i8* @RSTR_PTR(%struct.RString*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i64 @ISLOWER(i8 signext) #1

declare dso_local signext i8 @TOUPPER(i8 signext) #1

declare dso_local i64 @ISUPPER(i8 signext) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
