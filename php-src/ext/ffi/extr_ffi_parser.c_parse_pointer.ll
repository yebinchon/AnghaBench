; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_pointer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY__STAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"'*' expected, got\00", align 1
@YY_CONST = common dso_local global i32 0, align 4
@YY___CONST = common dso_local global i32 0, align 4
@YY___CONST__ = common dso_local global i32 0, align 4
@YY_RESTRICT = common dso_local global i32 0, align 4
@YY___RESTRICT = common dso_local global i32 0, align 4
@YY___RESTRICT__ = common dso_local global i32 0, align 4
@YY_VOLATILE = common dso_local global i32 0, align 4
@YY___VOLATILE = common dso_local global i32 0, align 4
@YY___VOLATILE__ = common dso_local global i32 0, align 4
@YY__ATOMIC = common dso_local global i32 0, align 4
@YY___ATTRIBUTE = common dso_local global i32 0, align 4
@YY___ATTRIBUTE__ = common dso_local global i32 0, align 4
@YY___DECLSPEC = common dso_local global i32 0, align 4
@YY___CDECL = common dso_local global i32 0, align 4
@YY___STDCALL = common dso_local global i32 0, align 4
@YY___FASTCALL = common dso_local global i32 0, align 4
@YY___THISCALL = common dso_local global i32 0, align 4
@YY___VECTORCALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\00\00\FE\07\00\00\F0\0F\00\00\00\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @parse_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pointer(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @YY__STAR, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %8, %2
  br label %12

12:                                               ; preds = %42, %11
  %13 = call i32 (...) @get_sym()
  store i32 %13, i32* %3, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @zend_ffi_make_pointer_type(i32* %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @YY_CONST, align 4
  %18 = load i32, i32* @YY___CONST, align 4
  %19 = load i32, i32* @YY___CONST__, align 4
  %20 = load i32, i32* @YY_RESTRICT, align 4
  %21 = load i32, i32* @YY___RESTRICT, align 4
  %22 = load i32, i32* @YY___RESTRICT__, align 4
  %23 = load i32, i32* @YY_VOLATILE, align 4
  %24 = load i32, i32* @YY___VOLATILE, align 4
  %25 = load i32, i32* @YY___VOLATILE__, align 4
  %26 = load i32, i32* @YY__ATOMIC, align 4
  %27 = load i32, i32* @YY___ATTRIBUTE, align 4
  %28 = load i32, i32* @YY___ATTRIBUTE__, align 4
  %29 = load i32, i32* @YY___DECLSPEC, align 4
  %30 = load i32, i32* @YY___CDECL, align 4
  %31 = load i32, i32* @YY___STDCALL, align 4
  %32 = load i32, i32* @YY___FASTCALL, align 4
  %33 = load i32, i32* @YY___THISCALL, align 4
  %34 = load i32, i32* @YY___VECTORCALL, align 4
  %35 = call i64 @YY_IN_SET(i32 %16, i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %12
  %38 = load i32, i32* %3, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @parse_type_qualifier_list(i32 %38, i32* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @YY__STAR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %12, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @zend_ffi_make_pointer_type(i32*) #1

declare dso_local i64 @YY_IN_SET(i32, i32, i8*) #1

declare dso_local i32 @parse_type_qualifier_list(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
