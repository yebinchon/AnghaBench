; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_e_chacha20_poly1305.c_chacha_init_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_e_chacha20_poly1305.c_chacha_init_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8** }

@CHACHA_KEY_SIZE = common dso_local global i32 0, align 4
@CHACHA_CTR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32)* @chacha_init_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha_init_key(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @CHACHA_KEY_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* @CHACHA_CTR_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.TYPE_5__* @data(i32* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @CHACHA_KEY_SIZE, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = call i8* @CHACHA_U8TOU32(i8* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = udiv i32 %34, 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  store i8* %29, i8** %37, align 8
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %10, align 4
  %40 = add i32 %39, 4
  store i32 %40, i32* %10, align 4
  br label %20

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @CHACHA_CTR_SIZE, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = call i8* @CHACHA_U8TOU32(i8* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = udiv i32 %59, 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  store i8* %55, i8** %62, align 8
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %10, align 4
  %65 = add i32 %64, 4
  store i32 %65, i32* %10, align 4
  br label %46

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66, %42
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  ret i32 1
}

declare dso_local %struct.TYPE_5__* @data(i32*) #1

declare dso_local i8* @CHACHA_U8TOU32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
