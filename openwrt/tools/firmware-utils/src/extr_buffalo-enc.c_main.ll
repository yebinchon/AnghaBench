; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_buffalo-enc.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_buffalo-enc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"adi:m:o:hlp:v:k:O:r:s:S:\00", align 1
@do_decrypt = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@ifname = common dso_local global i8* null, align 8
@longstate = common dso_local global i32 0, align 4
@magic = common dso_local global i8* null, align 8
@ofname = common dso_local global i8* null, align 8
@product = common dso_local global i8* null, align 8
@version = common dso_local global i8* null, align 8
@crypt_key = common dso_local global i8* null, align 8
@seed = common dso_local global i8* null, align 8
@offset = common dso_local global i8* null, align 8
@size = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @basename(i8* %12)
  store i32 %13, i32* @progname, align 4
  br label %14

14:                                               ; preds = %2, %52
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %53

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %49 [
    i32 100, label %23
    i32 105, label %24
    i32 108, label %26
    i32 109, label %27
    i32 111, label %29
    i32 112, label %31
    i32 118, label %33
    i32 107, label %35
    i32 115, label %37
    i32 79, label %40
    i32 83, label %43
    i32 104, label %46
  ]

23:                                               ; preds = %21
  store i32 1, i32* @do_decrypt, align 4
  br label %52

24:                                               ; preds = %21
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** @ifname, align 8
  br label %52

26:                                               ; preds = %21
  store i32 1, i32* @longstate, align 4
  br label %52

27:                                               ; preds = %21
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** @magic, align 8
  br label %52

29:                                               ; preds = %21
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** @ofname, align 8
  br label %52

31:                                               ; preds = %21
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** @product, align 8
  br label %52

33:                                               ; preds = %21
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** @version, align 8
  br label %52

35:                                               ; preds = %21
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** @crypt_key, align 8
  br label %52

37:                                               ; preds = %21
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i8* @strtoul(i8* %38, i32* null, i32 16)
  store i8* %39, i8** @seed, align 8
  br label %52

40:                                               ; preds = %21
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i8* @strtoul(i8* %41, i32* null, i32 0)
  store i8* %42, i8** @offset, align 8
  br label %52

43:                                               ; preds = %21
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i8* @strtoul(i8* %44, i32* null, i32 0)
  store i8* %45, i8** @size, align 8
  br label %52

46:                                               ; preds = %21
  %47 = load i32, i32* @EXIT_SUCCESS, align 4
  %48 = call i32 @usage(i32 %47)
  br label %52

49:                                               ; preds = %21
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  %51 = call i32 @usage(i32 %50)
  br label %52

52:                                               ; preds = %49, %46, %43, %40, %37, %35, %33, %31, %29, %27, %26, %24, %23
  br label %14

53:                                               ; preds = %20
  %54 = call i32 (...) @check_params()
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %71

58:                                               ; preds = %53
  %59 = load i32, i32* @do_decrypt, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (...) @decrypt_file()
  store i32 %62, i32* %7, align 4
  br label %65

63:                                               ; preds = %58
  %64 = call i32 (...) @encrypt_file()
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %68, %57
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @check_params(...) #1

declare dso_local i32 @decrypt_file(...) #1

declare dso_local i32 @encrypt_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
