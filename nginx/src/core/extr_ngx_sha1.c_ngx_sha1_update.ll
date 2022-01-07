; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_sha1.c_ngx_sha1_update.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_sha1.c_ngx_sha1_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_sha1_update(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 63
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = sub i64 64, %24
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @ngx_memcpy(i8* %34, i8* %35, i64 %36)
  br label %78

38:                                               ; preds = %23
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @ngx_memcpy(i8* %43, i8* %44, i64 %45)
  %47 = load i8*, i8** %5, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = bitcast i32* %50 to i8*
  store i8* %51, i8** %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %6, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %6, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @ngx_sha1_body(%struct.TYPE_4__* %55, i8* %58, i64 64)
  br label %60

60:                                               ; preds = %38, %3
  %61 = load i64, i64* %6, align 8
  %62 = icmp uge i64 %61, 64
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = and i64 %66, -64
  %68 = call i8* @ngx_sha1_body(%struct.TYPE_4__* %64, i8* %65, i64 %67)
  store i8* %68, i8** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = and i64 %69, 63
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %63, %60
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @ngx_memcpy(i8* %74, i8* %75, i64 %76)
  br label %78

78:                                               ; preds = %71, %29
  ret void
}

declare dso_local i32 @ngx_memcpy(i8*, i8*, i64) #1

declare dso_local i8* @ngx_sha1_body(%struct.TYPE_4__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
