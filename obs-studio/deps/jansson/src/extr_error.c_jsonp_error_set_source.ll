; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_error.c_jsonp_error_set_source.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_error.c_jsonp_error_set_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@JSON_ERROR_SOURCE_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsonp_error_set_source(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %48

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @JSON_ERROR_SOURCE_LENGTH, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  %26 = call i32 @strncpy(i64 %22, i8* %23, i64 %25)
  br label %48

27:                                               ; preds = %13
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @JSON_ERROR_SOURCE_LENGTH, align 8
  %30 = sub i64 %28, %29
  %31 = add i64 %30, 4
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @strncpy(i64 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 3)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 3
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %43, %44
  %46 = add i64 %45, 1
  %47 = call i32 @strncpy(i64 %39, i8* %42, i64 %46)
  br label %48

48:                                               ; preds = %12, %27, %19
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
