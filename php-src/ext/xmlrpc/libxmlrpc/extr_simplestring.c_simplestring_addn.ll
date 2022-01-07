; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_simplestring.c_simplestring_addn.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_simplestring.c_simplestring_addn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i64 }

@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @simplestring_addn(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %138

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %138

17:                                               ; preds = %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = call i32 @simplestring_init_str(%struct.TYPE_4__* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i64, i64* @SIZE_MAX, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %26, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %25
  %34 = load i64, i64* @SIZE_MAX, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %34, %35
  %37 = sub i64 %36, 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33, %25
  br label %138

43:                                               ; preds = %33
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %46, %47
  %49 = add i64 %48, 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %105

54:                                               ; preds = %43
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %57, %58
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = mul i64 %63, 2
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %54
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = urem i64 %69, %70
  %72 = sub i64 %68, %71
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %72, %73
  store i64 %74, i64* %7, align 8
  br label %75

75:                                               ; preds = %67, %54
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = add i64 %79, %80
  %82 = add i64 %81, 1
  %83 = icmp ult i64 %76, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %138

85:                                               ; preds = %75
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i64 @erealloc(i8* %88, i64 %89)
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = load i64, i64* %7, align 8
  br label %101

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i64 [ %99, %98 ], [ 0, %100 ]
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %43
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %137

110:                                              ; preds = %105
  %111 = load i64, i64* %6, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8*, i8** %5, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @memcpy(i8* %120, i8* %121, i64 %122)
  br label %124

124:                                              ; preds = %113, %110
  %125 = load i64, i64* %6, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  store i8 0, i8* %136, align 1
  br label %137

137:                                              ; preds = %124, %105
  br label %138

138:                                              ; preds = %42, %84, %137, %14, %3
  ret void
}

declare dso_local i32 @simplestring_init_str(%struct.TYPE_4__*) #1

declare dso_local i64 @erealloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
