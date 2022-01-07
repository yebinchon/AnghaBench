; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_sdb.c_like_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_sdb.c_like_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i32, i32, i32, i32 (i32, i8*, i8*)*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @like_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @like_cb(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %130

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @sdb_match(i8* %26, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %130

33:                                               ; preds = %25, %20, %17
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @sdb_match(i8* %42, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %130

49:                                               ; preds = %41, %36, %33
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = icmp ne i8** %52, null
  br i1 %53, label %54, label %113

54:                                               ; preds = %49
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %9, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 16
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @realloc(i8** %66, i32 %67)
  %69 = inttoptr i64 %68 to i8**
  store i8** %69, i8*** %11, align 8
  %70 = load i8**, i8*** %11, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %130

73:                                               ; preds = %54
  %74 = load i8**, i8*** %11, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i8** %74, i8*** %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %80, i8** %86, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i8**, i8*** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  store i8* %87, i8** %94, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %97, i64 %100
  store i8* null, i8** %101, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 3
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  store i8* null, i8** %108, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  br label %129

113:                                              ; preds = %49
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %115, align 8
  %117 = icmp ne i32 (i32, i8*, i8*)* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 4
  %121 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %120, align 8
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 %121(i32 %124, i8* %125, i8* %126)
  br label %128

128:                                              ; preds = %118, %113
  br label %129

129:                                              ; preds = %128, %73
  store i32 1, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %72, %48, %32, %16
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @sdb_match(i8*, i64) #1

declare dso_local i64 @realloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
