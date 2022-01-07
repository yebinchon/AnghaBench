; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_validate_header_name.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_validate_header_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@NGX_ERROR = common dso_local global i32 0, align 4
@CR = common dso_local global i8 0, align 1
@LF = common dso_local global i8 0, align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @ngx_http_grpc_validate_header_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_grpc_validate_header_name(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %58, %2
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %6, align 1
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 58
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load i64, i64* %7, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @NGX_ERROR, align 4
  store i32 %28, i32* %3, align 4
  br label %63

29:                                               ; preds = %24, %14
  %30 = load i8, i8* %6, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 65
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i8, i8* %6, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 90
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @NGX_ERROR, align 4
  store i32 %38, i32* %3, align 4
  br label %63

39:                                               ; preds = %33, %29
  %40 = load i8, i8* %6, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load i8, i8* %6, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @CR, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i8, i8* %6, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* @LF, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %43, %39
  %56 = load i32, i32* @NGX_ERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %8

61:                                               ; preds = %8
  %62 = load i32, i32* @NGX_OK, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %55, %37, %27
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
