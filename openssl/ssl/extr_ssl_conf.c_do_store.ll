; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_conf.c_do_store.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_conf.c_do_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i8*, i8*, i32)* @do_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_store(%struct.TYPE_8__* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32**, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %12, align 8
  br label %37

24:                                               ; preds = %5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %12, align 8
  br label %36

35:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %90

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %18
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  br label %46

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i32** [ %42, %40 ], [ %45, %43 ]
  store i32** %47, i32*** %13, align 8
  %48 = load i32**, i32*** %13, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = call i32* (...) @X509_STORE_new()
  %53 = load i32**, i32*** %13, align 8
  store i32* %52, i32** %53, align 8
  %54 = load i32**, i32*** %13, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %90

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32**, i32*** %13, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @X509_STORE_load_file(i32* %64, i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %90

69:                                               ; preds = %62, %59
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32**, i32*** %13, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @X509_STORE_load_path(i32* %74, i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %90

79:                                               ; preds = %72, %69
  %80 = load i8*, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32**, i32*** %13, align 8
  %84 = load i32*, i32** %83, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @X509_STORE_load_store(i32* %84, i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %90

89:                                               ; preds = %82, %79
  store i32 1, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %88, %78, %68, %57, %35
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32* @X509_STORE_new(...) #1

declare dso_local i32 @X509_STORE_load_file(i32*, i8*) #1

declare dso_local i32 @X509_STORE_load_path(i32*, i8*) #1

declare dso_local i32 @X509_STORE_load_store(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
