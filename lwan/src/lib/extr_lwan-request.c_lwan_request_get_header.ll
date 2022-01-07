; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_lwan_request_get_header.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_lwan_request_get_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8** }

@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@HEADER_TERMINATOR_LEN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lwan_request_get_header(%struct.lwan_request* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lwan_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @snprintf(i8* %11, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 64
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i1 [ true, %2 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @UNLIKELY(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i8* null, i8** %3, align 8
  br label %87

25:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %83, %25
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %29 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %27, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %26
  %35 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %36 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %9, align 8
  %43 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %44 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** @HEADER_TERMINATOR_LEN, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @UNLIKELY(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %34
  br label %83

69:                                               ; preds = %34
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = call i32 @strncasecmp(i8* %70, i8* %71, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %69
  %77 = load i8*, i8** %10, align 8
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8* %81, i8** %3, align 8
  br label %87

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %68
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %26

86:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %87

87:                                               ; preds = %86, %76, %24
  %88 = load i8*, i8** %3, align 8
  ret i8* %88
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
