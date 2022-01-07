; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_v3nametest.c_call_run_cert.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_v3nametest.c_call_run_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_name_fn = type { i32 (i32*, i8*)*, i32 }

@name_fns = common dso_local global %struct.set_name_fn* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @call_run_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_run_cert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.set_name_fn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %7 = load %struct.set_name_fn*, %struct.set_name_fn** @name_fns, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.set_name_fn, %struct.set_name_fn* %7, i64 %9
  store %struct.set_name_fn* %10, %struct.set_name_fn** %4, align 8
  %11 = load %struct.set_name_fn*, %struct.set_name_fn** %4, align 8
  %12 = getelementptr inbounds %struct.set_name_fn, %struct.set_name_fn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @TEST_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i8**, i8*** @names, align 8
  store i8** %15, i8*** %6, align 8
  br label %16

16:                                               ; preds = %45, %1
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = call i32* (...) @make_cert()
  store i32* %21, i32** %5, align 8
  %22 = call i32 @TEST_ptr(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load %struct.set_name_fn*, %struct.set_name_fn** %4, align 8
  %26 = getelementptr inbounds %struct.set_name_fn, %struct.set_name_fn* %25, i32 0, i32 0
  %27 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %26, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 %27(i32* %28, i8* %30)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load i32*, i32** %5, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.set_name_fn*, %struct.set_name_fn** %4, align 8
  %39 = call i32 @run_cert(i32* %35, i8* %37, %struct.set_name_fn* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34, %24, %20
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @X509_free(i32* %43)
  br label %45

45:                                               ; preds = %42
  %46 = load i8**, i8*** %6, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %6, align 8
  br label %16

48:                                               ; preds = %16
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local i32 @TEST_info(i8*, i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @make_cert(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @run_cert(i32*, i8*, %struct.set_name_fn*) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
