; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_cookies.c_cookies_lavf.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_cookies.c_cookies_lavf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.cookie_list_type = type { %struct.cookie_list_type*, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s=%s; path=%s; domain=%s; %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"secure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cookies_lavf(i8* %0, %struct.mp_log* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cookie_list_type*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.mp_log* %1, %struct.mp_log** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = call i8* @talloc_new(i32* null)
  store i8* %10, i8** %7, align 8
  store %struct.cookie_list_type* null, %struct.cookie_list_type** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call %struct.cookie_list_type* @load_cookies_from(i8* %20, %struct.mp_log* %21, i8* %22)
  store %struct.cookie_list_type* %23, %struct.cookie_list_type** %8, align 8
  br label %24

24:                                               ; preds = %19, %13, %3
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @talloc_strdup(i8* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %30, %24
  %28 = load %struct.cookie_list_type*, %struct.cookie_list_type** %8, align 8
  %29 = icmp ne %struct.cookie_list_type* %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.cookie_list_type*, %struct.cookie_list_type** %8, align 8
  %33 = getelementptr inbounds %struct.cookie_list_type, %struct.cookie_list_type* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cookie_list_type*, %struct.cookie_list_type** %8, align 8
  %36 = getelementptr inbounds %struct.cookie_list_type, %struct.cookie_list_type* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cookie_list_type*, %struct.cookie_list_type** %8, align 8
  %39 = getelementptr inbounds %struct.cookie_list_type, %struct.cookie_list_type* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cookie_list_type*, %struct.cookie_list_type** %8, align 8
  %42 = getelementptr inbounds %struct.cookie_list_type, %struct.cookie_list_type* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cookie_list_type*, %struct.cookie_list_type** %8, align 8
  %45 = getelementptr inbounds %struct.cookie_list_type, %struct.cookie_list_type* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %50 = call i8* @talloc_asprintf_append_buffer(i8* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %40, i32 %43, i8* %49)
  store i8* %50, i8** %9, align 8
  %51 = load %struct.cookie_list_type*, %struct.cookie_list_type** %8, align 8
  %52 = getelementptr inbounds %struct.cookie_list_type, %struct.cookie_list_type* %51, i32 0, i32 0
  %53 = load %struct.cookie_list_type*, %struct.cookie_list_type** %52, align 8
  store %struct.cookie_list_type* %53, %struct.cookie_list_type** %8, align 8
  br label %27

54:                                               ; preds = %27
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @talloc_free(i8* %55)
  %57 = load i8*, i8** %9, align 8
  ret i8* %57
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local %struct.cookie_list_type* @load_cookies_from(i8*, %struct.mp_log*, i8*) #1

declare dso_local i8* @talloc_strdup(i8*, i8*) #1

declare dso_local i8* @talloc_asprintf_append_buffer(i8*, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
