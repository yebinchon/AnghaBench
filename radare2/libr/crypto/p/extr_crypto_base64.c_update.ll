; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_base64.c_update.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_base64.c_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32)* @update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 2
  %17 = sdiv i32 %16, 3
  %18 = mul nsw i32 %17, 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i8* @malloc(i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %91

25:                                               ; preds = %14
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @r_base64_encode(i8* %26, i8* %27, i32 %28)
  br label %80

30:                                               ; preds = %3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %79

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = sdiv i32 %36, 4
  %38 = mul nsw i32 %37, 3
  %39 = add nsw i32 4, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 61
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 61
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 2, i32 1
  br label %63

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62, %51
  %64 = phi i32 [ %61, %51 ], [ 0, %62 ]
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %35
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 4
  %70 = call i8* @malloc(i32 %69)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %91

74:                                               ; preds = %67
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @r_base64_decode(i8* %75, i8* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %74, %30
  br label %80

80:                                               ; preds = %79, %25
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @r_crypto_append(%struct.TYPE_4__* %84, i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %80
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @free(i8* %89)
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %73, %24
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @r_base64_encode(i8*, i8*, i32) #1

declare dso_local i32 @r_base64_decode(i8*, i8*, i32) #1

declare dso_local i32 @r_crypto_append(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
