; ModuleID = '/home/carl/AnghaBench/php-src/ext/session/extr_session.c_strcpy_gmt.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/session/extr_session.c_strcpy_gmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i32, i32, i32, i64, i32 }

@MAX_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s, %02d %s %d %02d:%02d:%02d GMT\00", align 1
@week_days = common dso_local global i32* null, align 8
@month_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @strcpy_gmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strcpy_gmt(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tm, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @MAX_STR, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.tm* @php_gmtime_r(i32* %15, %struct.tm* %7)
  store %struct.tm* %16, %struct.tm** %8, align 8
  %17 = load %struct.tm*, %struct.tm** %8, align 8
  %18 = icmp ne %struct.tm* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 1
  store i32 1, i32* %10, align 4
  br label %53

22:                                               ; preds = %2
  %23 = trunc i64 %12 to i32
  %24 = load i32*, i32** @week_days, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** @month_names, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1900
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @slprintf(i8* %14, i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %35, i64 %38, i32 %40, i32 %42, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @memcpy(i8* %46, i8* %14, i32 %47)
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %22, %19
  %54 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %10, align 4
  switch i32 %55, label %57 [
    i32 0, label %56
    i32 1, label %56
  ]

56:                                               ; preds = %53, %53
  ret void

57:                                               ; preds = %53
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tm* @php_gmtime_r(i32*, %struct.tm*) #2

declare dso_local i32 @slprintf(i8*, i32, i8*, i32, i32, i32, i64, i32, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
