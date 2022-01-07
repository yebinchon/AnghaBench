; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_get_http_basic_auth.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_get_http_basic_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_message = type { i32 }
%struct.mg_str = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_get_http_basic_auth(%struct.http_message* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mg_str*, align 8
  store %struct.http_message* %0, %struct.http_message** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.http_message*, %struct.http_message** %7, align 8
  %14 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.mg_str* %14, %struct.mg_str** %12, align 8
  %15 = load %struct.mg_str*, %struct.mg_str** %12, align 8
  %16 = icmp eq %struct.mg_str* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %25

18:                                               ; preds = %5
  %19 = load %struct.mg_str*, %struct.mg_str** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @mg_parse_http_basic_auth(%struct.mg_str* %19, i8* %20, i64 %21, i8* %22, i64 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local %struct.mg_str* @mg_get_http_header(%struct.http_message*, i8*) #1

declare dso_local i32 @mg_parse_http_basic_auth(%struct.mg_str*, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
