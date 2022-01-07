; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_ssl_version_supported.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_ssl_version_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32* (...)* }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@tls_version_table = common dso_local global %struct.TYPE_11__* null, align 8
@dtls_version_table = common dso_local global %struct.TYPE_11__* null, align 8
@TLS1_3_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_version_supported(%struct.TYPE_12__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %15 [
    i32 128, label %24
    i32 129, label %26
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @version_cmp(%struct.TYPE_12__* %16, i32 %17, i64 %20)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  br label %94

24:                                               ; preds = %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tls_version_table, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %9, align 8
  br label %28

26:                                               ; preds = %3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dtls_version_table, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %9, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %8, align 8
  br label %30

30:                                               ; preds = %90, %28
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @version_cmp(%struct.TYPE_12__* %36, i32 %37, i64 %40)
  %42 = icmp sle i64 %41, 0
  br label %43

43:                                               ; preds = %35, %30
  %44 = phi i1 [ false, %30 ], [ %42, %35 ]
  br i1 %44, label %45, label %93

45:                                               ; preds = %43
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32* (...)*, i32* (...)** %47, align 8
  %49 = icmp ne i32* (...)* %48, null
  br i1 %49, label %50, label %89

50:                                               ; preds = %45
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @version_cmp(%struct.TYPE_12__* %51, i32 %52, i64 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %50
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32* (...)*, i32* (...)** %61, align 8
  %63 = call i32* (...) %62()
  %64 = call i64 @ssl_method_error(%struct.TYPE_12__* %59, i32* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %58
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @TLS1_3_VERSION, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = call i64 @is_tls13_capable(%struct.TYPE_12__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %75, %71, %66
  %80 = load i32**, i32*** %7, align 8
  %81 = icmp ne i32** %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32* (...)*, i32* (...)** %84, align 8
  %86 = call i32* (...) %85()
  %87 = load i32**, i32*** %7, align 8
  store i32* %86, i32** %87, align 8
  br label %88

88:                                               ; preds = %82, %79
  store i32 1, i32* %4, align 4
  br label %94

89:                                               ; preds = %75, %58, %50, %45
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 1
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %8, align 8
  br label %30

93:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %88, %15
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @version_cmp(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i64 @ssl_method_error(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @is_tls13_capable(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
