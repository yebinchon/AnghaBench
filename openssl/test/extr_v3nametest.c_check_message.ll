; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_v3nametest.c_check_message.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_v3nametest.c_check_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_name_fn = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s: %s: [%s] %s [%s]\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"matches\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"does not match\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.set_name_fn*, i8*, i8*, i32, i8*)* @check_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_message(%struct.set_name_fn* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.set_name_fn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [1024 x i8], align 16
  store %struct.set_name_fn* %0, %struct.set_name_fn** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %36

16:                                               ; preds = %5
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %18 = load %struct.set_name_fn*, %struct.set_name_fn** %7, align 8
  %19 = getelementptr inbounds %struct.set_name_fn, %struct.set_name_fn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @BIO_snprintf(i8* %17, i32 1024, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21, i8* %22, i8* %26, i8* %27)
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %30 = call i64 @is_exception(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %36

33:                                               ; preds = %16
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %35 = call i32 @TEST_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %32, %15
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @is_exception(i8*) #1

declare dso_local i32 @TEST_error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
