; ModuleID = '/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_handler.c_ngx_mail_log_error.c'
source_filename = "/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_handler.c_ngx_mail_log_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_10__, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c" while %s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c", client: %V\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s, server: %V\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c" using starttls\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c", login: \22%V\22\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c", upstream: %V\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_mail_log_error(%struct.TYPE_13__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %16, i64 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 %28, %27
  store i64 %29, i64* %7, align 8
  %30 = load i32*, i32** %8, align 8
  store i32* %30, i32** %6, align 8
  br label %31

31:                                               ; preds = %15, %3
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %10, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %35, i64 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %39)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i32*, i32** %8, align 8
  store i32* %49, i32** %6, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %9, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = icmp eq %struct.TYPE_11__* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %31
  %56 = load i32*, i32** %8, align 8
  store i32* %56, i32** %4, align 8
  br label %118

57:                                               ; preds = %31
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %58, i64 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %65, i32 %68)
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = ptrtoint i32* %70 to i64
  %73 = ptrtoint i32* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 4
  %76 = load i64, i64* %7, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %7, align 8
  %78 = load i32*, i32** %8, align 8
  store i32* %78, i32** %6, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %57
  %85 = load i32*, i32** %8, align 8
  store i32* %85, i32** %4, align 8
  br label %118

86:                                               ; preds = %57
  %87 = load i32*, i32** %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %87, i64 %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_10__* %90)
  store i32* %91, i32** %8, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = load i64, i64* %7, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = load i32*, i32** %8, align 8
  store i32* %100, i32** %6, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = icmp eq %struct.TYPE_9__* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %86
  %106 = load i32*, i32** %8, align 8
  store i32* %106, i32** %4, align 8
  br label %118

107:                                              ; preds = %86
  %108 = load i32*, i32** %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %108, i64 %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_10__* %115)
  store i32* %116, i32** %8, align 8
  %117 = load i32*, i32** %8, align 8
  store i32* %117, i32** %4, align 8
  br label %118

118:                                              ; preds = %107, %105, %84, %55
  %119 = load i32*, i32** %4, align 8
  ret i32* %119
}

declare dso_local i32* @ngx_snprintf(i32*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
