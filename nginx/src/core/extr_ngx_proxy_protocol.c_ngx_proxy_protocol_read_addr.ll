; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_proxy_protocol.c_ngx_proxy_protocol_read_addr.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_proxy_protocol.c_ngx_proxy_protocol_read_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i8*, i8*, %struct.TYPE_5__*)* @ngx_proxy_protocol_read_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_proxy_protocol_read_addr(%struct.TYPE_6__* %0, i8* %1, i8* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %12, align 8
  br label %14

14:                                               ; preds = %60, %4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* null, i8** %5, align 8
  br label %91

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %7, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %11, align 1
  %23 = load i8, i8* %11, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %61

27:                                               ; preds = %19
  %28 = load i8, i8* %11, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 58
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = load i8, i8* %11, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 46
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load i8, i8* %11, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 %37, 97
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %11, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sgt i32 %41, 102
  br i1 %42, label %43, label %60

43:                                               ; preds = %39, %35
  %44 = load i8, i8* %11, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp slt i32 %45, 65
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* %11, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sgt i32 %49, 70
  br i1 %50, label %51, label %60

51:                                               ; preds = %47, %43
  %52 = load i8, i8* %11, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp slt i32 %53, 48
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8, i8* %11, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sgt i32 %57, 57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51
  store i8* null, i8** %5, align 8
  br label %91

60:                                               ; preds = %55, %47, %39, %31, %27
  br label %14

61:                                               ; preds = %26
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sub nsw i64 %66, 1
  store i64 %67, i64* %10, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %10, align 8
  %72 = call i32* @ngx_pnalloc(i32 %70, i64 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32* %72, i32** %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  store i8* null, i8** %5, align 8
  br label %91

80:                                               ; preds = %61
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @ngx_memcpy(i32* %83, i8* %84, i64 %85)
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load i8*, i8** %7, align 8
  store i8* %90, i8** %5, align 8
  br label %91

91:                                               ; preds = %80, %79, %59, %18
  %92 = load i8*, i8** %5, align 8
  ret i8* %92
}

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
