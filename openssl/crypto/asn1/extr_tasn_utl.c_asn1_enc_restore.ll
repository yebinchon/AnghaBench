; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_utl.c_asn1_enc_restore.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_utl.c_asn1_enc_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn1_enc_restore(i32* %0, i8** %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32**, i32*** %8, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = call %struct.TYPE_3__* @asn1_get_const_enc_ptr(i32** %11, i32* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %10, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %4
  store i32 0, i32* %5, align 4
  br label %51

22:                                               ; preds = %16
  %23 = load i8**, i8*** %7, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i8**, i8*** %7, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @memcpy(i8* %27, i32 %30, i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %38, align 8
  br label %42

42:                                               ; preds = %25, %22
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %42
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %21
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_3__* @asn1_get_const_enc_ptr(i32**, i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
