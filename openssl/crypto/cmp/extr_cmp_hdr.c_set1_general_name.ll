; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_hdr.c_set1_general_name.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_hdr.c_set1_general_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }

@GEN_DIRNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__**, i32*)* @set1_general_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set1_general_name(%struct.TYPE_7__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %8 = icmp ne %struct.TYPE_7__** %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @ossl_assert(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

13:                                               ; preds = %2
  %14 = call %struct.TYPE_7__* (...) @GENERAL_NAME_new()
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %46

17:                                               ; preds = %13
  %18 = load i32, i32* @GEN_DIRNAME, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = call i32* (...) @X509_NAME_new()
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32* %24, i32** %27, align 8
  %28 = icmp eq i32* %24, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %46

30:                                               ; preds = %23
  br label %40

31:                                               ; preds = %17
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @X509_NAME_set(i32** %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %46

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @GENERAL_NAME_free(%struct.TYPE_7__* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %45, align 8
  store i32 1, i32* %3, align 4
  br label %49

46:                                               ; preds = %38, %29, %16
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = call i32 @GENERAL_NAME_free(%struct.TYPE_7__* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %40, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local %struct.TYPE_7__* @GENERAL_NAME_new(...) #1

declare dso_local i32* @X509_NAME_new(...) #1

declare dso_local i32 @X509_NAME_set(i32**, i32*) #1

declare dso_local i32 @GENERAL_NAME_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
