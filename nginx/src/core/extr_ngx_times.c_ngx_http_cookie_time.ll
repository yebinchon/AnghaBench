; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_times.c_ngx_http_cookie_time.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_times.c_ngx_http_cookie_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s, %02d-%s-%d %02d:%02d:%02d GMT\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s, %02d-%s-%02d %02d:%02d:%02d GMT\00", align 1
@week = common dso_local global i32* null, align 8
@months = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_http_cookie_time(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @ngx_gmtime(i32 %6, %struct.TYPE_3__* %5)
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 2037
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)
  %14 = load i32*, i32** @week, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** @months, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 2037
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  br label %38

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = srem i32 %36, 100
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %33, %31 ], [ %37, %34 ]
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @ngx_sprintf(i32* %8, i8* %13, i32 %18, i32 %20, i32 %27, i32 %39, i32 %41, i32 %43, i32 %45)
  ret i32* %46
}

declare dso_local i32 @ngx_gmtime(i32, %struct.TYPE_3__*) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
