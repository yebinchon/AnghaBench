; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property_string.c_ossl_property_string.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property_string.c_ossl_property_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @ossl_property_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ossl_property_string(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_7__* @lh_PROPERTY_STRING_retrieve(i32* %13, %struct.TYPE_7__* %8)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_7__* @new_property_string(i8* %21, i32* %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %10, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = call i32 @lh_PROPERTY_STRING_insert(i32* %26, %struct.TYPE_7__* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @lh_PROPERTY_STRING_error(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = call i32 @property_free(%struct.TYPE_7__* %33)
  store i32 0, i32* %4, align 4
  br label %48

35:                                               ; preds = %25
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %9, align 8
  br label %37

37:                                               ; preds = %35, %20
  br label %38

38:                                               ; preds = %37, %17, %3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 0, %45 ]
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %32
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_7__* @lh_PROPERTY_STRING_retrieve(i32*, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @new_property_string(i8*, i32*) #1

declare dso_local i32 @lh_PROPERTY_STRING_insert(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @lh_PROPERTY_STRING_error(i32*) #1

declare dso_local i32 @property_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
