; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_tokenize_command.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_tokenize_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_3__*, i64)* @tokenize_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tokenize_command(i8* %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %9, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = icmp ugt i64 %20, 1
  br label %22

22:                                               ; preds = %19, %16, %3
  %23 = phi i1 [ false, %16 ], [ false, %3 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** %8, align 8
  store i8* %26, i8** %7, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %75, %22
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* %10, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %78

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i8* %42, i8** %46, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  %59 = load i8*, i8** %8, align 8
  store i8 0, i8* %59, align 1
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub i64 %61, 1
  %63 = icmp eq i64 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %41
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %7, align 8
  br label %78

68:                                               ; preds = %41
  br label %69

69:                                               ; preds = %68, %37
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8* %71, i8** %7, align 8
  br label %72

72:                                               ; preds = %69, %32
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %27

78:                                               ; preds = %64, %27
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ne i8* %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i8* %83, i8** %87, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 8
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %9, align 8
  br label %100

100:                                              ; preds = %82, %78
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %108

106:                                              ; preds = %100
  %107 = load i8*, i8** %8, align 8
  br label %108

108:                                              ; preds = %106, %105
  %109 = phi i8* [ null, %105 ], [ %107, %106 ]
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i8* %109, i8** %113, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  store i32 0, i32* %117, align 8
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %9, align 8
  %120 = load i64, i64* %9, align 8
  ret i64 %120
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
