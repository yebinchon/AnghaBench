; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_dump.c_escape_slashes.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_dump.c_escape_slashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"https://github.com/akheron/jansson\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"{\22url\22: \22https://github.com/akheron/jansson\22}\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"json_dumps failed to not escape slashes\00", align 1
@JSON_ESCAPE_SLASH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"{\22url\22: \22https:\\/\\/github.com\\/akheron\\/jansson\22}\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"json_dumps failed to escape slashes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @escape_slashes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @escape_slashes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = call i32* (...) @json_object()
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @json_string(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @json_object_set_new(i32* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i8* @json_dumps(i32* %7, i32 0)
  store i8* %8, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %0
  %16 = call i32 @fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @free(i8* %18)
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @JSON_ESCAPE_SLASH, align 4
  %22 = call i8* @json_dumps(i32* %20, i32 %21)
  store i8* %22, i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %17
  %30 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @json_decref(i32* %34)
  ret void
}

declare dso_local i32* @json_object(...) #1

declare dso_local i32 @json_object_set_new(i32*, i8*, i32) #1

declare dso_local i32 @json_string(i8*) #1

declare dso_local i8* @json_dumps(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
