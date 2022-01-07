; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_hash.c_drbg_hash_generate.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_hash.c_drbg_hash_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i64, i8*, i64)* @drbg_hash_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbg_hash_generate(%struct.TYPE_10__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca [4 x i8], align 1
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %11, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = ashr i32 %20, 24
  %22 = and i32 %21, 255
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  store i8 %23, i8* %24, align 1
  %25 = load i32, i32* %13, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 1
  store i8 %28, i8* %29, align 1
  %30 = load i32, i32* %13, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 2
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %13, align 4
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 3
  store i8 %37, i8* %38, align 1
  %39 = load i8*, i8** %9, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %5
  %42 = load i64, i64* %10, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @add_hash_to_v(%struct.TYPE_10__* %45, i32 2, i8* %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %44, %41, %5
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @hash_gen(%struct.TYPE_10__* %51, i8* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = call i64 @add_hash_to_v(%struct.TYPE_10__* %57, i32 3, i8* null, i64 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @add_bytes(%struct.TYPE_10__* %61, i32 %64, i8* %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %60
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %79 = call i64 @add_bytes(%struct.TYPE_10__* %74, i32 %77, i8* %78, i32 4)
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %73, %60, %56, %50, %44
  %82 = phi i1 [ false, %60 ], [ false, %56 ], [ false, %50 ], [ false, %44 ], [ %80, %73 ]
  %83 = zext i1 %82 to i32
  ret i32 %83
}

declare dso_local i64 @add_hash_to_v(%struct.TYPE_10__*, i32, i8*, i64) #1

declare dso_local i64 @hash_gen(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i64 @add_bytes(%struct.TYPE_10__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
