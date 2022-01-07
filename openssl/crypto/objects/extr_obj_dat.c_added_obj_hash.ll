; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_added_obj_hash.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_added_obj_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @added_obj_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @added_obj_hash(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  switch i64 %13, label %62 [
    i64 131, label %14
    i64 128, label %48
    i64 130, label %53
    i64 129, label %58
  ]

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = shl i64 %17, 20
  store i64 %18, i64* %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %44, %14
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %23
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 3
  %39 = srem i32 %38, 24
  %40 = shl i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = xor i64 %42, %41
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %23

47:                                               ; preds = %23
  br label %63

48:                                               ; preds = %1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @OPENSSL_LH_strhash(i32 %51)
  store i64 %52, i64* %6, align 8
  br label %63

53:                                               ; preds = %1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @OPENSSL_LH_strhash(i32 %56)
  store i64 %57, i64* %6, align 8
  br label %63

58:                                               ; preds = %1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %6, align 8
  br label %63

62:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %73

63:                                               ; preds = %58, %53, %48, %47
  %64 = load i64, i64* %6, align 8
  %65 = and i64 %64, 1073741823
  store i64 %65, i64* %6, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = shl i64 %68, 30
  %70 = load i64, i64* %6, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  store i64 %72, i64* %2, align 8
  br label %73

73:                                               ; preds = %63, %62
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local i64 @OPENSSL_LH_strhash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
