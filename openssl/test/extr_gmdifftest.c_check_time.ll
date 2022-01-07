; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_gmdifftest.c_check_time.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_gmdifftest.c_check_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@SECS_PER_DAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @check_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_time(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm, align 4
  %5 = alloca %struct.tm, align 4
  %6 = alloca %struct.tm, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %12 = call i32 @time(i64* %10)
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %3, align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* %11, align 8
  %16 = call i32 @OPENSSL_gmtime(i64* %11, %struct.tm* %5)
  %17 = call i32 @OPENSSL_gmtime(i64* %10, %struct.tm* %4)
  %18 = bitcast %struct.tm* %6 to i8*
  %19 = bitcast %struct.tm* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 24, i1 false)
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @OPENSSL_gmtime_adj(%struct.tm* %4, i32 0, i64 %20)
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @TEST_int_eq(i32 %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @TEST_int_eq(i32 %30, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @TEST_int_eq(i32 %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @TEST_int_eq(i32 %44, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @TEST_int_eq(i32 %51, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @TEST_int_eq(i32 %58, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = call i32 @OPENSSL_gmtime_diff(i32* %7, i32* %8, %struct.tm* %6, %struct.tm* %4)
  %65 = call i32 @TEST_true(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63, %56, %49, %42, %35, %28, %1
  store i32 0, i32* %2, align 4
  br label %82

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @SECS_PER_DAY, align 8
  %72 = mul nsw i64 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @TEST_long_eq(i64 %76, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %82

81:                                               ; preds = %68
  store i32 1, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %80, %67
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @OPENSSL_gmtime(i64*, %struct.tm*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @OPENSSL_gmtime_adj(%struct.tm*, i32, i64) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @OPENSSL_gmtime_diff(i32*, i32*, %struct.tm*, %struct.tm*) #1

declare dso_local i32 @TEST_long_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
