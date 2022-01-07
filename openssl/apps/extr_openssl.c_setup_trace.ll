; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_openssl.c_setup_trace.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_openssl.c_setup_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cleanup_trace = common dso_local global i32 0, align 4
@trace_data_stack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@OSSL_TRACE_CATEGORY_ALL = common dso_local global i32 0, align 4
@OSSL_TRACE_CATEGORY_NUM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"warning: unknown trace category: '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @setup_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_trace(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @cleanup_trace, align 4
  %8 = call i32 @atexit(i32 %7)
  %9 = call i32 (...) @sk_tracedata_new_null()
  store i32 %9, i32* @trace_data_stack, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i8* @OPENSSL_strdup(i8* %10)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %51

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %49, %14
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strtok(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @OSSL_trace_get_category_num(i8* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @OSSL_TRACE_CATEGORY_ALL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %33, %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @OSSL_TRACE_CATEGORY_NUM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @setup_trace_category(i32 %34)
  br label %28

36:                                               ; preds = %28
  br label %50

37:                                               ; preds = %21
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @setup_trace_category(i32 %41)
  br label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  store i8* null, i8** %4, align 8
  br label %17

50:                                               ; preds = %36, %17
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @OPENSSL_free(i8* %52)
  ret void
}

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @sk_tracedata_new_null(...) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @OSSL_trace_get_category_num(i8*) #1

declare dso_local i32 @setup_trace_category(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
