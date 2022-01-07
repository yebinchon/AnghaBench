; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_lib.c_BIO_gets.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_lib.c_BIO_gets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { {}* }

@BIO_F_BIO_GETS = common dso_local global i32 0, align 4
@BIO_R_UNSUPPORTED_METHOD = common dso_local global i32 0, align 4
@BIO_R_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@BIO_CB_GETS = common dso_local global i32 0, align 4
@BIO_R_UNINITIALIZED = common dso_local global i32 0, align 4
@BIO_CB_RETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_gets(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.TYPE_7__*, i8*, i32)**
  %23 = load i32 (%struct.TYPE_7__*, i8*, i32)*, i32 (%struct.TYPE_7__*, i8*, i32)** %22, align 8
  %24 = icmp eq i32 (%struct.TYPE_7__*, i8*, i32)* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %17, %12, %3
  %26 = load i32, i32* @BIO_F_BIO_GETS, align 4
  %27 = load i32, i32* @BIO_R_UNSUPPORTED_METHOD, align 4
  %28 = call i32 @BIOerr(i32 %26, i32 %27)
  store i32 -2, i32* %4, align 4
  br label %118

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @BIO_F_BIO_GETS, align 4
  %34 = load i32, i32* @BIO_R_INVALID_ARGUMENT, align 4
  %35 = call i32 @BIOerr(i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %118

36:                                               ; preds = %29
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %41, %36
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = load i32, i32* @BIO_CB_GETS, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @bio_call_callback(%struct.TYPE_7__* %47, i32 %48, i8* %49, i32 %50, i32 0, i64 0, i32 1, i64* null)
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %118

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %41
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @BIO_F_BIO_GETS, align 4
  %65 = load i32, i32* @BIO_R_UNINITIALIZED, align 4
  %66 = call i32 @BIOerr(i32 %64, i32 %65)
  store i32 -2, i32* %4, align 4
  br label %118

67:                                               ; preds = %58
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = bitcast {}** %71 to i32 (%struct.TYPE_7__*, i8*, i32)**
  %73 = load i32 (%struct.TYPE_7__*, i8*, i32)*, i32 (%struct.TYPE_7__*, i8*, i32)** %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 %73(%struct.TYPE_7__* %74, i8* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %9, align 8
  store i32 1, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %67
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %88, %83
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = load i32, i32* @BIO_CB_GETS, align 4
  %96 = load i32, i32* @BIO_CB_RETURN, align 4
  %97 = or i32 %95, %96
  %98 = load i8*, i8** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i64 @bio_call_callback(%struct.TYPE_7__* %94, i32 %97, i8* %98, i32 %99, i32 0, i64 0, i32 %100, i64* %9)
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %93, %88
  %104 = load i32, i32* %8, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i64, i64* %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp ugt i64 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 -1, i32* %8, align 4
  br label %115

112:                                              ; preds = %106
  %113 = load i64, i64* %9, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %112, %111
  br label %116

116:                                              ; preds = %115, %103
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %63, %55, %32, %25
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i64 @bio_call_callback(%struct.TYPE_7__*, i32, i8*, i32, i32, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
