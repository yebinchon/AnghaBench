; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_com.c_php_com_do_invoke_by_id.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_com.c_php_com_do_invoke_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32*, i32* }

@DISPATCH_PROPERTYPUT = common dso_local global i32 0, align 4
@DISPID_PROPERTYPUT = common dso_local global i32 0, align 4
@DISP_E_BADPARAMCOUNT = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_com_do_invoke_by_id(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* null, i32** %21, align 8
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %8
  %26 = load i32, i32* %14, align 4
  %27 = call i64 @safe_emalloc(i32 4, i32 %26, i32 0)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %21, align 8
  br label %29

29:                                               ; preds = %25, %8
  store i32 0, i32* %22, align 4
  br label %30

30:                                               ; preds = %50, %29
  %31 = load i32, i32* %22, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i32*, i32** %21, align 8
  %36 = load i32, i32* %22, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32*, i32** %15, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %22, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @php_com_variant_from_zval(i32* %38, i32* %45, i32 %48)
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %22, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %22, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load i32, i32* %14, align 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %21, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  store i32* %57, i32** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @DISPATCH_PROPERTYPUT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load i32, i32* @DISPID_PROPERTYPUT, align 4
  store i32 %65, i32* %18, align 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32* %18, i32** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %53
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i64 @php_com_invoke_helper(%struct.TYPE_6__* %69, i32 %70, i32 %71, %struct.TYPE_7__* %19, i32* %72, i32 %73, i32 %74)
  store i64 %75, i64* %20, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %68
  store i32 0, i32* %22, align 4
  br label %79

79:                                               ; preds = %89, %78
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32*, i32** %21, align 8
  %85 = load i32, i32* %22, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @VariantClear(i32* %87)
  br label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %22, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %22, align 4
  br label %79

92:                                               ; preds = %79
  %93 = load i32*, i32** %21, align 8
  %94 = call i32 @efree(i32* %93)
  br label %95

95:                                               ; preds = %92, %68
  %96 = load i64, i64* %20, align 8
  %97 = load i64, i64* @DISP_E_BADPARAMCOUNT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i64, i64* %20, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %9, align 4
  br label %112

102:                                              ; preds = %95
  %103 = load i64, i64* %20, align 8
  %104 = call i64 @SUCCEEDED(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @SUCCESS, align 4
  br label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @FAILURE, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %110, %99
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local i64 @safe_emalloc(i32, i32, i32) #1

declare dso_local i32 @php_com_variant_from_zval(i32*, i32*, i32) #1

declare dso_local i64 @php_com_invoke_helper(%struct.TYPE_6__*, i32, i32, %struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @efree(i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
