; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_strstr.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_strstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mg_strstr(i64 %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mg_str, align 8
  %7 = alloca %struct.mg_str, align 8
  %8 = alloca i64, align 8
  %9 = bitcast %struct.mg_str* %6 to { i64, i8* }*
  %10 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %9, i32 0, i32 1
  store i8* %1, i8** %11, align 8
  %12 = bitcast %struct.mg_str* %7 to { i64, i8* }*
  %13 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %12, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %12, i32 0, i32 1
  store i8* %3, i8** %14, align 8
  %15 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %51

21:                                               ; preds = %4
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %47, %21
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %25, %27
  %29 = icmp ule i64 %23, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @memcmp(i8* %34, i8* %36, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %5, align 8
  br label %51

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %22

50:                                               ; preds = %22
  store i8* null, i8** %5, align 8
  br label %51

51:                                               ; preds = %50, %41, %20
  %52 = load i8*, i8** %5, align 8
  ret i8* %52
}

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
