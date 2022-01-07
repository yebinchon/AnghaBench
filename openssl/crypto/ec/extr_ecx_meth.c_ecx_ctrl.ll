; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecx_meth.c_ecx_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecx_meth.c_ecx_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@KEY_OP_PUBLIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i64, i8*)* @ecx_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecx_ctrl(%struct.TYPE_11__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %50 [
    i32 128, label %12
    i32 129, label %23
  ]

12:                                               ; preds = %4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @KEY_OP_PUBLIC, align 4
  %22 = call i32 @ecx_key_op(%struct.TYPE_11__* %13, i32 %18, i32* null, i8* %19, i64 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %51

23:                                               ; preds = %4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load i8*, i8** %9, align 8
  %31 = bitcast i8* %30 to i8**
  store i8** %31, i8*** %10, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = call i32 @KEYLEN(%struct.TYPE_11__* %38)
  %40 = call i8* @OPENSSL_memdup(i32 %37, i32 %39)
  %41 = load i8**, i8*** %10, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i8**, i8*** %10, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = call i32 @KEYLEN(%struct.TYPE_11__* %46)
  store i32 %47, i32* %5, align 4
  br label %51

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48, %23
  store i32 0, i32* %5, align 4
  br label %51

50:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %49, %45, %12
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @ecx_key_op(%struct.TYPE_11__*, i32, i32*, i8*, i64, i32) #1

declare dso_local i8* @OPENSSL_memdup(i32, i32) #1

declare dso_local i32 @KEYLEN(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
