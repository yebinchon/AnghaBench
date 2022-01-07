; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_cookies.c_load_cookies_from.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_cookies.c_load_cookies_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cookie_list_type = type { i32, %struct.cookie_list_type*, i8*, i8*, i8*, i8* }
%struct.mp_log = type { i32 }

@cookie_list_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cookie_list_type* (i8*, %struct.mp_log*, i8*)* @load_cookies_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cookie_list_type* @load_cookies_from(i8* %0, %struct.mp_log* %1, i8* %2) #0 {
  %4 = alloca %struct.cookie_list_type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mp_log*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cookie_list_type*, align 8
  %12 = alloca [7 x i8*], align 16
  %13 = alloca %struct.cookie_list_type*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.mp_log* %1, %struct.mp_log** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @load_file(%struct.mp_log* %14, i8* %15, i32* %10)
  store i8* %16, i8** %9, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.cookie_list_type* null, %struct.cookie_list_type** %4, align 8
  br label %82

20:                                               ; preds = %3
  store %struct.cookie_list_type* null, %struct.cookie_list_type** %11, align 8
  br label %21

21:                                               ; preds = %77, %20
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %21
  %26 = getelementptr inbounds [7 x i8*], [7 x i8*]* %12, i64 0, i64 0
  %27 = call i64 @parse_line(i8** %8, i8** %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %77

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @cookie_list_t, align 4
  %32 = call %struct.cookie_list_type* @talloc_zero(i8* %30, i32 %31)
  store %struct.cookie_list_type* %32, %struct.cookie_list_type** %13, align 8
  %33 = load %struct.cookie_list_type*, %struct.cookie_list_type** %13, align 8
  %34 = getelementptr inbounds [7 x i8*], [7 x i8*]* %12, i64 0, i64 5
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @col_dup(%struct.cookie_list_type* %33, i8* %35)
  %37 = load %struct.cookie_list_type*, %struct.cookie_list_type** %13, align 8
  %38 = getelementptr inbounds %struct.cookie_list_type, %struct.cookie_list_type* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load %struct.cookie_list_type*, %struct.cookie_list_type** %13, align 8
  %40 = getelementptr inbounds [7 x i8*], [7 x i8*]* %12, i64 0, i64 6
  %41 = load i8*, i8** %40, align 16
  %42 = call i8* @col_dup(%struct.cookie_list_type* %39, i8* %41)
  %43 = load %struct.cookie_list_type*, %struct.cookie_list_type** %13, align 8
  %44 = getelementptr inbounds %struct.cookie_list_type, %struct.cookie_list_type* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.cookie_list_type*, %struct.cookie_list_type** %13, align 8
  %46 = getelementptr inbounds [7 x i8*], [7 x i8*]* %12, i64 0, i64 2
  %47 = load i8*, i8** %46, align 16
  %48 = call i8* @col_dup(%struct.cookie_list_type* %45, i8* %47)
  %49 = load %struct.cookie_list_type*, %struct.cookie_list_type** %13, align 8
  %50 = getelementptr inbounds %struct.cookie_list_type, %struct.cookie_list_type* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.cookie_list_type*, %struct.cookie_list_type** %13, align 8
  %52 = getelementptr inbounds [7 x i8*], [7 x i8*]* %12, i64 0, i64 0
  %53 = load i8*, i8** %52, align 16
  %54 = call i8* @col_dup(%struct.cookie_list_type* %51, i8* %53)
  %55 = load %struct.cookie_list_type*, %struct.cookie_list_type** %13, align 8
  %56 = getelementptr inbounds %struct.cookie_list_type, %struct.cookie_list_type* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = getelementptr inbounds [7 x i8*], [7 x i8*]* %12, i64 0, i64 3
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 116
  br i1 %61, label %68, label %62

62:                                               ; preds = %29
  %63 = getelementptr inbounds [7 x i8*], [7 x i8*]* %12, i64 0, i64 3
  %64 = load i8*, i8** %63, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 84
  br label %68

68:                                               ; preds = %62, %29
  %69 = phi i1 [ true, %29 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = load %struct.cookie_list_type*, %struct.cookie_list_type** %13, align 8
  %72 = getelementptr inbounds %struct.cookie_list_type, %struct.cookie_list_type* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.cookie_list_type*, %struct.cookie_list_type** %11, align 8
  %74 = load %struct.cookie_list_type*, %struct.cookie_list_type** %13, align 8
  %75 = getelementptr inbounds %struct.cookie_list_type, %struct.cookie_list_type* %74, i32 0, i32 1
  store %struct.cookie_list_type* %73, %struct.cookie_list_type** %75, align 8
  %76 = load %struct.cookie_list_type*, %struct.cookie_list_type** %13, align 8
  store %struct.cookie_list_type* %76, %struct.cookie_list_type** %11, align 8
  br label %77

77:                                               ; preds = %68, %25
  br label %21

78:                                               ; preds = %21
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load %struct.cookie_list_type*, %struct.cookie_list_type** %11, align 8
  store %struct.cookie_list_type* %81, %struct.cookie_list_type** %4, align 8
  br label %82

82:                                               ; preds = %78, %19
  %83 = load %struct.cookie_list_type*, %struct.cookie_list_type** %4, align 8
  ret %struct.cookie_list_type* %83
}

declare dso_local i8* @load_file(%struct.mp_log*, i8*, i32*) #1

declare dso_local i64 @parse_line(i8**, i8**) #1

declare dso_local %struct.cookie_list_type* @talloc_zero(i8*, i32) #1

declare dso_local i8* @col_dup(%struct.cookie_list_type*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
