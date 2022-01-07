; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_jsonapi.c_api_json_set.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_jsonapi.c_api_json_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @api_json_set(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i8*], align 16
  %9 = alloca [3 x i8*], align 16
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %12, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call { i8*, i64 } @json_get(i8* %14, i8* %15)
  %17 = bitcast %struct.TYPE_3__* %13 to { i8*, i64 }*
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %17, i32 0, i32 0
  %19 = extractvalue { i8*, i64 } %16, 0
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %17, i32 0, i32 1
  %21 = extractvalue { i8*, i64 } %16, 1
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %135

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  store i8* %27, i8** %28, align 16
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  store i8* %34, i8** %35, align 16
  %36 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %37 = load i8*, i8** %36, align 16
  %38 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %39 = load i8*, i8** %38, align 16
  %40 = ptrtoint i8* %37 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 1
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %54 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  store i8* %67, i8** %68, align 16
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 2
  store i8* %73, i8** %74, align 16
  %75 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 2
  %76 = load i8*, i8** %75, align 16
  %77 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  %78 = load i8*, i8** %77, align 16
  %79 = ptrtoint i8* %76 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %85, %87
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %88, %90
  %92 = add nsw i32 %91, 1
  %93 = call i8* @malloc(i32 %92)
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %26
  store i8* null, i8** %4, align 8
  br label %135

97:                                               ; preds = %26
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %10, align 4
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %102 = load i8*, i8** %101, align 16
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @memcpy(i8* %100, i8* %102, i32 %103)
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @memcpy(i8* %108, i8* %110, i32 %112)
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i8*, i8** %12, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  %123 = load i8*, i8** %122, align 16
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @memcpy(i8* %121, i8* %123, i32 %125)
  %127 = load i8*, i8** %12, align 8
  %128 = load i32, i32* %10, align 4
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %128, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %127, i64 %132
  store i8 0, i8* %133, align 1
  %134 = load i8*, i8** %12, align 8
  store i8* %134, i8** %4, align 8
  br label %135

135:                                              ; preds = %97, %96, %25
  %136 = load i8*, i8** %4, align 8
  ret i8* %136
}

declare dso_local { i8*, i64 } @json_get(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
