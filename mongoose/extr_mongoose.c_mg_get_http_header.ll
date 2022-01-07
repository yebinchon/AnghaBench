; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_get_http_header.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_get_http_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i64, i32* }
%struct.http_message = type { %struct.mg_str*, %struct.mg_str* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mg_str* @mg_get_http_header(%struct.http_message* %0, i8* %1) #0 {
  %3 = alloca %struct.mg_str*, align 8
  %4 = alloca %struct.http_message*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mg_str*, align 8
  %9 = alloca %struct.mg_str*, align 8
  store %struct.http_message* %0, %struct.http_message** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %53, %2
  %13 = load %struct.http_message*, %struct.http_message** %4, align 8
  %14 = getelementptr inbounds %struct.http_message, %struct.http_message* %13, i32 0, i32 1
  %15 = load %struct.mg_str*, %struct.mg_str** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %15, i64 %16
  %18 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %12
  %22 = load %struct.http_message*, %struct.http_message** %4, align 8
  %23 = getelementptr inbounds %struct.http_message, %struct.http_message* %22, i32 0, i32 1
  %24 = load %struct.mg_str*, %struct.mg_str** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %24, i64 %25
  store %struct.mg_str* %26, %struct.mg_str** %8, align 8
  %27 = load %struct.http_message*, %struct.http_message** %4, align 8
  %28 = getelementptr inbounds %struct.http_message, %struct.http_message* %27, i32 0, i32 0
  %29 = load %struct.mg_str*, %struct.mg_str** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %29, i64 %30
  store %struct.mg_str* %31, %struct.mg_str** %9, align 8
  %32 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %33 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %21
  %37 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %38 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %44 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @mg_ncasecmp(i32* %45, i8* %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = load %struct.mg_str*, %struct.mg_str** %9, align 8
  store %struct.mg_str* %51, %struct.mg_str** %3, align 8
  br label %57

52:                                               ; preds = %42, %36, %21
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %12

56:                                               ; preds = %12
  store %struct.mg_str* null, %struct.mg_str** %3, align 8
  br label %57

57:                                               ; preds = %56, %50
  %58 = load %struct.mg_str*, %struct.mg_str** %3, align 8
  ret %struct.mg_str* %58
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mg_ncasecmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
