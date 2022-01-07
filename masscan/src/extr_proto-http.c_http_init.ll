; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-http.c_http_init.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-http.c_http_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.Banner1 = type { i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@SMACK_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@http_fields = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@html_fields = common dso_local global %struct.TYPE_5__* null, align 8
@banner_http = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@http_hello = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Banner1*)* @http_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @http_init(%struct.Banner1* %0) #0 {
  %2 = alloca %struct.Banner1*, align 8
  %3 = alloca i32, align 4
  store %struct.Banner1* %0, %struct.Banner1** %2, align 8
  %4 = load i32, i32* @SMACK_CASE_INSENSITIVE, align 4
  %5 = call i8* @smack_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %7 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %6, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %45, %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @http_fields, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %8
  %17 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %18 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @http_fields, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @http_fields, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @http_fields, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @http_fields, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @smack_add_pattern(i8* %19, i64 %25, i32 %31, i32 %37, i32 %43)
  br label %45

45:                                               ; preds = %16
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %8

48:                                               ; preds = %8
  %49 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %50 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @smack_compile(i8* %51)
  %53 = load i32, i32* @SMACK_CASE_INSENSITIVE, align 4
  %54 = call i8* @smack_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %56 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %94, %48
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_fields, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %57
  %66 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %67 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_fields, align 8
  %70 = load i32, i32* %3, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_fields, align 8
  %76 = load i32, i32* %3, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_fields, align 8
  %82 = load i32, i32* %3, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_fields, align 8
  %88 = load i32, i32* %3, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @smack_add_pattern(i8* %68, i64 %74, i32 %80, i32 %86, i32 %92)
  br label %94

94:                                               ; preds = %65
  %95 = load i32, i32* %3, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %57

97:                                               ; preds = %57
  %98 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %99 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @smack_compile(i8* %100)
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @banner_http, i32 0, i32 0), align 8
  %103 = call i64 @MALLOC(i32 %102)
  store i64 %103, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @banner_http, i32 0, i32 1), align 8
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @banner_http, i32 0, i32 1), align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load i32, i32* @http_hello, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @banner_http, i32 0, i32 0), align 8
  %108 = call i32 @memcpy(i8* %105, i32 %106, i32 %107)
  %109 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %110 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  ret i8* %111
}

declare dso_local i8* @smack_create(i8*, i32) #1

declare dso_local i32 @smack_add_pattern(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @smack_compile(i8*) #1

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
