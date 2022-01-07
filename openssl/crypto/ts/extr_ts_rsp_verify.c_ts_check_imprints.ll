; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_verify.c_ts_check_imprints.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_verify.c_ts_check_imprints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }

@V_ASN1_NULL = common dso_local global i64 0, align 8
@TS_F_TS_CHECK_IMPRINTS = common dso_local global i32 0, align 4
@TS_R_MESSAGE_IMPRINT_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32, %struct.TYPE_7__*)* @ts_check_imprints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_check_imprints(%struct.TYPE_6__* %0, i8* %1, i32 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %56

20:                                               ; preds = %4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @OBJ_cmp(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %76

30:                                               ; preds = %20
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @ASN1_TYPE_get(i64 %38)
  %40 = load i64, i64* @V_ASN1_NULL, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @ASN1_TYPE_get(i64 %50)
  %52 = load i64, i64* @V_ASN1_NULL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47, %35
  br label %76

55:                                               ; preds = %47, %42
  br label %56

56:                                               ; preds = %55, %4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @ASN1_STRING_length(i32 %60)
  %62 = trunc i64 %61 to i32
  %63 = icmp eq i32 %57, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ASN1_STRING_get0_data(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @memcmp(i8* %65, i32 %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br label %73

73:                                               ; preds = %64, %56
  %74 = phi i1 [ false, %56 ], [ %72, %64 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %73, %54, %29
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @TS_F_TS_CHECK_IMPRINTS, align 4
  %81 = load i32, i32* @TS_R_MESSAGE_IMPRINT_MISMATCH, align 4
  %82 = call i32 @TSerr(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %11, align 4
  ret i32 %84
}

declare dso_local i64 @OBJ_cmp(i32, i32) #1

declare dso_local i64 @ASN1_TYPE_get(i64) #1

declare dso_local i64 @ASN1_STRING_length(i32) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @ASN1_STRING_get0_data(i32) #1

declare dso_local i32 @TSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
