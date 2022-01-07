; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_trace.c_trace_detach_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_trace.c_trace_detach_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Detach channel %p from category '%s'\0A\00", align 1
@trace_categories = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Detach prefix \22%s\22 from category '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Detach suffix \22%s\22 from category '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @trace_detach_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_detach_cb(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %38 [
    i32 130, label %8
    i32 129, label %18
    i32 128, label %28
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* @TRACE, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_categories, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @OSSL_TRACE2(i32 %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %16)
  br label %39

18:                                               ; preds = %3
  %19 = load i32, i32* @TRACE, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_categories, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OSSL_TRACE2(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %26)
  br label %39

28:                                               ; preds = %3
  %29 = load i32, i32* @TRACE, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_categories, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @OSSL_TRACE2(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 %36)
  br label %39

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %38, %28, %18, %8
  ret i32 1
}

declare dso_local i32 @OSSL_TRACE2(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
