; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-coap.c_test_is_link.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-coap.c_test_is_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CoapLink = type { i64, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"[-] proto-coap failed at line number %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.CoapLink*, i64, i32)* @test_is_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_is_link(i8* %0, i8* %1, %struct.CoapLink* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.CoapLink*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.CoapLink* %2, %struct.CoapLink** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %13, align 8
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %14, align 8
  store i64 0, i64* %12, align 8
  br label %19

19:                                               ; preds = %48, %5
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load i64, i64* %13, align 8
  %25 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %25, i64 %26
  %28 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %48

32:                                               ; preds = %23
  %33 = load i8*, i8** %14, align 8
  %34 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %34, i64 %35
  %37 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %33, i64 %39
  store i8* %40, i8** %15, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @memcmp(i8* %41, i8* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %48

47:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %55

48:                                               ; preds = %46, %31
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %12, align 8
  br label %19

51:                                               ; preds = %19
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
