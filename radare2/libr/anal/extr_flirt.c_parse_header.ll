; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_flirt.c_parse_header.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_flirt.c_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_header(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @r_buf_read_at(i32* %6, i32 0, i32 %9, i32 4)
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %112

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @r_buf_read(i32* %15, i8* %17, i32 1)
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %112

22:                                               ; preds = %14
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = call i32 @r_buf_read(i32* %23, i8* %25, i32 1)
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %112

30:                                               ; preds = %22
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 10
  %34 = bitcast i32* %33 to i8*
  %35 = call i32 @r_buf_read(i32* %31, i8* %34, i32 4)
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 4
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %112

39:                                               ; preds = %30
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 9
  %43 = bitcast i32* %42 to i8*
  %44 = call i32 @r_buf_read(i32* %40, i8* %43, i32 4)
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %112

48:                                               ; preds = %39
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 8
  %52 = bitcast i32* %51 to i8*
  %53 = call i32 @r_buf_read(i32* %49, i8* %52, i32 4)
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %112

57:                                               ; preds = %48
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 7
  %61 = bitcast i32* %60 to i8*
  %62 = call i32 @r_buf_read(i32* %58, i8* %61, i32 4)
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %63, 4
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %112

66:                                               ; preds = %57
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 6
  %70 = bitcast i32* %69 to i8*
  %71 = call i32 @r_buf_read(i32* %67, i8* %70, i32 4)
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %72, 4
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %112

75:                                               ; preds = %66
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  %79 = bitcast i32* %78 to i8*
  %80 = call i32 @r_buf_read(i32* %76, i8* %79, i32 4)
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %81, 4
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %112

84:                                               ; preds = %75
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @r_buf_read(i32* %85, i8* %88, i32 8)
  %90 = sext i32 %89 to i64
  %91 = icmp ne i64 %90, 8
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %112

93:                                               ; preds = %84
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  %97 = bitcast i32* %96 to i8*
  %98 = call i32 @r_buf_read(i32* %94, i8* %97, i32 4)
  %99 = sext i32 %98 to i64
  %100 = icmp ne i64 %99, 4
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %112

102:                                              ; preds = %93
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = bitcast i32* %105 to i8*
  %107 = call i32 @r_buf_read(i32* %103, i8* %106, i32 4)
  %108 = sext i32 %107 to i64
  %109 = icmp ne i64 %108, 4
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %112

111:                                              ; preds = %102
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %110, %101, %92, %83, %74, %65, %56, %47, %38, %29, %21, %13
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @r_buf_read_at(i32*, i32, i32, i32) #1

declare dso_local i32 @r_buf_read(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
