; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_hash.c_add_bytes.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_hash.c_add_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i64)* @add_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_bytes(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i8 0, i8* %12, align 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 1
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  %20 = icmp uge i64 %19, 1
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ule i64 %22, %26
  br label %28

28:                                               ; preds = %21, %18, %4
  %29 = phi i1 [ false, %18 ], [ false, %4 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %11, align 8
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %65, %28
  %45 = load i64, i64* %9, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  %48 = load i8*, i8** %13, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %50, %53
  %55 = load i8, i8* %12, align 1
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 8
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %12, align 1
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %13, align 8
  store i8 %63, i8* %64, align 1
  br label %65

65:                                               ; preds = %47
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %9, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %69, i8** %13, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8* %71, i8** %11, align 8
  br label %44

72:                                               ; preds = %44
  %73 = load i8, i8* %12, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %72
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %8, align 8
  %82 = sub i64 %80, %81
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %98, %76
  %84 = load i64, i64* %9, align 8
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load i8*, i8** %13, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %89, 1
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  %92 = load i8*, i8** %13, align 8
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %103

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %99, -1
  store i64 %100, i64* %9, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 -1
  store i8* %102, i8** %13, align 8
  br label %83

103:                                              ; preds = %96, %83
  br label %104

104:                                              ; preds = %103, %72
  ret i32 1
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
