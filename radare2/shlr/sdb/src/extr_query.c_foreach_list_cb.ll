; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_query.c_foreach_list_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_query.c_foreach_list_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @foreach_list_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_list_cb(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %8, align 8
  store i8* null, i8** %14, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %133

20:                                               ; preds = %3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @sdb_decode(i8* %31, i32* null)
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i8*, i8** %14, align 8
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @strlen(i8* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %94

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @strlen(i8* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %48, %49
  %51 = add nsw i32 %50, 3
  %52 = call i8* @malloc(i32 %51)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %43
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @free(i8* %56)
  store i32 0, i32* %4, align 4
  br label %133

58:                                               ; preds = %43
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @memcpy(i8* %59, i8* %60, i32 %61)
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 47, i8* %66, align 1
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @memcpy(i8* %71, i8* %72, i32 %73)
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %76, %77
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %75, i64 %80
  store i8 61, i8* %81, align 1
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @memcpy(i8* %89, i8* %90, i32 %92)
  br label %123

94:                                               ; preds = %38
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %95, %96
  %98 = add nsw i32 %97, 2
  %99 = call i8* @malloc(i32 %98)
  store i8* %99, i8** %9, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %94
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @free(i8* %103)
  store i32 0, i32* %4, align 4
  br label %133

105:                                              ; preds = %94
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @memcpy(i8* %106, i8* %107, i32 %108)
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 61, i8* %113, align 1
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  %122 = call i32 @memcpy(i8* %118, i8* %119, i32 %121)
  br label %123

123:                                              ; preds = %105, %58
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @strbuf_append(i32 %126, i8* %127, i32 1)
  %129 = load i8*, i8** %14, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @free(i8* %131)
  store i32 1, i32* %4, align 4
  br label %133

133:                                              ; preds = %123, %102, %55, %19
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @sdb_decode(i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strbuf_append(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
