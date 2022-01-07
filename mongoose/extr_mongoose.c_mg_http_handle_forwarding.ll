; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_handle_forwarding.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_handle_forwarding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { %struct.mg_str }
%struct.mg_str = type { i32 }
%struct.mg_serve_http_opts = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mg_connection*, %struct.http_message*, %struct.mg_serve_http_opts*)* @mg_http_handle_forwarding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_http_handle_forwarding(%struct.mg_connection* %0, %struct.http_message* %1, %struct.mg_serve_http_opts* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca %struct.http_message*, align 8
  %7 = alloca %struct.mg_serve_http_opts*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mg_str, align 4
  %10 = alloca %struct.mg_str, align 4
  %11 = alloca %struct.mg_str, align 4
  %12 = alloca %struct.mg_str, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store %struct.http_message* %1, %struct.http_message** %6, align 8
  store %struct.mg_serve_http_opts* %2, %struct.mg_serve_http_opts** %7, align 8
  %13 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %7, align 8
  %14 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = call i32 @MG_MK_STR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = call i32 @MG_MK_STR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %12, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %62, %3
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @mg_next_comma_list_entry(i8* %21, %struct.mg_str* %9, %struct.mg_str* %10)
  store i8* %22, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %63

24:                                               ; preds = %20
  %25 = load %struct.http_message*, %struct.http_message** %6, align 8
  %26 = getelementptr inbounds %struct.http_message, %struct.http_message* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %26, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @mg_strncmp(i32 %30, i32 %32, i32 %28)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %11, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @mg_strncmp(i32 %39, i32 %41, i32 %37)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %12, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @mg_strncmp(i32 %48, i32 %50, i32 %46)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %44, %35
  %54 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %55 = load %struct.http_message*, %struct.http_message** %6, align 8
  %56 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mg_http_reverse_proxy(%struct.mg_connection* %54, %struct.http_message* %55, i32 %57, i32 %59)
  store i32 1, i32* %4, align 4
  br label %64

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %24
  br label %20

63:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %53
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @MG_MK_STR(i8*) #1

declare dso_local i8* @mg_next_comma_list_entry(i8*, %struct.mg_str*, %struct.mg_str*) #1

declare dso_local i64 @mg_strncmp(i32, i32, i32) #1

declare dso_local i32 @mg_http_reverse_proxy(%struct.mg_connection*, %struct.http_message*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
