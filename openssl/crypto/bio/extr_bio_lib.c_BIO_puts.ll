; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_lib.c_BIO_puts.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_lib.c_BIO_puts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { {}* }

@BIO_F_BIO_PUTS = common dso_local global i32 0, align 4
@BIO_R_UNSUPPORTED_METHOD = common dso_local global i32 0, align 4
@BIO_CB_PUTS = common dso_local global i32 0, align 4
@BIO_R_UNINITIALIZED = common dso_local global i32 0, align 4
@BIO_CB_RETURN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@BIO_R_LENGTH_TOO_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_puts(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = icmp eq %struct.TYPE_7__* %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp eq %struct.TYPE_6__* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.TYPE_7__*, i8*)**
  %21 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %20, align 8
  %22 = icmp eq i32 (%struct.TYPE_7__*, i8*)* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %15, %10, %2
  %24 = load i32, i32* @BIO_F_BIO_PUTS, align 4
  %25 = load i32, i32* @BIO_R_UNSUPPORTED_METHOD, align 4
  %26 = call i32 @BIOerr(i32 %24, i32 %25)
  store i32 -2, i32* %3, align 4
  br label %116

27:                                               ; preds = %15
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = load i32, i32* @BIO_CB_PUTS, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @bio_call_callback(%struct.TYPE_7__* %38, i32 %39, i8* %40, i32 0, i32 0, i64 0, i32 1, i64* null)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %116

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @BIO_F_BIO_PUTS, align 4
  %55 = load i32, i32* @BIO_R_UNINITIALIZED, align 4
  %56 = call i32 @BIOerr(i32 %54, i32 %55)
  store i32 -2, i32* %3, align 4
  br label %116

57:                                               ; preds = %48
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to i32 (%struct.TYPE_7__*, i8*)**
  %63 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 %63(%struct.TYPE_7__* %64, i8* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %57
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %7, align 8
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %69, %57
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %85, %80
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = load i32, i32* @BIO_CB_PUTS, align 4
  %93 = load i32, i32* @BIO_CB_RETURN, align 4
  %94 = or i32 %92, %93
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @bio_call_callback(%struct.TYPE_7__* %91, i32 %94, i8* %95, i32 0, i32 0, i64 0, i32 %96, i64* %7)
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %90, %85
  %100 = load i32, i32* %6, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @INT_MAX, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* @BIO_F_BIO_PUTS, align 4
  %108 = load i32, i32* @BIO_R_LENGTH_TOO_LONG, align 4
  %109 = call i32 @BIOerr(i32 %107, i32 %108)
  store i32 -1, i32* %6, align 4
  br label %113

110:                                              ; preds = %102
  %111 = load i64, i64* %7, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %110, %106
  br label %114

114:                                              ; preds = %113, %99
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %53, %45, %23
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i64 @bio_call_callback(%struct.TYPE_7__*, i32, i8*, i32, i32, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
