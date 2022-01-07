; ModuleID = '/home/carl/AnghaBench/openssl/crypto/buffer/extr_buffer.c_BUF_MEM_grow_clean.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/buffer/extr_buffer.c_BUF_MEM_grow_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i64, i32 }

@LIMIT_BEFORE_EXPANSION = common dso_local global i64 0, align 8
@BUF_F_BUF_MEM_GROW_CLEAN = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@BUF_MEM_FLAG_SECURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BUF_MEM_grow_clean(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %26, %27
  %29 = call i32 @memset(i8* %23, i32 0, i64 %28)
  br label %30

30:                                               ; preds = %18, %13
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %3, align 8
  br label %123

35:                                               ; preds = %2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %49, %52
  %54 = call i32 @memset(i8* %48, i32 0, i64 %53)
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* %3, align 8
  br label %123

59:                                               ; preds = %35
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @LIMIT_BEFORE_EXPANSION, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @BUF_F_BUF_MEM_GROW_CLEAN, align 4
  %65 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %66 = call i32 @BUFerr(i32 %64, i32 %65)
  store i64 0, i64* %3, align 8
  br label %123

67:                                               ; preds = %59
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 3
  %70 = udiv i64 %69, 3
  %71 = mul i64 %70, 4
  store i64 %71, i64* %7, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BUF_MEM_FLAG_SECURE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i8* @sec_alloc_realloc(%struct.TYPE_4__* %79, i64 %80)
  store i8* %81, i8** %6, align 8
  br label %91

82:                                               ; preds = %67
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i8* @OPENSSL_clear_realloc(i8* %85, i64 %88, i64 %89)
  store i8* %90, i8** %6, align 8
  br label %91

91:                                               ; preds = %82, %78
  %92 = load i8*, i8** %6, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @BUF_F_BUF_MEM_GROW_CLEAN, align 4
  %96 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %97 = call i32 @BUFerr(i32 %95, i32 %96)
  store i64 0, i64* %5, align 8
  br label %121

98:                                               ; preds = %91
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = load i64, i64* %5, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sub i64 %112, %115
  %117 = call i32 @memset(i8* %111, i32 0, i64 %116)
  %118 = load i64, i64* %5, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %98, %94
  %122 = load i64, i64* %5, align 8
  store i64 %122, i64* %3, align 8
  br label %123

123:                                              ; preds = %121, %63, %41, %30
  %124 = load i64, i64* %3, align 8
  ret i64 %124
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @BUFerr(i32, i32) #1

declare dso_local i8* @sec_alloc_realloc(%struct.TYPE_4__*, i64) #1

declare dso_local i8* @OPENSSL_clear_realloc(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
