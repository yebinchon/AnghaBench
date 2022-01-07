; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asn1_encode_test.c_do_decode.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asn1_encode_test.c_do_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)*, %struct.TYPE_10__* (i32*, i8**, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_10__*, i64, %struct.TYPE_9__*)* @do_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_decode(i8* %0, i64 %1, %struct.TYPE_10__* %2, i64 %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %12, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__* (i32*, i8**, i64)*, %struct.TYPE_10__* (i32*, i8**, i64)** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.TYPE_10__* %17(i32* null, i8** %6, i64 %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %11, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  store i32 1, i32* %13, align 4
  %28 = call i32 (...) @ERR_clear_error()
  br label %30

29:                                               ; preds = %22
  store i32 -1, i32* %13, align 4
  br label %30

30:                                               ; preds = %29, %27
  br label %46

31:                                               ; preds = %5
  %32 = load i8*, i8** %12, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @memcmp(%struct.TYPE_10__* %38, %struct.TYPE_10__* %39, i64 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %13, align 4
  br label %45

44:                                               ; preds = %37, %31
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = call i32 %49(%struct.TYPE_10__* %50)
  %52 = load i32, i32* %13, align 4
  ret i32 %52
}

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i64 @memcmp(%struct.TYPE_10__*, %struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
