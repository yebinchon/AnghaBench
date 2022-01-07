; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_multibulk_resp_recursive.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_multibulk_resp_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, %struct.TYPE_3__**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.TYPE_3__**, i32, i32*)* @cluster_multibulk_resp_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_multibulk_resp_recursive(i32* %0, i64 %1, %struct.TYPE_3__** %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [1024 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_3__** %2, %struct.TYPE_3__*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %132, %5
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %135

21:                                               ; preds = %16
  %22 = call i8* @ecalloc(i32 1, i32 48)
  %23 = bitcast i8* %22 to %struct.TYPE_3__*
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %26
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %27, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %13, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i64 @redis_read_reply_type(i32* %28, i32* %30, i64* %14)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32*, i32** %10, align 8
  store i32 1, i32* %34, align 4
  br label %135

35:                                               ; preds = %21
  %36 = load i64, i64* %14, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %129 [
    i32 131, label %42
    i32 129, label %42
    i32 130, label %64
    i32 132, label %68
    i32 128, label %89
  ]

42:                                               ; preds = %35, %35
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %45 = call i32 @redis_sock_gets(i32* %43, i8* %44, i32 1024, i64* %12)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32*, i32** %10, align 8
  store i32 1, i32* %48, align 4
  br label %135

49:                                               ; preds = %42
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @estrndup(i8* %56, i64 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %55, %49
  br label %131

64:                                               ; preds = %35
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %131

68:                                               ; preds = %35
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @redis_sock_read_bulk_reply(i32* %74, i64 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %73
  %86 = load i32*, i32** %10, align 8
  store i32 1, i32* %86, align 4
  br label %135

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %68
  br label %131

89:                                               ; preds = %35
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %92, 0
  br i1 %93, label %94, label %128

94:                                               ; preds = %89
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %94
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i8* @ecalloc(i32 %108, i32 8)
  %110 = bitcast i8* %109 to %struct.TYPE_3__**
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  store %struct.TYPE_3__** %110, %struct.TYPE_3__*** %112, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32*, i32** %10, align 8
  call void @cluster_multibulk_resp_recursive(i32* %113, i64 %116, %struct.TYPE_3__** %119, i32 %120, i32* %121)
  br label %122

122:                                              ; preds = %104, %94
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %135

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %89
  br label %131

129:                                              ; preds = %35
  %130 = load i32*, i32** %10, align 8
  store i32 1, i32* %130, align 4
  br label %135

131:                                              ; preds = %128, %88, %64, %63
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %16

135:                                              ; preds = %33, %47, %85, %126, %129, %16
  ret void
}

declare dso_local i8* @ecalloc(i32, i32) #1

declare dso_local i64 @redis_read_reply_type(i32*, i32*, i64*) #1

declare dso_local i32 @redis_sock_gets(i32*, i8*, i32, i64*) #1

declare dso_local i32 @estrndup(i8*, i64) #1

declare dso_local i32 @redis_sock_read_bulk_reply(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
