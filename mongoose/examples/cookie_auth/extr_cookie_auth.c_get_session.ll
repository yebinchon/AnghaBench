; ModuleID = '/home/carl/AnghaBench/mongoose/examples/cookie_auth/extr_cookie_auth.c_get_session.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/cookie_auth/extr_cookie_auth.c_get_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i64, i32 }
%struct.http_message = type { i32 }
%struct.mg_str = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@SESSION_COOKIE_NAME = common dso_local global i32 0, align 4
@NUM_SESSIONS = common dso_local global i32 0, align 4
@s_sessions = common dso_local global %struct.session* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.session* (%struct.http_message*)* @get_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.session* @get_session(%struct.http_message* %0) #0 {
  %2 = alloca %struct.http_message*, align 8
  %3 = alloca [21 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca %struct.session*, align 8
  %6 = alloca %struct.mg_str*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.http_message* %0, %struct.http_message** %2, align 8
  %9 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i64 0, i64 0
  store i8* %9, i8** %4, align 8
  store %struct.session* null, %struct.session** %5, align 8
  %10 = load %struct.http_message*, %struct.http_message** %2, align 8
  %11 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.mg_str* %11, %struct.mg_str** %6, align 8
  %12 = load %struct.mg_str*, %struct.mg_str** %6, align 8
  %13 = icmp eq %struct.mg_str* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.mg_str*, %struct.mg_str** %6, align 8
  %17 = load i32, i32* @SESSION_COOKIE_NAME, align 4
  %18 = call i32 @mg_http_parse_header2(%struct.mg_str* %16, i32 %17, i8** %4, i32 21)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %53

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strtoull(i8* %22, i32* null, i32 16)
  store i64 %23, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %49, %21
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @NUM_SESSIONS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load %struct.session*, %struct.session** @s_sessions, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.session, %struct.session* %29, i64 %31
  %33 = getelementptr inbounds %struct.session, %struct.session* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = call i32 (...) @mg_time()
  %39 = load %struct.session*, %struct.session** @s_sessions, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.session, %struct.session* %39, i64 %41
  %43 = getelementptr inbounds %struct.session, %struct.session* %42, i32 0, i32 1
  store i32 %38, i32* %43, align 8
  %44 = load %struct.session*, %struct.session** @s_sessions, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.session, %struct.session* %44, i64 %46
  store %struct.session* %47, %struct.session** %5, align 8
  br label %53

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %24

52:                                               ; preds = %24
  br label %53

53:                                               ; preds = %52, %37, %20, %14
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i64 0, i64 0
  %56 = icmp ne i8* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %57, %53
  %61 = load %struct.session*, %struct.session** %5, align 8
  ret %struct.session* %61
}

declare dso_local %struct.mg_str* @mg_get_http_header(%struct.http_message*, i8*) #1

declare dso_local i32 @mg_http_parse_header2(%struct.mg_str*, i32, i8**, i32) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @mg_time(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
