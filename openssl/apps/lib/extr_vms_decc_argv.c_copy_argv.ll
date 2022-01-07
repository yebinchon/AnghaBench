; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_vms_decc_argv.c_copy_argv.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_vms_decc_argv.c_copy_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@newargv = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [10 x i8] c"argv copy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @copy_argv(i32* %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i8**, i8*** @newargv, align 8
  store i8** %11, i8*** %8, align 8
  %12 = call i32 (...) @cleanup_argv()
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8** @app_malloc(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8** %18, i8*** @newargv, align 8
  %19 = load i8**, i8*** @newargv, align 8
  %20 = icmp eq i8** %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8** null, i8*** %3, align 8
  br label %53

22:                                               ; preds = %2
  %23 = load i8**, i8*** %8, align 8
  %24 = icmp eq i8** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @OPENSSL_atexit(i32 (...)* @cleanup_argv)
  br label %27

27:                                               ; preds = %25, %22
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** @newargv, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* %37, i8** %41, align 8
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load i8**, i8*** @newargv, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* null, i8** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i8**, i8*** @newargv, align 8
  store i8** %52, i8*** %3, align 8
  br label %53

53:                                               ; preds = %45, %21
  %54 = load i8**, i8*** %3, align 8
  ret i8** %54
}

declare dso_local i32 @cleanup_argv(...) #1

declare dso_local i8** @app_malloc(i32, i8*) #1

declare dso_local i32 @OPENSSL_atexit(i32 (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
