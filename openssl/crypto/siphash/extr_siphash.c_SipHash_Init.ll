; ModuleID = '/home/carl/AnghaBench/openssl/crypto/siphash/extr_siphash.c_SipHash_Init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/siphash/extr_siphash.c_SipHash_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i64, i64 }

@SIPHASH_D_ROUNDS = common dso_local global i32 0, align 4
@SIPHASH_C_ROUNDS = common dso_local global i32 0, align 4
@SIPHASH_MAX_DIGEST_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SipHash_Init(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @U8TO64_LE(i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 8
  %15 = call i32 @U8TO64_LE(i8* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @siphash_adjust_hash_size(i64 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @SIPHASH_D_ROUNDS, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @SIPHASH_C_ROUNDS, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = xor i64 8317987319222330741, %43
  %45 = trunc i64 %44 to i32
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = xor i64 7237128888997146477, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = xor i64 7816392313619706465, %55
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = xor i64 8387220255154660723, %61
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SIPHASH_MAX_DIGEST_SIZE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %31
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %74, 238
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %31
  ret i32 1
}

declare dso_local i32 @U8TO64_LE(i8*) #1

declare dso_local i64 @siphash_adjust_hash_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
