; ModuleID = '/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_read_escaped.c'
source_filename = "/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_read_escaped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*)* }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unterminated string literal in escape\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\\bfnrt/\22\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\\\08\0C\0A\0D\09/\22\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"bad escaped byte, '%c'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_escaped(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = call i32 %10(%struct.TYPE_8__* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = call i32 (%struct.TYPE_7__*, i8*, ...) @json_error(%struct.TYPE_7__* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 117
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = call i64 @read_unicode(%struct.TYPE_7__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %55

28:                                               ; preds = %23
  br label %53

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %48 [
    i32 92, label %31
    i32 98, label %31
    i32 102, label %31
    i32 110, label %31
    i32 114, label %31
    i32 116, label %31
    i32 47, label %31
    i32 34, label %31
  ]

31:                                               ; preds = %29, %29, %29, %29, %29, %29, %29, %29
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @strchr(i8* %32, i32 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %6, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.3, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @pushchar(%struct.TYPE_7__* %36, i8 signext %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %55

47:                                               ; preds = %31
  br label %52

48:                                               ; preds = %29
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (%struct.TYPE_7__*, i8*, ...) @json_error(%struct.TYPE_7__* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  store i32 -1, i32* %2, align 4
  br label %55

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %28
  br label %54

54:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %48, %46, %27, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @json_error(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i64 @read_unicode(%struct.TYPE_7__*) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i32 @pushchar(%struct.TYPE_7__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
