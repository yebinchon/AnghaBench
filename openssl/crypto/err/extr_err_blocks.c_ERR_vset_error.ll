; ModuleID = '/home/carl/AnghaBench/openssl/crypto/err/extr_err_blocks.c_ERR_vset_error.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/err/extr_err_blocks.c_ERR_vset_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8**, i64*, i64* }

@ERR_MAX_DATA_SIZE = common dso_local global i64 0, align 8
@ERR_TXT_MALLOCED = common dso_local global i64 0, align 8
@ERR_TXT_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ERR_vset_error(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %16 = call %struct.TYPE_6__* (...) @err_get_state_int()
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %121

20:                                               ; preds = %4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %97

26:                                               ; preds = %20
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  store i8* null, i8** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @ERR_MAX_DATA_SIZE, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %26
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* @ERR_MAX_DATA_SIZE, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i8* @OPENSSL_realloc(i8* %53, i32 %55)
  store i8* %56, i8** %15, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i8*, i8** %15, align 8
  store i8* %59, i8** %10, align 8
  %60 = load i64, i64* @ERR_MAX_DATA_SIZE, align 8
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %58, %52, %26
  %62 = load i8*, i8** %10, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @BIO_vsnprintf(i8* %65, i64 %66, i8* %67, i32 %68)
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i8* @OPENSSL_realloc(i8* %79, i32 %81)
  store i8* %82, i8** %15, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load i8*, i8** %15, align 8
  store i8* %85, i8** %10, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %11, align 8
  br label %89

89:                                               ; preds = %84, %74
  %90 = load i8*, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i64, i64* @ERR_TXT_MALLOCED, align 8
  %94 = load i64, i64* @ERR_TXT_STRING, align 8
  %95 = or i64 %93, %94
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %92, %89
  br label %97

97:                                               ; preds = %96, %20
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @err_clear_data(%struct.TYPE_6__* %98, i64 %101, i32 0)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @err_set_error(%struct.TYPE_6__* %103, i64 %106, i32 %107, i32 %108)
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %97
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @err_set_data(%struct.TYPE_6__* %113, i64 %116, i8* %117, i64 %118, i64 %119)
  br label %121

121:                                              ; preds = %19, %112, %97
  ret void
}

declare dso_local %struct.TYPE_6__* @err_get_state_int(...) #1

declare dso_local i8* @OPENSSL_realloc(i8*, i32) #1

declare dso_local i32 @BIO_vsnprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @err_clear_data(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @err_set_error(%struct.TYPE_6__*, i64, i32, i32) #1

declare dso_local i32 @err_set_data(%struct.TYPE_6__*, i64, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
