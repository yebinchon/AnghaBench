; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_lib.c_bio_write_intern.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_lib.c_bio_write_intern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { {}* }

@BIO_F_BIO_WRITE_INTERN = common dso_local global i32 0, align 4
@BIO_R_UNSUPPORTED_METHOD = common dso_local global i32 0, align 4
@BIO_CB_WRITE = common dso_local global i32 0, align 4
@BIO_R_UNINITIALIZED = common dso_local global i32 0, align 4
@BIO_CB_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64, i64*)* @bio_write_intern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_write_intern(%struct.TYPE_7__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %106

14:                                               ; preds = %4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.TYPE_7__*, i8*, i64, i64*)**
  %25 = load i32 (%struct.TYPE_7__*, i8*, i64, i64*)*, i32 (%struct.TYPE_7__*, i8*, i64, i64*)** %24, align 8
  %26 = icmp eq i32 (%struct.TYPE_7__*, i8*, i64, i64*)* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19, %14
  %28 = load i32, i32* @BIO_F_BIO_WRITE_INTERN, align 4
  %29 = load i32, i32* @BIO_R_UNSUPPORTED_METHOD, align 4
  %30 = call i32 @BIOerr(i32 %28, i32 %29)
  store i32 -2, i32* %5, align 4
  br label %106

31:                                               ; preds = %19
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = load i32, i32* @BIO_CB_WRITE, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @bio_call_callback(%struct.TYPE_7__* %42, i32 %43, i8* %44, i64 %45, i32 0, i64 0, i32 1, i64* null)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %106

51:                                               ; preds = %41, %36
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @BIO_F_BIO_WRITE_INTERN, align 4
  %58 = load i32, i32* @BIO_R_UNINITIALIZED, align 4
  %59 = call i32 @BIOerr(i32 %57, i32 %58)
  store i32 -2, i32* %5, align 4
  br label %106

60:                                               ; preds = %51
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = bitcast {}** %64 to i32 (%struct.TYPE_7__*, i8*, i64, i64*)**
  %66 = load i32 (%struct.TYPE_7__*, i8*, i64, i64*)*, i32 (%struct.TYPE_7__*, i8*, i64, i64*)** %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64*, i64** %9, align 8
  %71 = call i32 %66(%struct.TYPE_7__* %67, i8* %68, i64 %69, i64* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %60
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  br label %83

83:                                               ; preds = %74, %60
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %88, %83
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = load i32, i32* @BIO_CB_WRITE, align 4
  %96 = load i32, i32* @BIO_CB_RETURN, align 4
  %97 = or i32 %95, %96
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i64*, i64** %9, align 8
  %102 = call i64 @bio_call_callback(%struct.TYPE_7__* %94, i32 %97, i8* %98, i64 %99, i32 0, i64 0, i32 %100, i64* %101)
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %93, %88
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %56, %49, %27, %13
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i64 @bio_call_callback(%struct.TYPE_7__*, i32, i8*, i64, i32, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
