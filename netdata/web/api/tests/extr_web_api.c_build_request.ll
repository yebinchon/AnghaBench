; ModuleID = '/home/carl/AnghaBench/netdata/web/api/tests/extr_web_api.c_build_request.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/tests/extr_web_api.c_build_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_buffer = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" HTTP/1.1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAX_HEADERS = common dso_local global i64 0, align 8
@http_headers = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.web_buffer*, i8*, i32, i64)* @build_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_request(%struct.web_buffer* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.web_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.web_buffer* %0, %struct.web_buffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load %struct.web_buffer*, %struct.web_buffer** %5, align 8
  %11 = call i32 @buffer_reset(%struct.web_buffer* %10)
  %12 = load %struct.web_buffer*, %struct.web_buffer** %5, align 8
  %13 = call i32 @buffer_strcat(%struct.web_buffer* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.web_buffer*, %struct.web_buffer** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @buffer_strcat(%struct.web_buffer* %14, i8* %15)
  %17 = load %struct.web_buffer*, %struct.web_buffer** %5, align 8
  %18 = call i32 @buffer_strcat(%struct.web_buffer* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.web_buffer*, %struct.web_buffer** %5, align 8
  %23 = call i32 @buffer_strcat(%struct.web_buffer* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %4
  %25 = load %struct.web_buffer*, %struct.web_buffer** %5, align 8
  %26 = call i32 @buffer_strcat(%struct.web_buffer* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %52, %24
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @MAX_HEADERS, align 8
  %34 = icmp ult i64 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  br i1 %36, label %37, label %55

37:                                               ; preds = %35
  %38 = load %struct.web_buffer*, %struct.web_buffer** %5, align 8
  %39 = load i8**, i8*** @http_headers, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @buffer_strcat(%struct.web_buffer* %38, i8* %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.web_buffer*, %struct.web_buffer** %5, align 8
  %48 = call i32 @buffer_strcat(%struct.web_buffer* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %37
  %50 = load %struct.web_buffer*, %struct.web_buffer** %5, align 8
  %51 = call i32 @buffer_strcat(%struct.web_buffer* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %27

55:                                               ; preds = %35
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.web_buffer*, %struct.web_buffer** %5, align 8
  %60 = call i32 @buffer_strcat(%struct.web_buffer* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.web_buffer*, %struct.web_buffer** %5, align 8
  %63 = call i32 @buffer_strcat(%struct.web_buffer* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @buffer_reset(%struct.web_buffer*) #1

declare dso_local i32 @buffer_strcat(%struct.web_buffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
