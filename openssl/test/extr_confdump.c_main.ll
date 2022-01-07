; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_confdump.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_confdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@section_names = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @NCONF_default()
  %10 = call i32* @NCONF_new(i32 %9)
  store i32* %10, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  %13 = load i32*, i32** %7, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @NCONF_load(i32* %13, i8* %16, i64* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %12
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @collect_all_sections(i32* %20)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %33, %19
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @section_names, align 4
  %25 = call i32 @sk_OPENSSL_CSTRING_num(i32 %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* @section_names, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @sk_OPENSSL_CSTRING_value(i32 %28, i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @dump_section(i32 %30, i32* %31)
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %22

36:                                               ; preds = %22
  %37 = load i32, i32* @section_names, align 4
  %38 = call i32 @sk_OPENSSL_CSTRING_free(i32 %37)
  br label %42

39:                                               ; preds = %12, %2
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @ERR_print_errors_fp(i32 %40)
  store i32 1, i32* %3, align 4
  br label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32* @NCONF_new(i32) #1

declare dso_local i32 @NCONF_default(...) #1

declare dso_local i64 @NCONF_load(i32*, i8*, i64*) #1

declare dso_local i32 @collect_all_sections(i32*) #1

declare dso_local i32 @sk_OPENSSL_CSTRING_num(i32) #1

declare dso_local i32 @dump_section(i32, i32*) #1

declare dso_local i32 @sk_OPENSSL_CSTRING_value(i32, i32) #1

declare dso_local i32 @sk_OPENSSL_CSTRING_free(i32) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
