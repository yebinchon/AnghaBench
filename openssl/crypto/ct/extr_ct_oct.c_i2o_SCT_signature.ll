; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_oct.c_i2o_SCT_signature.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_oct.c_i2o_SCT_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }

@CT_F_I2O_SCT_SIGNATURE = common dso_local global i32 0, align 4
@CT_R_SCT_INVALID_SIGNATURE = common dso_local global i32 0, align 4
@SCT_VERSION_V1 = common dso_local global i64 0, align 8
@CT_R_UNSUPPORTED_VERSION = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_SCT_signature(%struct.TYPE_4__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = call i32 @SCT_signature_is_complete(%struct.TYPE_4__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @CT_F_I2O_SCT_SIGNATURE, align 4
  %14 = load i32, i32* @CT_R_SCT_INVALID_SIGNATURE, align 4
  %15 = call i32 @CTerr(i32 %13, i32 %14)
  br label %86

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SCT_VERSION_V1, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @CT_F_I2O_SCT_SIGNATURE, align 4
  %24 = load i32, i32* @CT_R_UNSUPPORTED_VERSION, align 4
  %25 = call i32 @CTerr(i32 %23, i32 %24)
  br label %86

26:                                               ; preds = %16
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 4, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %83

34:                                               ; preds = %26
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %41
  store i8* %44, i8** %42, align 8
  br label %57

45:                                               ; preds = %34
  %46 = load i64, i64* %6, align 8
  %47 = call i8* @OPENSSL_malloc(i64 %46)
  store i8* %47, i8** %7, align 8
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @CT_F_I2O_SCT_SIGNATURE, align 4
  %52 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %53 = call i32 @CTerr(i32 %51, i32 %52)
  br label %86

54:                                               ; preds = %45
  %55 = load i8*, i8** %7, align 8
  %56 = load i8**, i8*** %5, align 8
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %54, %38
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  store i8 %61, i8* %62, align 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %7, align 8
  store i8 %67, i8* %68, align 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @s2n(i32 %72, i8* %73)
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @memcpy(i8* %75, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %57, %26
  %84 = load i64, i64* %6, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %89

86:                                               ; preds = %50, %22, %12
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @OPENSSL_free(i8* %87)
  store i32 -1, i32* %3, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @SCT_signature_is_complete(%struct.TYPE_4__*) #1

declare dso_local i32 @CTerr(i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @s2n(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
