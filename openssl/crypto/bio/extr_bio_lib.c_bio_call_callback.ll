; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_lib.c_bio_call_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_lib.c_bio_call_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { {}*, i64 (%struct.TYPE_5__*, i32, i8*, i32, i64, i64)* }

@BIO_CB_RETURN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@BIO_CB_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32, i8*, i64, i32, i64, i64, i64*)* @bio_call_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bio_call_callback(%struct.TYPE_5__* %0, i32 %1, i8* %2, i64 %3, i32 %4, i64 %5, i64 %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64* %7, i64** %17, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i64 (%struct.TYPE_5__*, i32, i8*, i64, i32, i64, i64, i64*)**
  %23 = load i64 (%struct.TYPE_5__*, i32, i8*, i64, i32, i64, i64, i64*)*, i64 (%struct.TYPE_5__*, i32, i8*, i64, i32, i64, i64, i64*)** %22, align 8
  %24 = icmp ne i64 (%struct.TYPE_5__*, i32, i8*, i64, i32, i64, i64, i64*)* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i64 (%struct.TYPE_5__*, i32, i8*, i64, i32, i64, i64, i64*)**
  %29 = load i64 (%struct.TYPE_5__*, i32, i8*, i64, i32, i64, i64, i64*)*, i64 (%struct.TYPE_5__*, i32, i8*, i64, i32, i64, i64, i64*)** %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* %16, align 8
  %37 = load i64*, i64** %17, align 8
  %38 = call i64 %29(%struct.TYPE_5__* %30, i32 %31, i8* %32, i64 %33, i32 %34, i64 %35, i64 %36, i64* %37)
  store i64 %38, i64* %9, align 8
  br label %103

39:                                               ; preds = %8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @BIO_CB_RETURN, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %19, align 4
  %45 = call i64 @HAS_LEN_OPER(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @INT_MAX, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i64 -1, i64* %9, align 8
  br label %103

52:                                               ; preds = %47
  %53 = load i64, i64* %13, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %52, %39
  %56 = load i64, i64* %16, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @BIO_CB_RETURN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @BIO_CB_CTRL, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i64*, i64** %17, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @INT_MAX, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i64 -1, i64* %9, align 8
  br label %103

73:                                               ; preds = %67
  %74 = load i64*, i64** %17, align 8
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %16, align 8
  br label %76

76:                                               ; preds = %73, %63, %58, %55
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64 (%struct.TYPE_5__*, i32, i8*, i32, i64, i64)*, i64 (%struct.TYPE_5__*, i32, i8*, i32, i64, i64)** %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %16, align 8
  %86 = call i64 %79(%struct.TYPE_5__* %80, i32 %81, i8* %82, i32 %83, i64 %84, i64 %85)
  store i64 %86, i64* %18, align 8
  %87 = load i64, i64* %18, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %76
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @BIO_CB_RETURN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* @BIO_CB_CTRL, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i64, i64* %18, align 8
  %100 = load i64*, i64** %17, align 8
  store i64 %99, i64* %100, align 8
  store i64 1, i64* %18, align 8
  br label %101

101:                                              ; preds = %98, %94, %89, %76
  %102 = load i64, i64* %18, align 8
  store i64 %102, i64* %9, align 8
  br label %103

103:                                              ; preds = %101, %72, %51, %25
  %104 = load i64, i64* %9, align 8
  ret i64 %104
}

declare dso_local i64 @HAS_LEN_OPER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
