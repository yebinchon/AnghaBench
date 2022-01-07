; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_file_not_found.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_file_not_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"/path/to/nonexistent/file.json\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"json_load_file returned non-NULL for a nonexistent file\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"json_load_file returned an invalid line number\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"json_load_file returne an invalid error message\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"unable to open /path/to/nonexistent/file.json\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"json_load_file returned an invalid error message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @file_not_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_not_found() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i8*, align 8
  %4 = call i32* @json_load_file(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 0, %struct.TYPE_3__* %2)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @fail(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @fail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @strchr(i32 %17, i8 signext 58)
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call i32 @fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = load i8*, i8** %3, align 8
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcmp(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32* @json_load_file(i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
