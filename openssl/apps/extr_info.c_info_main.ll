; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_info.c_info_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_info.c_info_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@info_options = common dso_local global i32 0, align 4
@OPT_EOF = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPENSSL_INFO_CONFIG_DIR = common dso_local global i32 0, align 4
@OPENSSL_INFO_ENGINES_DIR = common dso_local global i32 0, align 4
@OPENSSL_INFO_MODULES_DIR = common dso_local global i32 0, align 4
@OPENSSL_INFO_DSO_EXTENSION = common dso_local global i32 0, align 4
@OPENSSL_INFO_DIR_FILENAME_SEPARATOR = common dso_local global i32 0, align 4
@OPENSSL_INFO_LIST_SEPARATOR = common dso_local global i32 0, align 4
@OPENSSL_INFO_SEED_SOURCE = common dso_local global i32 0, align 4
@OPENSSL_INFO_CPU_SETTINGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: Extra parameters given.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: Only one item allowed\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: No items chosen\0A\00", align 1
@bio_out = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @info_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = load i32, i32* @info_options, align 4
  %13 = call i8* @opt_init(i32 %10, i8** %11, i32 %12)
  store i8* %13, i8** %8, align 8
  br label %14

14:                                               ; preds = %60, %2
  %15 = call i32 (...) @opt_next()
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @OPT_EOF, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %20 [
    i32 131, label %25
    i32 136, label %28
    i32 132, label %32
    i32 129, label %36
    i32 133, label %40
    i32 134, label %44
    i32 130, label %48
    i32 128, label %52
    i32 135, label %56
  ]

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %78, %71, %64, %20
  %22 = load i32, i32* @bio_err, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @BIO_printf(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %87

25:                                               ; preds = %18
  %26 = load i32, i32* @info_options, align 4
  %27 = call i32 @opt_help(i32 %26)
  store i32 0, i32* %5, align 4
  br label %87

28:                                               ; preds = %18
  %29 = load i32, i32* @OPENSSL_INFO_CONFIG_DIR, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %60

32:                                               ; preds = %18
  %33 = load i32, i32* @OPENSSL_INFO_ENGINES_DIR, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %60

36:                                               ; preds = %18
  %37 = load i32, i32* @OPENSSL_INFO_MODULES_DIR, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %60

40:                                               ; preds = %18
  %41 = load i32, i32* @OPENSSL_INFO_DSO_EXTENSION, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %60

44:                                               ; preds = %18
  %45 = load i32, i32* @OPENSSL_INFO_DIR_FILENAME_SEPARATOR, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %60

48:                                               ; preds = %18
  %49 = load i32, i32* @OPENSSL_INFO_LIST_SEPARATOR, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %60

52:                                               ; preds = %18
  %53 = load i32, i32* @OPENSSL_INFO_SEED_SOURCE, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %60

56:                                               ; preds = %18
  %57 = load i32, i32* @OPENSSL_INFO_CPU_SETTINGS, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %52, %48, %44, %40, %36, %32, %28
  br label %14

61:                                               ; preds = %14
  %62 = call i64 (...) @opt_num_rest()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @bio_err, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @BIO_printf(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %21

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @bio_err, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @BIO_printf(i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  br label %21

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* @bio_err, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @BIO_printf(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  br label %21

82:                                               ; preds = %75
  %83 = load i32, i32* @bio_out, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i8* @OPENSSL_info(i32 %84)
  %86 = call i32 @BIO_printf(i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %82, %25, %21
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i64 @opt_num_rest(...) #1

declare dso_local i8* @OPENSSL_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
