; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_digest_test_parse.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_digest_test_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Count\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Ncopy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i8*)* @digest_test_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digest_test_parse(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @evp_test_buffer_append(i8* %16, i32* %18)
  store i32 %19, i32* %4, align 4
  br label %52

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = call i32 @parse_bin(i8* %25, i32* %27, i32* %29)
  store i32 %30, i32* %4, align 4
  br label %52

31:                                               ; preds = %20
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @evp_test_buffer_set_count(i8* %36, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %52

41:                                               ; preds = %31
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @evp_test_buffer_ncopy(i8* %46, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %45, %35, %24, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @evp_test_buffer_append(i8*, i32*) #1

declare dso_local i32 @parse_bin(i8*, i32*, i32*) #1

declare dso_local i32 @evp_test_buffer_set_count(i8*, i32) #1

declare dso_local i32 @evp_test_buffer_ncopy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
