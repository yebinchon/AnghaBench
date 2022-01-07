; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_rfc1867.c_multipart_buffer_new.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_rfc1867.c_multipart_buffer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i8*, i32*, i64, i32*, i64, i32, i32 }

@FILLUNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\0A--%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i8*, i32)* @multipart_buffer_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @multipart_buffer_new(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i64 @ecalloc(i32 1, i32 64)
  %8 = inttoptr i64 %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 6
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @FILLUNIT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @FILLUNIT, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i64 @ecalloc(i32 1, i32 %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 9
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @spprintf(i32* %27, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @spprintf(i32* %31, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 7
  store i64 0, i64* %43, align 8
  %44 = call i64 (...) @php_rfc1867_encoding_translation()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %16
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 5
  %51 = call i32 @php_rfc1867_get_detect_order(i32** %48, i64* %50)
  br label %57

52:                                               ; preds = %16
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 6
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %52, %46
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  ret %struct.TYPE_3__* %60
}

declare dso_local i64 @ecalloc(i32, i32) #1

declare dso_local i64 @spprintf(i32*, i32, i8*, i8*) #1

declare dso_local i64 @php_rfc1867_encoding_translation(...) #1

declare dso_local i32 @php_rfc1867_get_detect_order(i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
