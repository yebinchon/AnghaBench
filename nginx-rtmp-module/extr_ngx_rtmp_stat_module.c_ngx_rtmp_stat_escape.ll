; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_stat_module.c_ngx_rtmp_stat_escape.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_stat_module.c_ngx_rtmp_stat_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*, i64)* @ngx_rtmp_stat_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_stat_escape(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %28, %3
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 127
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  br label %33

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %11, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %11, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %8, align 8
  br label %14

33:                                               ; preds = %26, %14
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %4, align 8
  br label %81

39:                                               ; preds = %33
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i8* @ngx_palloc(i32 %42, i64 %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i8* null, i8** %4, align 8
  br label %81

48:                                               ; preds = %39
  %49 = load i8*, i8** %6, align 8
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %8, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %9, align 8
  store i64 0, i64* %11, align 8
  br label %53

53:                                               ; preds = %72, %48
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 32
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 127
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %57
  br label %69

66:                                               ; preds = %61
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  br label %69

69:                                               ; preds = %66, %65
  %70 = phi i32 [ 32, %65 ], [ %68, %66 ]
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %11, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %9, align 8
  br label %53

79:                                               ; preds = %53
  %80 = load i8*, i8** %10, align 8
  store i8* %80, i8** %4, align 8
  br label %81

81:                                               ; preds = %79, %47, %37
  %82 = load i8*, i8** %4, align 8
  ret i8* %82
}

declare dso_local i8* @ngx_palloc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
