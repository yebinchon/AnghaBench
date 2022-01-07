; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_lib.c_bio_read_intern.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_lib.c_bio_read_intern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { {}* }

@BIO_F_BIO_READ_INTERN = common dso_local global i32 0, align 4
@BIO_R_UNSUPPORTED_METHOD = common dso_local global i32 0, align 4
@BIO_CB_READ = common dso_local global i32 0, align 4
@BIO_R_UNINITIALIZED = common dso_local global i32 0, align 4
@BIO_CB_RETURN = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64, i64*)* @bio_read_intern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_read_intern(%struct.TYPE_7__* %0, i8* %1, i64 %2, i64* %3) #0 {
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
  br i1 %12, label %26, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.TYPE_7__*, i8*, i64, i64*)**
  %24 = load i32 (%struct.TYPE_7__*, i8*, i64, i64*)*, i32 (%struct.TYPE_7__*, i8*, i64, i64*)** %23, align 8
  %25 = icmp eq i32 (%struct.TYPE_7__*, i8*, i64, i64*)* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %18, %13, %4
  %27 = load i32, i32* @BIO_F_BIO_READ_INTERN, align 4
  %28 = load i32, i32* @BIO_R_UNSUPPORTED_METHOD, align 4
  %29 = call i32 @BIOerr(i32 %27, i32 %28)
  store i32 -2, i32* %5, align 4
  br label %117

30:                                               ; preds = %18
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %35, %30
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = load i32, i32* @BIO_CB_READ, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @bio_call_callback(%struct.TYPE_7__* %41, i32 %42, i8* %43, i64 %44, i32 0, i64 0, i32 1, i64* null)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %117

50:                                               ; preds = %40, %35
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @BIO_F_BIO_READ_INTERN, align 4
  %57 = load i32, i32* @BIO_R_UNINITIALIZED, align 4
  %58 = call i32 @BIOerr(i32 %56, i32 %57)
  store i32 -2, i32* %5, align 4
  br label %117

59:                                               ; preds = %50
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = bitcast {}** %63 to i32 (%struct.TYPE_7__*, i8*, i64, i64*)**
  %65 = load i32 (%struct.TYPE_7__*, i8*, i64, i64*)*, i32 (%struct.TYPE_7__*, i8*, i64, i64*)** %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = call i32 %65(%struct.TYPE_7__* %66, i8* %67, i64 %68, i64* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %59
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %75
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 8
  br label %82

82:                                               ; preds = %73, %59
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %87, %82
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = load i32, i32* @BIO_CB_READ, align 4
  %95 = load i32, i32* @BIO_CB_RETURN, align 4
  %96 = or i32 %94, %95
  %97 = load i8*, i8** %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i64*, i64** %9, align 8
  %101 = call i64 @bio_call_callback(%struct.TYPE_7__* %93, i32 %96, i8* %97, i64 %98, i32 0, i64 0, i32 %99, i64* %100)
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %92, %87
  %104 = load i32, i32* %10, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i64*, i64** %9, align 8
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @BIO_F_BIO_READ_INTERN, align 4
  %113 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %114 = call i32 @BIOerr(i32 %112, i32 %113)
  store i32 -1, i32* %5, align 4
  br label %117

115:                                              ; preds = %106, %103
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %111, %55, %48, %26
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i64 @bio_call_callback(%struct.TYPE_7__*, i32, i8*, i64, i32, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
