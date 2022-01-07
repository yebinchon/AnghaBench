; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_tz.c_timelib_parse_tzfile.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_tz.c_timelib_parse_tzfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMELIB_ERROR_UNSUPPORTED_VERSION = common dso_local global i32 0, align 4
@TIMELIB_ERROR_CORRUPT_NO_64BIT_PREAMBLE = common dso_local global i32 0, align 4
@TIMELIB_TZINFO_PHP = common dso_local global i32 0, align 4
@TIMELIB_ERROR_NO_SUCH_TIMEZONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @timelib_parse_tzfile(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @seek_to_tz_position(i8** %8, i8* %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %81

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32* @timelib_tzinfo_ctor(i8* %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @read_preamble(i8** %8, i32* %21, i32* %13)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 3
  br i1 %27, label %28, label %33

28:                                               ; preds = %25, %18
  %29 = load i32, i32* @TIMELIB_ERROR_UNSUPPORTED_VERSION, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @timelib_tzinfo_dtor(i32* %31)
  store i32* null, i32** %4, align 8
  br label %86

33:                                               ; preds = %25
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @read_32bit_header(i8** %8, i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @skip_32bit_transitions(i8** %8, i32* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @skip_32bit_types(i8** %8, i32* %38)
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @skip_64bit_preamble(i8** %8, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @TIMELIB_ERROR_CORRUPT_NO_64BIT_PREAMBLE, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @timelib_tzinfo_dtor(i32* %46)
  store i32* null, i32** %4, align 8
  br label %86

48:                                               ; preds = %33
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @read_64bit_header(i8** %8, i32* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @read_64bit_transitions(i8** %8, i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @timelib_tzinfo_dtor(i32* %57)
  store i32* null, i32** %4, align 8
  br label %86

59:                                               ; preds = %48
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @read_64bit_types(i8** %8, i32* %60)
  store i32 %61, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @timelib_tzinfo_dtor(i32* %66)
  store i32* null, i32** %4, align 8
  br label %86

68:                                               ; preds = %59
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @skip_posix_string(i8** %8, i32* %69)
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @TIMELIB_TZINFO_PHP, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @read_location(i8** %8, i32* %75)
  br label %80

77:                                               ; preds = %68
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @set_default_location_and_comments(i8** %8, i32* %78)
  br label %80

80:                                               ; preds = %77, %74
  br label %84

81:                                               ; preds = %3
  %82 = load i32, i32* @TIMELIB_ERROR_NO_SUCH_TIMEZONE, align 4
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  store i32* null, i32** %9, align 8
  br label %84

84:                                               ; preds = %81, %80
  %85 = load i32*, i32** %9, align 8
  store i32* %85, i32** %4, align 8
  br label %86

86:                                               ; preds = %84, %63, %54, %43, %28
  %87 = load i32*, i32** %4, align 8
  ret i32* %87
}

declare dso_local i64 @seek_to_tz_position(i8**, i8*, i32*) #1

declare dso_local i32* @timelib_tzinfo_ctor(i8*) #1

declare dso_local i32 @read_preamble(i8**, i32*, i32*) #1

declare dso_local i32 @timelib_tzinfo_dtor(i32*) #1

declare dso_local i32 @read_32bit_header(i8**, i32*) #1

declare dso_local i32 @skip_32bit_transitions(i8**, i32*) #1

declare dso_local i32 @skip_32bit_types(i8**, i32*) #1

declare dso_local i32 @skip_64bit_preamble(i8**, i32*) #1

declare dso_local i32 @read_64bit_header(i8**, i32*) #1

declare dso_local i32 @read_64bit_transitions(i8**, i32*) #1

declare dso_local i32 @read_64bit_types(i8**, i32*) #1

declare dso_local i32 @skip_posix_string(i8**, i32*) #1

declare dso_local i32 @read_location(i8**, i32*) #1

declare dso_local i32 @set_default_location_and_comments(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
