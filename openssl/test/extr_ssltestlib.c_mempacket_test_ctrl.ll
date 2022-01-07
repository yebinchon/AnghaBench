; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_mempacket_test_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_mempacket_test_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i8*)* @mempacket_test_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mempacket_test_ctrl(i32* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 1, i64* %9, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_5__* @BIO_get_data(i32* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %67 [
    i32 140, label %15
    i32 138, label %23
    i32 133, label %26
    i32 132, label %31
    i32 137, label %32
    i32 139, label %45
    i32 130, label %46
    i32 129, label %51
    i32 131, label %56
    i32 128, label %61
    i32 134, label %66
    i32 141, label %66
    i32 135, label %66
    i32 136, label %66
  ]

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sk_MEMPACKET_num(i32 %18)
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  br label %68

23:                                               ; preds = %4
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @BIO_get_shutdown(i32* %24)
  store i64 %25, i64* %9, align 8
  br label %68

26:                                               ; preds = %4
  %27 = load i32*, i32** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @BIO_set_shutdown(i32* %27, i32 %29)
  br label %68

31:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %68

32:                                               ; preds = %4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_6__* @sk_MEMPACKET_value(i32 %35, i32 0)
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %11, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = icmp eq %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i64 0, i64* %9, align 8
  br label %44

40:                                               ; preds = %32
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %40, %39
  br label %68

45:                                               ; preds = %4
  store i64 1, i64* %9, align 8
  br label %68

46:                                               ; preds = %4
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %68

51:                                               ; preds = %4
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %68

56:                                               ; preds = %4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %9, align 8
  br label %68

61:                                               ; preds = %4
  %62 = load i64, i64* %7, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %68

66:                                               ; preds = %4, %4, %4, %4
  br label %67

67:                                               ; preds = %4, %66
  store i64 0, i64* %9, align 8
  br label %68

68:                                               ; preds = %67, %61, %56, %51, %46, %45, %44, %31, %26, %23, %15
  %69 = load i64, i64* %9, align 8
  ret i64 %69
}

declare dso_local %struct.TYPE_5__* @BIO_get_data(i32*) #1

declare dso_local i32 @sk_MEMPACKET_num(i32) #1

declare dso_local i64 @BIO_get_shutdown(i32*) #1

declare dso_local i32 @BIO_set_shutdown(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @sk_MEMPACKET_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
