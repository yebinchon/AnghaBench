; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_lib.c_rand_pool_add.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_lib.c_rand_pool_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i8*, i64, i64 }

@RAND_F_RAND_POOL_ADD = common dso_local global i32 0, align 4
@RAND_R_ENTROPY_INPUT_TOO_LONG = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rand_pool_add(%struct.TYPE_4__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  %18 = icmp ugt i64 %10, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @RAND_F_RAND_POOL_ADD, align 4
  %21 = load i32, i32* @RAND_R_ENTROPY_INPUT_TOO_LONG, align 4
  %22 = call i32 @RANDerr(i32 %20, i32 %21)
  store i32 0, i32* %5, align 4
  br label %85

23:                                               ; preds = %4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @RAND_F_RAND_POOL_ADD, align 4
  %30 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %31 = call i32 @RANDerr(i32 %29, i32 %30)
  store i32 0, i32* %5, align 4
  br label %85

32:                                               ; preds = %23
  %33 = load i64, i64* %8, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8*, i8** %7, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @RAND_F_RAND_POOL_ADD, align 4
  %55 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %56 = call i32 @RANDerr(i32 %54, i32 %55)
  store i32 0, i32* %5, align 4
  br label %85

57:                                               ; preds = %43, %35
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @rand_pool_grow(%struct.TYPE_4__* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %85

63:                                               ; preds = %57
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @memcpy(i8* %70, i8* %71, i64 %72)
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %79
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %63, %32
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %62, %53, %28, %19
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local i32 @rand_pool_grow(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
