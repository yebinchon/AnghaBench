; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_hash.c_ngx_hash_find_wc_tail.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_hash.c_ngx_hash_find_wc_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_hash_find_wc_tail(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %30, %3
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 46
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %33

23:                                               ; preds = %15
  %24 = load i64, i64* %10, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @ngx_hash(i64 %24, i8 signext %28)
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %23
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %9, align 8
  br label %11

33:                                               ; preds = %22, %11
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* null, i8** %4, align 8
  br label %81

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %10, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i8* @ngx_hash_find(i32* %40, i64 %41, i8* %42, i64 %43)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %77

47:                                               ; preds = %38
  %48 = load i8*, i8** %8, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = and i64 %49, 2
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = and i64 %56, -4
  %58 = inttoptr i64 %57 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %5, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %63, %64
  %66 = call i8* @ngx_hash_find_wc_tail(%struct.TYPE_4__* %59, i8* %62, i64 %65)
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %52
  %70 = load i8*, i8** %8, align 8
  store i8* %70, i8** %4, align 8
  br label %81

71:                                               ; preds = %52
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %4, align 8
  br label %81

75:                                               ; preds = %47
  %76 = load i8*, i8** %8, align 8
  store i8* %76, i8** %4, align 8
  br label %81

77:                                               ; preds = %38
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %4, align 8
  br label %81

81:                                               ; preds = %77, %75, %71, %69, %37
  %82 = load i8*, i8** %4, align 8
  ret i8* %82
}

declare dso_local i64 @ngx_hash(i64, i8 signext) #1

declare dso_local i8* @ngx_hash_find(i32*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
